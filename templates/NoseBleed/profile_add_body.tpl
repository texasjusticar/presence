<form action="{S_PROFILE_ACTION}" {S_FORM_ENCTYPE} method="post">
<table cellspacing="1" class="profile">
	<tr class="toplines"> 
		<th colspan="2">{L_REGISTRATION_INFO}</th>
	</tr>
	<tr>
		<td colspan="2"><h2>{L_REGISTRATION_INFO}</h2></td>
	</tr>
	{ERROR_BOX}
	<tr> 
		<td class="row2 three" colspan="2">{L_ITEMS_REQUIRED}</td>
	</tr>
	<!-- BEGIN switch_namechange_disallowed -->
	<tr> 
		<td class="row1 one">{L_USERNAME}: *</td>
		<td class="row2 two" style="font-weight: bold;"><input type="hidden" name="username" value="{USERNAME}" />&nbsp;{USERNAME}</td>
	</tr>
	<!-- END switch_namechange_disallowed -->
	<!-- BEGIN switch_namechange_allowed -->
	<tr> 
		<td class="row1 one">{L_USERNAME}: *</td>
		<td class="row2 two"><input type="text" class="post postmedium" name="username" maxlength="25" value="{USERNAME}" /></td>
	</tr>
	<!-- END switch_namechange_allowed -->
	<tr> 
		<td class="row1 one">{L_EMAIL_ADDRESS}: *</td>
		<td class="row2 two"><input type="text" class="post postmedium" name="email" maxlength="255" value="{EMAIL}" /></td>
	</tr>
	<!-- BEGIN switch_edit_profile -->
	<tr> 
		<td class="row1 one">{L_CURRENT_PASSWORD}: *<br />{L_CONFIRM_PASSWORD_EXPLAIN}</td>
		<td class="row2 two"><input type="password" class="post postmedium" name="cur_password" maxlength="100" value="{CUR_PASSWORD}" /></td>
	</tr>
	<!-- END switch_edit_profile -->
	<tr> 
		<td class="row1 one">{L_NEW_PASSWORD}: *<br />{L_PASSWORD_IF_CHANGED}</td>
		<td class="row2 two"><input type="password" class="post postmedium" name="new_password" maxlength="100" value="{NEW_PASSWORD}" /></td>
	</tr>
	<tr> 
		<td class="row1 one">{L_CONFIRM_PASSWORD}: * <br />{L_PASSWORD_CONFIRM_IF_CHANGED}</td>
		<td class="row2 two"><input type="password" class="post postmedium" name="password_confirm" maxlength="100" value="{PASSWORD_CONFIRM}" /></td>
	</tr>
	<!-- Visual Confirmation -->
	<!-- BEGIN switch_confirm -->
	<tr>
		<td colspan="2"><h2>{L_CONFIRM_CODE}</h2></td>
	</tr>
	<tr>
		<td class="row1 two txtcenter" colspan="2">{L_CONFIRM_CODE_IMPAIRED}<br /><br />{CONFIRM_IMG}<br /><br /></td>
	</tr>
	<tr> 
		<td class="row1 one">{L_CONFIRM_CODE_EXPLAIN}</td>
		<td class="row2 two"><input type="text" class="post postmedium" name="confirm_code" maxlength="6" value="" /></td>
	</tr>
	<!-- END switch_confirm -->
	<tr> 
		<td colspan="2"><h2>{L_PROFILE_INFO}</h2></td>
	</tr>
	<tr>
		<td class="row2 three" colspan="2">{L_PROFILE_INFO_NOTICE}</td>
	</tr>
	<tr> 
		<td class="row1 one">{L_ICQ_NUMBER}:</td>
		<td class="row2 two"><input type="text" name="icq" class="post postmedium" maxlength="15" value="{ICQ}" /></td>
	</tr>
	<tr> 
		<td class="row1 one">{L_AIM}:</td>
		<td class="row2 two"><input type="text" class="post postmedium" name="aim" maxlength="255" value="{AIM}" /></td>
	</tr>
	<tr> 
		<td class="row1 one">{L_MESSENGER}:</td>
		<td class="row2 two"><input type="text" class="post postmedium" name="msn" maxlength="255" value="{MSN}" /></td>
	</tr>
	<tr>
		<td class="row1 one">{L_YAHOO}:</td>
		<td class="row2 two"><input type="text" class="post postmedium" name="yim" maxlength="255" value="{YIM}" /></td>
	</tr>
	<tr>
		<td class="row1 one">{L_WEBSITE}:</td>
		<td class="row2 two"><input type="text" class="post postbig" name="website" maxlength="255" value="{WEBSITE}" /></td>
	</tr>
	<tr>
		<td class="row1 one">{L_LOCATION}:</td>
		<td class="row2 two"><input type="text" class="post postbig" name="location" maxlength="100" value="{LOCATION}" /></td>
	</tr>
	<tr>
		<td class="row1 one">{L_OCCUPATION}:</td>
		<td class="row2 two"><input type="text" class="post postbig" name="occupation" maxlength="100" value="{OCCUPATION}" /></td>
	</tr>
	<tr>
		<td class="row1 one">{L_INTERESTS}:</td>
		<td class="row2 two"><input type="text" class="post postbig" name="interests" maxlength="150" value="{INTERESTS}" /></td>
	</tr>
	<tr>
		<td class="row1 one">{L_SIGNATURE}:<br />{L_SIGNATURE_EXPLAIN}<br /><br />{HTML_STATUS}<br />{BBCODE_STATUS}<br />{SMILIES_STATUS}</td>
		<td class="row2 two"><textarea name="signature" rows="6" cols="30" class="post postbig">{SIGNATURE}</textarea></td>
	</tr>
	<tr> 
		<td colspan="2"><h2>{L_PREFERENCES}</h2></td>
	</tr>
	<tr> 
		<td class="row1 one">{L_PUBLIC_VIEW_EMAIL}:</td>
		<td class="row2 two"><input type="radio" class="checkbox" name="viewemail" value="1" {VIEW_EMAIL_YES}/>&nbsp;{L_YES}&nbsp;
			<input type="radio" class="checkbox" name="viewemail" value="0" {VIEW_EMAIL_NO}/>&nbsp;{L_NO}</td>
	</tr>
	<tr> 
		<td class="row1 one">{L_HIDE_USER}:</td>
		<td class="row2 two"><input type="radio" class="checkbox" name="hideonline" value="1" {HIDE_USER_YES} />&nbsp;{L_YES}&nbsp; 
			<input type="radio" class="checkbox" name="hideonline" value="0" {HIDE_USER_NO}/>&nbsp;{L_NO}</td>
	</tr>
	<tr> 
		<td class="row1 one">{L_NOTIFY_ON_REPLY}:<br />{L_NOTIFY_ON_REPLY_EXPLAIN}</td>
		<td class="row2 two"><input type="radio" class="checkbox" name="notifyreply" value="1" {NOTIFY_REPLY_YES} />&nbsp;{L_YES}&nbsp;
			<input type="radio" class="checkbox" name="notifyreply" value="0" {NOTIFY_REPLY_NO} />&nbsp;{L_NO}</td>
	</tr>
	<tr> 
		<td class="row1 one">{L_NOTIFY_ON_PRIVMSG}:</td>
		<td class="row2 two"><input type="radio" class="checkbox" name="notifypm" value="1" {NOTIFY_PM_YES}/>&nbsp;{L_YES}&nbsp;
			<input type="radio" class="checkbox" name="notifypm" value="0" {NOTIFY_PM_NO} />&nbsp;{L_NO}</td>
	</tr>
	<tr> 
		<td class="row1 one">{L_POPUP_ON_PRIVMSG}:<br />{L_POPUP_ON_PRIVMSG_EXPLAIN}</td>
		<td class="row2 two"><input type="radio" class="checkbox" name="popup_pm" value="1" {POPUP_PM_YES}/>&nbsp;{L_YES}&nbsp;
			<input type="radio" class="checkbox" name="popup_pm" value="0" {POPUP_PM_NO}/>&nbsp;{L_NO}</td>
	</tr>
	<tr> 
		<td class="row1 one">{L_ALWAYS_ADD_SIGNATURE}:</td>
		<td class="row2 two"><input type="radio" class="checkbox" name="attachsig" value="1" {ALWAYS_ADD_SIGNATURE_YES}/>&nbsp;{L_YES}&nbsp;
			<input type="radio" class="checkbox" name="attachsig" value="0" {ALWAYS_ADD_SIGNATURE_NO}/>&nbsp;{L_NO}</td>
	</tr>
	<tr> 
		<td class="row1 one">{L_ALWAYS_ALLOW_BBCODE}:</td>
		<td class="row2 two"><input type="radio" class="checkbox" name="allowbbcode" value="1" {ALWAYS_ALLOW_BBCODE_YES}/>&nbsp;{L_YES}&nbsp;
			<input type="radio" class="checkbox" name="allowbbcode" value="0" {ALWAYS_ALLOW_BBCODE_NO}/>&nbsp;{L_NO}</td>
	</tr>
	<tr> 
		<td class="row1 one">{L_ALWAYS_ALLOW_HTML}:</td>
		<td class="row2 two"><input type="radio" class="checkbox" name="allowhtml" value="1" {ALWAYS_ALLOW_HTML_YES}/>&nbsp;{L_YES}&nbsp;
			<input type="radio" class="checkbox" name="allowhtml" value="0" {ALWAYS_ALLOW_HTML_NO} />&nbsp;{L_NO}</td>
	</tr>
	<tr> 
		<td class="row1 one">{L_ALWAYS_ALLOW_SMILIES}:</td>
		<td class="row2 two"><input type="radio" class="checkbox" name="allowsmilies" value="1" {ALWAYS_ALLOW_SMILIES_YES} />&nbsp;{L_YES}&nbsp;
			<input type="radio" class="checkbox" name="allowsmilies" value="0" {ALWAYS_ALLOW_SMILIES_NO} />&nbsp;{L_NO}</td>
	</tr>
	<tr> 
		<td class="row1 one">{L_BOARD_LANGUAGE}:</td>
		<td class="row2 two">{LANGUAGE_SELECT}</td>
	</tr>
	<tr> 
		<td class="row1 one">{L_BOARD_STYLE}:</td>
		<td class="row2 two">{STYLE_SELECT}</td>
	</tr>
	<tr> 
		<td class="row1 one">{L_TIMEZONE}:</td>
		<td class="row2 two">{TIMEZONE_SELECT}</td>
	</tr>
	<tr> 
		<td class="row1 one">{L_DATE_FORMAT}:<br />{L_DATE_FORMAT_EXPLAIN}</td>
		<td class="row2 two"><input type="text" name="dateformat" value="{DATE_FORMAT}" maxlength="14" class="post postmedium" /></td>
	</tr>
	<!-- BEGIN switch_avatar_block -->
	<tr> 
		<td colspan="2"><h2>{L_AVATAR_PANEL}</h2></td>
	</tr>
	<tr> 
		<td class="row1 one">{L_AVATAR_EXPLAIN}</td>
		<td class="row2 two"><span class="avatar">{AVATAR}</span><br /><input type="checkbox" class="checkbox" name="avatardel" />&nbsp;{L_DELETE_AVATAR}</td>
	</tr>
	<!-- BEGIN switch_avatar_local_upload -->
	<tr> 
		<td class="row1 one">{L_UPLOAD_AVATAR_FILE}:</td>
		<td class="row2 two"><input type="hidden" name="MAX_FILE_SIZE" value="{AVATAR_SIZE}" /><input type="file" name="avatar" class="postfile postbig" /></td>
	</tr>
	<!-- END switch_avatar_local_upload -->
	<!-- BEGIN switch_avatar_remote_upload -->
	<tr> 
		<td class="row1 one">{L_UPLOAD_AVATAR_URL}:<br />{L_UPLOAD_AVATAR_URL_EXPLAIN}</td>
		<td class="row2 two"><input type="text" name="avatarurl" class="post postbig" /></td>
	</tr>
	<!-- END switch_avatar_remote_upload -->
	<!-- BEGIN switch_avatar_remote_link -->
	<tr> 
		<td class="row1 one">{L_LINK_REMOTE_AVATAR}:<br />{L_LINK_REMOTE_AVATAR_EXPLAIN}</td>
		<td class="row2 two"><input type="text" name="avatarremoteurl" class="post postbig" /></td>
	</tr>
	<!-- END switch_avatar_remote_link -->
	<!-- BEGIN switch_avatar_local_gallery -->
	<tr> 
		<td class="row1 one">{L_AVATAR_GALLERY}:</td>
		<td class="row2 two"><input type="submit" name="avatargallery" value="{L_SHOW_GALLERY}" class="button" /></td>
	</tr>
	<!-- END switch_avatar_local_gallery -->
	<!-- END switch_avatar_block -->
	<tr>
		<td colspan="2" class="row3 pad4 txtcenter">{S_HIDDEN_FIELDS}<input type="submit" name="submit" value="{L_SUBMIT}" class="button" />&nbsp;<input type="reset" value="{L_RESET}" name="reset" class="button" /></td>
	</tr>
</table>
</form>

<div class="timezone right">{S_TIMEZONE}</div>
<div class="spacing"></div>

<table cellspacing="0">
	<tr class="lines_1">
		<th>
		<div class="left">
			<span class="nav"><a href="{U_INDEX}">{L_INDEX}</a></span>
		</div>
		</th>
	</tr>
</table>

<div class="spacing"></div>

<div class="right">{JUMPBOX}</div>
<div class="clear"></div>