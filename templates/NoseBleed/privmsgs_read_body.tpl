<form method="post" action="{S_PRIVMSGS_ACTION}">
<table cellspacing="1" class="posting_body">
	<tr class="toplines"> 
		<th colspan="3">&nbsp;&nbsp;{BOX_NAME}</th>
	</tr>
	<tr>
		<td colspan="3"><h2>{L_MESSAGE}</h2></td>
	</tr>
	<tr> 
		<td class="row2 one">{L_FROM}:</td>
		<td colspan="2" class="row2 two">{MESSAGE_FROM}</td>
	</tr>
	<tr> 
		<td class="row2 one">{L_POSTED}:</td>
		<td colspan="2" class="row2 two">{POST_DATE}</td>
	</tr>
	<tr> 
		<td class="row2 one">{L_SUBJECT}:</td>
		<td class="row2 two">{POST_SUBJECT}</td>
		<td class="row2 two txtright" style="width: 1%; white-space: nowrap;">{EDIT_PM_IMG}&nbsp;{QUOTE_PM_IMG}</td>
	</tr>
	<tr> 
		<td class="row1 one">&nbsp;</td>
		<td colspan="2" class="row1 six txttop">{MESSAGE}</td>
	</tr>
	<tr> 
		<td colspan="3" class="row2 two">{PROFILE_IMG} {PM_IMG} {EMAIL_IMG} {WWW_IMG} {AIM_IMG} {YIM_IMG} {MSN_IMG} {ICQ_IMG}</td>
	</tr>
	<tr> 
		<td class="row3 pad4 txtright" colspan="3">{S_HIDDEN_FIELDS}
		<input type="submit" name="save" value="{L_SAVE_MSG}" class="button" /> 
		<input type="submit" name="delete" value="{L_DELETE_MSG}" class="button" />
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

<div class="postbuttons">
	<div class="right">
		<table cellspacing="0" style="width: 100px;">
			<tr> 
				<td>{INBOX_IMG}</td>
				<td>{INBOX}&nbsp;&nbsp;</td>
				<td>{SENTBOX_IMG}</td>
				<td>{SENTBOX}&nbsp;&nbsp;</td>
				<td>{OUTBOX_IMG}</td>
				<td>{OUTBOX}&nbsp;&nbsp;</td>
				<td>{SAVEBOX_IMG}</td>
				<td>{SAVEBOX}</td>
			</tr>
		</table>
	</div>
	{REPLY_PM_IMG}
</div>
<div class="clear"></div>

<div class="spacing"></div>

<div class="right">{JUMPBOX}</div>
<div class="clear"></div>