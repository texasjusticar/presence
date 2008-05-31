<form action="{S_CONFIRM_ACTION}" method="post">
<table cellspacing="1">
	<tr class="toplines"> 
		<th>{MESSAGE_TITLE}</th>
	</tr>
	<tr>
		<td><h2>{MESSAGE_TITLE}</h2></td>
	</tr>
	<tr> 
		<td class="row1 txtmiddle pad60">{MESSAGE_TEXT}<br /><br />
		{S_HIDDEN_FIELDS}<input type="submit" name="confirm" value="{L_YES}" class="button" />&nbsp;<input type="submit" name="cancel" value="{L_NO}" class="button" /></td>
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