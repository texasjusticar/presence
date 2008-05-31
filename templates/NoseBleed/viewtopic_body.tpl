<table cellspacing="1" class="viewtopic">
	<tr class="toplines"> 
		<th>{L_AUTHOR}</th>
		<th>{L_MESSAGE}</th>
	</tr>
	<tr>
		<td colspan="2"><h2><a href="{U_INDEX}">&lt;</a>&nbsp;&nbsp;<a href="{U_VIEW_FORUM}">{FORUM_NAME}</a>&nbsp;&nbsp;~&nbsp;&nbsp;{TOPIC_TITLE}</h2></td>
	</tr>
	{POLL_DISPLAY} 
	<!-- BEGIN postrow -->
	<tr>
		<td class="row3 one"><a id="{postrow.U_POST_ID}"></a>{postrow.POSTER_NAME}</td>
		<td class="row3 two">
			<table cellspacing="0">
				<tr>
					<td><a href="{postrow.U_MINI_POST}"><img src="{postrow.MINI_POST_IMG}" style="width: 12px; height: 9px; border: 0;" alt="" /></a>{L_POSTED}: {postrow.POST_DATE}</td>
					<td class="txtright">{postrow.QUOTE_IMG} {postrow.EDIT_IMG} {postrow.DELETE_IMG} {postrow.IP_IMG}</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr> 
		<td class="{postrow.ROW_CLASS} three">
		<table><Tr><td align=bottom>{postrow.DISCIPLINES}</td><td>
			<span class="avatar">{postrow.POSTER_AVATAR}</span>
			<span class="block">{postrow.POSTER_RANK}</span>
			<span class="block">{postrow.RANK_IMAGE}</span>
			<span class="block">{postrow.POSTER_JOINED}</span>
			<span class="block">{postrow.POSTER_POSTS}</span>
			<span class="block">{postrow.POSTER_FROM}</span>
			</td></tr></table>
		</td>
		<td class="{postrow.ROW_CLASS} four">
			<table cellspacing="0">
				<tr>
					<td class="txttop">{postrow.MESSAGE}</td>
				</tr>
				<tr>
					<td class="txtbottom"><span class="edited">{postrow.EDITED_MESSAGE}</span>{postrow.SIGNATURE}</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr> 
		<td class="{postrow.ROW_CLASS} five blacklink"><a href="#top">{L_BACK_TO_TOP}</a></td>
		<td class="{postrow.ROW_CLASS} six">
			{postrow.PROFILE_IMG} {postrow.PM_IMG} {postrow.EMAIL_IMG} {postrow.WWW_IMG} {postrow.AIM_IMG} {postrow.YIM_IMG} {postrow.MSN_IMG} {postrow.ICQ_IMG}
		</td>
	</tr>
	<!-- END postrow -->
	<tr> 
		<td class="row3 pad4 txtright" colspan="2">
			<form method="post" action="{S_POST_DAYS_ACTION}">
				<p>{L_DISPLAY_POSTS}: {S_SELECT_POST_DAYS}&nbsp;{S_SELECT_POST_ORDER} <input type="submit" value="{L_GO}" class="button" name="submit" /></p>
			</form>
		</td>
	</tr>
</table>

<div class="timezone left">{S_WATCH_TOPIC}</div>
<div class="timezone right">{S_TIMEZONE}</div>
<div class="spacing"></div>

<table cellspacing="0">
	<tr class="lines_3">
		<th>
		<div class="left">
			<a href="{U_VIEW_NEWER_TOPIC}">{L_VIEW_NEXT_TOPIC}</a><br />
			<a href="{U_VIEW_OLDER_TOPIC}">{L_VIEW_PREVIOUS_TOPIC}</a>
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

<div class="postbuttons"><a href="{U_POST_NEW_TOPIC}"><img src="{POST_IMG}" alt="{L_POST_NEW_TOPIC}" /></a><a href="{U_POST_REPLY_TOPIC}"><img src="{REPLY_IMG}" alt="" /></a></div>

<div class="spacing"></div>

<div class="right">{JUMPBOX}</div>
<div class="clear"></div>

<div class="spacing"></div>

<table cellspacing="0">
	<tr> 
		<td class="txttop">
			{S_TOPIC_ADMIN}
		</td>
		<td class="txtright">
			{S_AUTH_LIST}
		</td>
	</tr>
</table>