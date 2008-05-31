<table cellspacing="1" class="search">
	<tr class="toplines"> 
		<th colspan="2">{L_FORUM}</th>
		<th>{L_TOPICS}</th>
		<th>{L_REPLIES}</th>
		<th>{L_AUTHOR}</th>
		<th>{L_VIEWS}</th>
		<th>{L_LASTPOST}</th>
	</tr>
	<tr> 
		<td colspan="7"><h2>{L_SEARCH_MATCHES}</h2></td>
	</tr>
	<!-- BEGIN searchresults -->
	<tr> 
		<td class="row1 seven"><img src="{searchresults.TOPIC_FOLDER_IMG}" alt="" /></td>
		<td class="row1 eight"
			onmouseover="this.style.backgroundColor='{T_TR_COLOR2}'; this.style.cursor='pointer'"
			onmouseout="this.style.backgroundColor=''"
			onclick="window.location.href='{searchresults.U_VIEW_FORUM}'"><a href="{searchresults.U_VIEW_FORUM}">{searchresults.FORUM_NAME}</a></td>
		<td class="row1 eight"
			onmouseover="this.style.backgroundColor='{T_TR_COLOR2}'; this.style.cursor='pointer'"
			onmouseout="this.style.backgroundColor=''"
			onclick="window.location.href='{searchresults.U_VIEW_TOPIC}'">
			{searchresults.NEWEST_POST_IMG}{searchresults.TOPIC_TYPE}<a href="{searchresults.U_VIEW_TOPIC}">{searchresults.TOPIC_TITLE}</a><br />
			{searchresults.GOTO_PAGE}</td>
		<td class="row2 nine">{searchresults.REPLIES}</td>
		<td class="row2 nine">{searchresults.TOPIC_AUTHOR}</td>
		<td class="row2 nine">{searchresults.VIEWS}</td>
		<td class="row3 ten">{searchresults.LAST_POST_TIME}<br />
			{searchresults.LAST_POST_AUTHOR} {searchresults.LAST_POST_IMG}</td>
	</tr>
	<!-- END searchresults -->
</table>

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