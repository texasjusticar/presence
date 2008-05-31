<form action="{S_PROFILE_ACTION}" method="post">
<table cellspacing="1">
	<tr class="toplines"> 
		<th>{L_ITEMS_REQUIRED}</th>
	</tr>
	<tr>
		<td colspan="2"><h2>{L_SEND_PASSWORD}</h2></td>
	</tr>
	<tr> 
		<td class="row1">
			<div class="txtcenter" style="padding: 20px 250px 20px 20px;">
				<div class="pad0-0-4 txtright">{L_USERNAME}: * <input type="text" class="post postmedium" name="username" maxlength="40" value="{USERNAME}" /></div>
				<div class="pad0-0-10 txtright">{L_EMAIL_ADDRESS}: * <input type="text" class="post postmedium" name="email" maxlength="255" value="{EMAIL}" /></div>
				<div class="txtright">{S_HIDDEN_FIELDS}<input type="submit" name="submit" value="{L_SUBMIT}" class="button" /> <input type="reset" value="{L_RESET}" name="reset" class="button" /></div>
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