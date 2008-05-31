<form method="post" action="{S_POST_DAYS_ACTION}">
<table cellspacing="1" class="viewforum">
	<tr class="toplines"> 
		<th colspan="2">{L_TOPICS}</th>
		<th>{L_REPLIES}</th>
		<th>{L_AUTHOR}</th>
		<th>{L_VIEWS}</th>
		<th>{L_LASTPOST}</th>
	</tr>
	<tr> 
		<td colspan="6"><h2><a href="{U_INDEX}">&lt;</a>&nbsp;&nbsp;<a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></h2><p><div class="postbuttons"><a href="{U_POST_NEW_TOPIC}"><img src="{POST_IMG}" alt="{L_POST_NEW_TOPIC}" /></a></div></p></td>
	</tr>
	<!-- BEGIN topicrow -->
	<tr> 
		<td class="row1 one"><img src="{topicrow.TOPIC_FOLDER_IMG}" alt="" /></td>
		<td class="row1 two"
			onmouseover="this.style.backgroundColor='{T_TR_COLOR2}'; this.style.cursor='pointer'"
			onmouseout="this.style.backgroundColor=''"
			onclick="window.location.href='{topicrow.U_VIEW_TOPIC}'">
			{topicrow.NEWEST_POST_IMG}{topicrow.TOPIC_TYPE}<span class="blacklink"><a href="{topicrow.U_VIEW_TOPIC}">{topicrow.TOPIC_TITLE}</a></span><br />
			{topicrow.GOTO_PAGE}</td>
		<td class="row2 one">{topicrow.REPLIES}</td>
		<td class="row2 one">{topicrow.TOPIC_AUTHOR}</td>
		<td class="row2 one">{topicrow.VIEWS}</td>
		<td class="row3 three">{topicrow.LAST_POST_TIME}<br />
		{topicrow.LAST_POST_AUTHOR} {topicrow.LAST_POST_IMG}</td>
	</tr>
	<!-- END topicrow -->
	<!-- BEGIN switch_no_topics -->
	<tr> 
		<td class="row1 txtmiddle pad60" colspan="6">{L_NO_TOPICS}</td>
	</tr>
	<!-- END switch_no_topics -->
	<tr> 
		<td class="row3 pad4 txtright" colspan="6">{L_DISPLAY_TOPICS}:&nbsp;{S_SELECT_TOPIC_DAYS}&nbsp;<input type="submit" class="button" value="{L_GO}" name="submit" /></td>
	</tr>
</table>
</form>

<div class="timezone left"><a href="{U_MARK_READ}">{L_MARK_TOPICS_READ}</a></div>
<div class="timezone right">{S_TIMEZONE}</div>
<div class="spacing"></div>

<table cellspacing="0">
	<tr class="lines_3">
		<th>
		<div class="left">
			{L_MODERATOR}: {MODERATORS}<br />
			{LOGGED_IN_USER_LIST}
		</div>
		<div class="right">
			{PAGE_NUMBER}<br />
			{PAGINATION}
		</div>
		<div class="clear"></div>
		<div class="left">
			<span class="nav"><a href="{U_INDEX}">{L_INDEX}</a>&nbsp;&nbsp;~&nbsp;&nbsp;<a href="{U_VIEW_FORUM}">{FORUM_NAME}</a></span>
		</div>
		</th>
	</tr>
</table>

<div class="spacing"></div>

<div class="postbuttons"><a href="{U_POST_NEW_TOPIC}"><img src="{POST_IMG}" alt="{L_POST_NEW_TOPIC}" /></a></div>

<div class="spacing"></div>

<div class="right">{JUMPBOX}</div>
<div class="clear"></div>

<div class="spacing"></div>

<table cellspacing="0">
	<tr> 
		<td>
			<table cellspacing="3" class="forumicons">
				<tr> 
					<td><img src="{FOLDER_NEW_IMG}" alt="" /></td>
					<td>{L_NEW_POSTS}</td>
					<td>&nbsp;&nbsp;</td>
					<td><img src="{FOLDER_ANNOUNCE_NEW_IMG}" alt="" /></td>
					<td>{L_ANNOUNCEMENT}</td>
				</tr>
				<tr> 
					<td><img src="{FOLDER_LOCKED_NEW_IMG}" alt="" /></td>
					<td>{L_NEW_POSTS_LOCKED}</td>
					<td>&nbsp;&nbsp;</td>
					<td><img src="{FOLDER_STICKY_NEW_IMG}" alt="" /></td>
					<td>{L_STICKY}</td>
				</tr>
				<tr> 
					<td><img src="{FOLDER_LOCKED_IMG}" alt="" /></td>
					<td>{L_NO_NEW_POSTS_LOCKED}</td>
					<td>&nbsp;&nbsp;</td>
				</tr>
			</table>
		</td>
		<td class="txtright">
			{S_AUTH_LIST}
		</td>
	</tr>
</table>