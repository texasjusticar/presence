<?php
/***************************************************************************
 *                          lang_bbas.php [English]
 *                            -------------------
 *   begin                : Thursday, Apr 6, 2006
 *   copyright            : (C) 2006 bbAntiSpam
 *   email                : support@bbantispam.com
 *
 *   $Id: lang_bbas.php 410 2006-06-27 04:05:16Z olpa $
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

$lang['bbas.guest_contacts_forbidden'] = 'Contact information can be posted only by registered users.';
$lang['bbas.mail.content'] = <<<EOT
Subject: {SUBJECT}
Charset: {CHARSET}

{UNREG}bbAntiSpam thinks he has stopped the SPAM message. Contacts are not allowed:

{LINKS}
The text of the message
=======================

User name: {NAME}, subject: {SUBJ}

{TEXT}

Server data
===========

{SERVER}

-- 
bbAntiSpam, http://bbantispam.com/
EOT;
$lang['bbas.mail.subject'] = 'phpBB spam';
$lang['bbas.mail.unreg']   = "You are using the UNREGISTERED version of bbAntiSpam.\nThis message is also SENT TO US to improve our spam database.\nTo avoid information disclosure, register here:\nhttp://bbantispam.com/?mode=register\n\n";

?>
