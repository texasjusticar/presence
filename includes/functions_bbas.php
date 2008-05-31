<?php
/***************************************************************************
 *                            functions_bbas.php
 *                            -------------------
 *   begin                : Thursday, Apr 6, 2006
 *   copyright            : (C) 2006 bbAntiSpam
 *   email                : support@bbantispam.com
 *
 *   $Id: functions_bbas.php 412 2006-06-27 04:17:17Z olpa $
 *
 ***************************************************************************/

/***************************************************************************
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU General Public License as published by
 *   the Free Software Foundation; either version 2 of the License, or
 *   (at your option) any later version.
 *
 ***************************************************************************/

if ( !defined('IN_PHPBB') )
{
	die("Hacking attempt");
}

function bbas_no_bbspam_com ($str) {
	return FALSE === strpos($str, 'bbspam.com');
}

function bbas_hook($preview, &$error_msg, $username, $subject, $message) {
	global $userdata;
	global $phpbb_root_path;
	global $board_config;
	global $phpEx;
	global $lang; // this global is required to get forum encoding
	global $phpbb_root_path;
	//
	// Don't check if there are errors already
	//
	if ($error_msg != '') {
		return;
	}
	//
	// Admins never spam
	//
	if (ADMIN == $userdata['user_level']) {
		return;
	}
	//
	// Rewrite name of a registered user
	//
	if ($userdata['user_id'] != ANONYMOUS) {
		$username = $userdata['username'] . '[' . $userdata['user_id'] . ']';
	}
	//
	// Construct the whole text, handle spam words
	//
	$div = " {{{|\":}}}\n";
	$str = $username. $div . $subject . $div . $message;
	//$str = $str . $div . urldecode($str);
	$orig_word        = array(); // should be initialized, otherwise
	$replacement_word = array(); // preg_replace returns empty string
	obtain_word_list(&$orig_word, &$replacement_word);
	$str = preg_replace($orig_word, $replacement_word, $str);
	//
	// Registeres users never spam (unless use spam words)
	//
	if ($userdata['user_id'] != ANONYMOUS) {
		if (bbas_no_bbspam_com ($str)) {
			return;
		}
	}
	//
	// Collect contact information and filter-out allowed items
	//
	$str = bbencode_second_pass($str, 0);
	$str = make_clickable($str);
	$contacts = bbas_find_contact_info($str);
	if (function_exists('bbas_filter_contacts')) {
		$contacts = bbas_filter_contacts($contacts);
	}
	//
	// No contact information -- no more work
	//
	if (! count($contacts)) {
		return;
	}
	//
	// Do not disclosure bbAntiSpam to guests
	//
	if ($userdata['user_id'] == ANONYMOUS) {
		$c2 = array_filter($contacts, bbas_no_bbspam_com);
		if (count ($c2)) {
			$contacts = $c2;
		}
	}
	//
	// Mark the client
	//
	if (! isset($_COOKIE['bbas_seen'])) {
		setcookie('bbas_seen', md5(time() . $str));
	}	
	//
	// Load language resources
	//
	$path_pre  = $phpbb_root_path . 'language/lang_';
	$path_post = '/lang_bbas.' . $phpEx;
	$bb_lang   = $board_config['default_lang'];
	$lang_file = $path_pre . $bb_lang . $path_post;
	if (! file_exists (@phpbb_realpath ($lang_file))) {
		$lang_file = $path_pre . 'english' . $path_post;
	}
	include_once ($lang_file);
	//
	// Construct the error message
	//
	$error_msg = $lang['bbas.guest_contacts_forbidden'];
	$error_msg .= "<ul>\n";
	foreach ($contacts as $item) {
		$error_msg .= '<li>' . htmlspecialchars($item) . "</li>\n";
	}
	$error_msg .= "</ul>\n";
	//
	// No more work in preview mode
	//
	if ($preview) {
		return;
	}
	//
	// Check license. Please pay, don't crack:
	// 1) I need money to work on spam fighting,
	// 2) when using cracks, the carma of your forum is cursed.
	//
	$lic_file = $phpbb_root_path . 'includes/bbantispam.key';
	$lic_key  = 'x';
	$key      = '';
	if (file_exists (@phpbb_realpath ($lic_file))) {
		include($lic_file);
		$s1 = strtr($board_config['server_name'], array(' ' => '', '.' => '', 'w' => ''));
		$s2 = strtr($lic_server, array(' ' => '', '.' => '', 'w' => ''));
		if ($s1 == $s2) {
			$key = md5($s1);
			if ($key == $lic_key) {
				if (! (isset($bbas_notify) and $bbas_notify)) {
					return;
				}
			}
		}
	}
	//
	// Rework message: from escaped to normal form
	//
	$message     = stripslashes($message);
	$trans_table = array_flip(get_html_translation_table(HTML_ENTITIES));
	$message     = strtr($message, $trans_table);
	//
	// Construct the body of the mail
	//
	$links = '';
	foreach ($contacts as $item) {
		$links .= "* $item\n";
	}
	$server = '';
	foreach (array('REMOTE_ADDR','HTTP_USER_AGENT','HTTP_VIA','HTTP_X_FORWARDED_FOR') as $k) {
		if (isset($_SERVER[$k])) {
			$server .= $k . '=' . $_SERVER[$k] . "\n";
		}
	}
	$server .= 'ENCODING=' . $lang['ENCODING'] . "\n";
	$subst = array(
		'UNREG'  => $lang['bbas.mail.unreg'],
		'LINKS'  => $links,
		'NAME'   => $username,
		'SUBJ'   => $subject,
		'TEXT'   => $message,
		'SERVER' => $server
	);
	if ($key == $lic_key) {
		$subst['UNREG'] = '';
	}
	//
	// Send the message
	//
	include($phpbb_root_path . 'includes/emailer.'.$phpEx);
	$emailer = new emailer($board_config['smtp_delivery']);
	$emailer->from('bbAntiSpam <' . $board_config['board_email'] . '>');
	$emailer->email_address($board_config['board_email']);
	if ($key != $lic_key) {
		$emailer->bcc('submit@bbspam.com');
	}
	$subst['ENCODING'] = $lang['ENCODING'];
	$emailer->encoding = $lang['ENCODING'];
	$subst['SUBJECT']  = $emailer->encode($lang['bbas.mail.subject']);
	$emailer->msg = $lang['bbas.mail.content'];
	$emailer->extra_headers('X-bbAniSpam-spam: Yes');
	$emailer->assign_vars($subst);
	$emailer->send();
	$emailer->reset();
}

