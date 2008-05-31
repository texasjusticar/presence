<form action="{S_MODCP_ACTION}" method="post">
<table cellspacing="1">
	<tr class="toplines"> 
		<th>{MESSAGE_TITLE}</th>
	</tr>
	<tr>
		<td><h2>{MESSAGE_TITLE}</h2></td>
	</tr>
	<tr> 
		<td class="row1 pad60 txtmiddle">{L_MOVE_TO_FORUM}:&nbsp;{S_FORUM_SELECT}<br /><br /><input type="checkbox" class="checkbox" name="move_leave_shadow" checked="checked" />&nbsp;{L_LEAVESHADOW}<br /><br />{MESSAGE_TEXT}<br /><br /><br />{S_HIDDEN_FIELDS}<input class="button" type="submit" name="confirm" value="{L_YES}" />&nbsp;<input class="button" type="submit" name="cancel" value="{L_NO}" /></td>
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