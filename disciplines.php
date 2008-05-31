<?php
/***************************************************************************
 *                                profile.php
 *                            -------------------
 *   begin                : Saturday, Feb 13, 2001
 *   copyright            : (C) 2001 The phpBB Group
 *   email                : support@phpbb.com
 *
 *   $Id: profile.php,v 1.193.2.5 2004/11/18 17:49:37 acydburn Exp $
 *
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

define('IN_PHPBB', true);
$phpbb_root_path = './';
include($phpbb_root_path . 'extension.inc');
include($phpbb_root_path . 'common.'.$phpEx);
include('/var/www/monger.vekn.org/public/monger.txt');

//
// Start session management
//
$userdata = session_pagestart($user_ip, PAGE_PROFILE);
init_userprefs($userdata);
//
// End session management
//

// session id check
if (!empty($HTTP_POST_VARS['sid']) || !empty($HTTP_GET_VARS['sid']))
{
	$sid = (!empty($HTTP_POST_VARS['sid'])) ? $HTTP_POST_VARS['sid'] : $HTTP_GET_VARS['sid'];
}
else
{
	$sid = '';
}

if ((($userdata['user_posts'] < 199) && ($userdata['user_id']!=2)) || ($userdata['user_id']==-1)) {
	redirect(append_sid("index.$phpEx", true));
}

//
// Set default email variables
//
$script_name = preg_replace('/^\/?(.*?)\/?$/', '\1', trim($board_config['script_path']));
$script_name = ( $script_name != '' ) ? $script_name . '/profile.'.$phpEx : 'profile.'.$phpEx;
$server_name = trim($board_config['server_name']);
$server_protocol = ( $board_config['cookie_secure'] ) ? 'https://' : 'http://';
$server_port = ( $board_config['server_port'] <> 80 ) ? ':' . trim($board_config['server_port']) . '/' : '/';

$server_url = $server_protocol . $server_name . $server_port . $script_name;
//
// Mozilla navigation bar
//
$nav_links['up'] = array(
	'url' => append_sid('index.'.$phpEx),
	'title' => sprintf($lang['Forum_Index'], $board_config['sitename'])
);

//
// Dump out the page header and load viewforum template
//
define('SHOW_ONLINE', true);
$page_title = "Custom Disciplines";
include($phpbb_root_path . 'includes/page_header.'.$phpEx);

$template->set_filenames(array(
	'body' => 'disciplines.tpl')
);

//
// End header
//

mysql_select_db("monger");

// Need to pull discipline list early for use during inserts.

$query = "select ID,name from discipline where type=0 order by name ASC";
$disciplineresult = mysql_query($query);

$error = "";
$maxpoints = floor(($userdata['user_posts'] - 100)/100) + 4; // assumes you have at least 500 posts, I'm cheating

if ($maxpoints > 12) { 
	$maxpoints = 12;
}

mysql_select_db('presence_phpbb');

if (!empty($HTTP_POST_VARS['submit'])) {

// disciplines

	unset($_POST['submit']);

	$inferior = array();
	$superior = array();

	foreach ($_POST as $discipline => $level) {
		switch ($level) {
			case 1 :
				$inferior[] = $discipline;
				break;
			case 2 :
				$superior[] = $discipline;
				break;
			default :
				break;
		}
	}
	
	$points = 0;
	
	$points += sizeof($inferior);
	$points += sizeof($superior)*2;

	$disc_num = sizeof($inferior) + sizeof($superior);

	if ($points > $maxpoints) {
		$error = "You have ".$maxpoints." to spend and you attempted to use ".$points." worth of discplines.";
	} elseif (!(in_array("Presence",$superior)) && !(in_array("Presence",$inferior))) {
		$error = "Nice try 133t h@X00r, you still need presence to update your custom disciplines.";
	} elseif ($disc_num > 6) {
		$error = "You may only have 6 disciplines.";
	} else {
	
		$query = "delete from phpbb_user_disciplines where user_id=".$userdata['user_id'];
		$result = mysql_query($query);
	
		$query = "insert into phpbb_user_disciplines (user_id,inferior,superior) values (".$userdata['user_id'].",'".implode(",",$inferior)."','".implode(",",$superior)."')";
		$result = mysql_query($query);

		$error = "Disciplines updated.";
	}
}

$disciplinevalues= array();
$points = 0;
$form = "";
$inferior = array();
$superior = array();

if ($error) {
	$form .= "<font color='red'>".$error."</font><p>";
}

$disciplinequery = "select inferior,superior from phpbb_user_disciplines where user_id=".$userdata['user_id'];
$disciplinevalues = mysql_query($disciplinequery);
$user_disc = mysql_fetch_array($disciplinevalues);

if (sizeof($user_disc) > 0) {
	if (!empty($user_disc['inferior'])) {
		$inferior = explode(",",$user_disc['inferior']); 
	}
	if (!empty($user_disc['superior'])) {
		$superior = explode(",",$user_disc['superior']);
	}
	$points += sizeof($inferior);
	$points += sizeof($superior)*2;

	$form .= "Points allocated : ".$points."<p>";
}

$form .= "<form method='post'><table>";
$counter=1;

while ($disciplinerecord=mysql_fetch_array($disciplineresult))
{
	if ($counter%2!=0) {$form .= "<tr>";}
	$form .= "\n<td align=right>";

	$form .= discipline_icon($disciplinerecord['name'],0);

	$form .= "</td><td align=left>";
	$form .=  "\n<select name=".$disciplinerecord['name'].">";
	if ($disciplinerecord['name']!='Presence') {
		$form .=  "<option value=''> None<br>";
	}
	$form .=  "<option value=1 ";
	if (in_array($disciplinerecord['name'],$inferior)) {
		$form .=  "selected ";
	}
	$form .=  "> Inferior";

	$form .=  "<option value=2 ";
	if (in_array($disciplinerecord['name'],$superior)) {
		$form .=  "selected ";
	}
	$form .=  "> Superior";
	$form .=  "</select></td><td>&nbsp;&nbsp</td>";
	if ($counter%2==0) {$form .= "</tr>";}
	$counter++;	
}
	
	$form .= "</table><p>You have $maxpoints points to spend on disciplines.<p><input type='submit' name='submit' value='Save Disciplines'></form>";
	



$template->assign_vars(array(
	FORM => $form
)
);

//
// Parse the page and print
//
$template->pparse('body');

//
// Page footer
//
include($phpbb_root_path . 'includes/page_tail.'.$phpEx);

?>