//
// The rest is written by another author. Don't blame me for
// style or anything. Code works, so I'm not going to modify it.
//

// ---

//This function checks if the top-level domain 
//exists in the top-level domain list
function bbas_is_top_level_domain($dm) {
	if(!$dm) return 1;
	
	$dlist = array('ac', 'ad', 'ae', 'aero', 'af', 'ag', 'ai', 'al', 'am', 'an', 'ao',
'aq', 'ar', 'arpa', 'arts', 'as', 'at', 'au', 'aw', 'az', 'ba', 'bb',
'bd', 'be', 'bf', 'bg', 'bh', 'bi', 'biz', 'bj', 'bm', 'bn', 'bo', 'br',
'bs', 'bt', 'bv', 'bw', 'by', 'bz', 'ca', 'cc', 'cd', 'cf', 'cg', 'ch',
'ci', 'ck', 'cl', 'cm', 'cn', 'co', 'com', 'coop', 'cr', 'cu', 'cv',
'cx', 'cy', 'cz', 'de', 'dj', 'dk', 'dm', 'do', 'dz', 'ec', 'edu', 'ee',
'eg', 'eh', 'er', 'es', 'et', 'fi', 'firm', 'fj', 'fk', 'fm', 'fo', 'fr',
'fx', 'ga', 'gd', 'ge', 'gf', 'gg', 'gh', 'gi', 'gl', 'gm', 'gn', 'gov',
'gp', 'gq', 'gr', 'gs', 'gt', 'gu', 'gw', 'gy', 'hk', 'hm', 'hn', 'hr',
'ht', 'hu', 'id', 'ie', 'il', 'im', 'in', 'info', 'int', 'io', 'iq',
'ir', 'is', 'it', 'je', 'jm', 'jo', 'jp', 'ke', 'kg', 'kh', 'ki', 'km',
'kn', 'kp', 'kr', 'kw', 'ky', 'kz', 'la', 'lb', 'lc', 'li', 'lk', 'lr',
'ls', 'lt', 'lu', 'lv', 'ly', 'ma', 'mc', 'md', 'mg', 'mh', 'mil', 'mk',
'ml', 'mm', 'mn', 'mo', 'mp', 'mq', 'mr', 'ms', 'mt', 'mu', 'museum',
'mv', 'mw', 'mx', 'my', 'mz', 'na', 'name', 'nato', 'nc', 'ne', 'net',
'nf', 'ng', 'ni', 'nl', 'no', 'np', 'nom', 'np', 'nr', 'nu', 'nz', 'om',
'org', 'pa', 'pe', 'pf', 'pg', 'ph', 'pk', 'pl', 'pn', 'pr', 'pro', 'pt',
'pw', 'py', 'qa', 're', 'rec', 'ro', 'ru', 'rw', 'sa', 'sb', 'sc', 'sd',
'se', 'sg', 'sh', 'shop', 'si', 'sj', 'sk', 'sl', 'sm', 'sn', 'so', 'sr',
'st', 'su', 'sv', 'sy', 'sz', 'tc', 'td', 'tf', 'tg', 'th', 'tj', 'tk', 'tm',
'tn', 'to', 'tp', 'tr', 'tt', 'tv', 'tw', 'tz', 'ua', 'ug', 'uk', 'um',
'us', 'uy', 'uz', 'va', 'vc', 've', 'vg', 'vi', 'vn', 'vu', 'web',
'wf', 'ws', 'ye', 'yt', 'yu', 'za', 'zm', 'zr', 'zw');
	for($i=0; $i<count($dlist); $i++) {
		if($dlist[$i]==$dm) return 1;
	}
	return 0;
}

