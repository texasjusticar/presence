<form method="post" action="{S_MODCP_ACTION}">
<table cellspacing="1" class="modcp">
	<tr class="toplines"> 
		<th colspan="2">{L_TOPICS}</th>
		<th>{L_REPLIES}</th>
		<th>{L_LASTPOST}</th>
		<th>{L_SELECT}</th>
	</tr>
	<tr>
		<td colspan="5"><h2>{L_MOD_CP}</h2></td>
	</tr>
	<tr> 
		<td class="row1 pad60 txtmiddle" colspan="5">{L_MOD_CP_EXPLAIN}</td>
	</tr>
	<tr>
		<td colspan="5"><h2>{L_TOPICS}</h2></td>
	</tr>
	<!-- BEGIN topicrow -->
	<tr> 
		<td class="row1 one"><img src="{topicrow.TOPIC_FOLDER_IMG}" alt="" /></td>
		<td class="row1 two blacklink"
			onmouseover="this.style.backgroundColor='{T_TR_COLOR2}'; this.style.cursor='pointer'"
			onmouseout="this.style.backgroundColor=''"
			onclick="window.location.href='{topicrow.U_VIEW_TOPIC}'">{topicrow.TOPIC_TYPE}<a href="{topicrow.U_VIEW_TOPIC}">{topicrow.TOPIC_TITLE}</a></td>
		<td class="row2 one">{topicrow.REPLIES}</td>
		<td class="row2 three">{topicrow.LAST_POST_TIME}</td>
		<td class="row3 one"><input type="checkbox" class="checkbox" name="topic_id_list[]" value="{topicrow.TOPIC_ID}" /></td>
	</tr>
	<!-- END topicrow -->
	<tr> 
		<td class="row3 pad4 txtright" colspan="5">{S_HIDDEN_FIELDS}<input type="submit" name="delete" class="button" value="{L_DELETE}" />&nbsp;<input type="submit" name="move" class="button" value="{L_MOVE}" />&nbsp;<input type="submit" name="lock" class="button" value="{L_LOCK}" />&nbsp;<input type="submit" name="unlock" class="button" value="{L_UNLOCK}" /></td>
	</tr>
</table>
</form>

<div class="timezone right">{S_TIMEZONE}</div>
<div class="spacing"></div>

<table cellspacing="0">
	<tr class="lines_1">
		<th>
		<div class="right">
			{PAGINATION}&nbsp;&nbsp;&nbsp;&nbsp;{PAGE_NUMBER}
		</div>
		<div class="left">
			<span class="nav"><a href="{U_INDEX}">{L_INDEX}</a></span>
		</div>
		</th>
	</tr>
</table>

<div class="spacing"></div>

<div class="right">{JUMPBOX}</div>
<div class="clear"></div>