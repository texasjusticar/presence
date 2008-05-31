<form action="{S_LOGIN_ACTION}" method="post">
<table cellspacing="1">
	<tr class="toplines"> 
		<th>{L_ENTER_PASSWORD}</th>
	</tr>
	<tr>
		<td colspan="2"><h2>{PAGE_TITLE}</h2></td>
	</tr>
	<tr> 
		<td class="row1">
			<div class="txtcenter" style="padding: 20px 240px 20px 20px;">
				<div class="pad0-0-4 txtright">{L_USERNAME}: <input type="text" class="post postmedium" name="username" maxlength="40" value="{USERNAME}" /></div>
				<div class="pad0-0-4 txtright">{L_PASSWORD}: <input type="password" class="post postmedium" name="password" maxlength="25" /></div>
				<!-- BEGIN switch_allow_autologin -->
				<div class="pad0-0-10 txtright">{L_AUTO_LOGIN}: <input type="checkbox" class="checkbox" name="autologin" /></div>
				<!-- END switch_allow_autologin -->
				<div class="pad0-0-10 txtright">{S_HIDDEN_FIELDS}<input type="submit" name="login" class="button" value="{L_LOGIN}" />&nbsp;<input type="button" class="button"  name="newregister" value="{L_REGISTER}" onclick="window.location.href='{U_REGISTER}'" /></div>
				<div class="txtright"><a href="{U_SEND_PASSWORD}">{L_SEND_PASSWORD}</a></div>
			</div>
		</td>
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