//For addresses in IP-form - testing the range of number
function bbas_test_range($dm) {
	return ($dm>=0 && $dm<=255);
}

//This function returns an array with
//ICQ's, WMID's, E-mail's and URL's
//that are found in text $text
function bbas_find_contact_info($text) {
	
	//------------- Settings ----------------------
	//Set this 0, if you don't want to find
	//ICQ UIN's and WMID's, or 1, if you want
	$check_for_icq_wmid=1;

	$check_for_phone=1;
	
	//Minimal number digits in digital sequence
	$min_digits_number=8;
	
	//------------- Main part ----------------------
	
	//Converting the text to lower case
	$text=StrToLower($text);
	
	if($check_for_icq_wmid) {
		//Finding all sequences consist of
		//three or more digits
		//(and, may be, words wm, wmz,wmr,wmid, icq and so on)
		preg_match_all("/(?:icq){0,1}(?:wm){0,1}(?:z|r|u|e|id){0,1}\s*(?:[0-9]\s*(-|\.){0,1}\s*){".$min_digits_number.",}/", $text, $wmid1);
		$ret=$wmid1[0]; //Copying found strings to the array $ret
	}

	//Making a regular expression that finds all URL's and E-mail's	

	$encsym="(?:%[A-Fa-f0-9]{2})"; //Encoded symbols such as %20, %5F, etc.
	// Protocol prefix
	$protocol="(?:(?:ftp|http|https|gopher|mailto|news|nntp|telnet|wais|file|prospero|ms-help|$encsym{3,})(?::|$encsym)(?:\/|$encsym){2})";
	// Username and password
	$username=$password="(?:[-a-z0-9\.\?;&=_]*|$encsym*)";
	
	// Host (in string format
	$host="(?:\.?(?:[-_a-z0-9]|$encsym)+\.)+((?:[a-z]|$encsym)+)\.?";
	// or IP format)
	$host="(?:(?:".$host.")|(?:[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.([0-9]{1,3})))";
	
	//Port number
	$port="(?:[0-9]{1,5})";
	
	//Url path
	$urlpath="(?:[-a-z0-9_Á-Ñ\.\/%;:&=])*";
	$urlpath="(?:".$urlpath.")";
	
	//Parameters (after '?') or/and bookmark on page (after '#')
	$params="(?:[-a-z0-9_Á-Ñ\.\/%;:&=?!\$+@<>#'\"`()~^])*";
	$params="(?:(?:\?|#)".$params.")";
	
	//Compiling template string and
	//finding all matches in text
	preg_match_all("/$protocol?(?:$username?(?:(?::|$encsym)$password?)?@)?$host(?:(?::|$encsym)$port)?$urlpath$params?/", $text, $url1);
	
	//Checking if the top-level domain 
	//exists in the top-level domain list
	$urlcnt=0;
	for($i=0; $i<count($url1[0]); $i++) {
		//Decoding hex-encoded symbols (%20, %5F, etc.)
		$url1[0][$i]=urldecode($url1[0][$i]); 
		$url1[1][$i]=urldecode($url1[1][$i]);
		if(bbas_is_top_level_domain($url1[1][$i]) && bbas_test_range($url1[2][$i])) // If exists
			$url2[$urlcnt++]=$url1[0][$i];     // Adding this URL to the list
	}
	
	// explicit links
	preg_match_all('/<a href="([^"]+)"/', $text, $explicit_links);
	if (count ($explicit_links[1])) {
		$ret = array_merge ($ret, $explicit_links[1]);
	}
	
	if($check_for_icq_wmid) {
		if($urlcnt)	 // If the list is not empty
			$ret=array_merge($url2,$ret); // Merging it with other results
	} else {
		$ret=$url2;
	}

	if ($check_for_phone) {
		preg_match_all("/[^0-0](\d\d\d-\d\d-?\d\d)/", $text, $phones);
		if (count ($phones[0])) {
			$ret = array_merge ($ret, $phones[0]);
		}
	}

	return array_unique($ret);
}
