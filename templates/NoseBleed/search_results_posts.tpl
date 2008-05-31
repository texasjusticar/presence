<table cellspacing="1" class="search">
	<tr class="toplines"> 
		<th>{L_AUTHOR}</th>
		<th>{L_MESSAGE}</th>
	</tr>
	<tr>
		<td colspan="2"><h2>{L_SEARCH_MATCHES}</h2></td>
	</tr>
	<!-- BEGIN searchresults -->
	<tr> 
		<td class="row1 four">{L_POSTED}:</td>
		<td class="row2 five">{searchresults.POST_DATE}</td>
	</tr>
	<tr> 
		<td class="row1 four">{L_FORUM}:</td>
		<td class="row2 five"><a href="{searchresults.U_FORUM}">{searchresults.FORUM_NAME}</a></td>
	</tr>
	<tr> 
		<td class="row1 four">{L_SUBJECT}:</td>
		<td class="row2 five"><a href="{searchresults.U_POST}">{searchresults.POST_SUBJECT}</a></td>
	</tr>
	<tr> 
		<td class="row1 four">{searchresults.POSTER_NAME}<br /><br />
			{L_REPLIES}: {searchresults.TOPIC_REPLIES}<br />
			{L_VIEWS}: {searchresults.TOPIC_VIEWS}</td>
		<td class="row2 six">{searchresults.MESSAGE}</td>
	</tr>
	<tr>
		<td colspan="2">&nbsp;</td>
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