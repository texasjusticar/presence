<table cellspacing="1" class="modcp">
	<tr class="toplines"> 
		<th>{L_IP_INFO}</th>
	</tr>
	<tr>
		<td><h2>{L_THIS_POST_IP}</h2></td>
	</tr>
	<tr>
		<td class="row1 nine"><div class="right">[ <a href="{U_LOOKUP_IP}">{L_LOOKUP_IP}</a> ]</div>{IP}&nbsp;&nbsp;&nbsp;[ {POSTS} ]</td>
	</tr>
	<tr>
		<td><h2>{L_OTHER_USERS}</h2></td>
	</tr>
	<!-- BEGIN userrow -->
	<tr> 
		<td class="{userrow.ROW_CLASS} nine"><div class="right"><a href="{userrow.U_SEARCHPOSTS}"><img src="{SEARCH_IMG}" style="border: 0;" alt="{L_SEARCH}" /></a></div><a href="{userrow.U_PROFILE}">{userrow.USERNAME}</a>&nbsp;&nbsp;&nbsp;[ {userrow.POSTS} ]</td>
	</tr>
	<!-- END userrow -->
	<tr>
		<td><h2>{L_OTHER_IPS}</h2></td>
	</tr>
	<!-- BEGIN iprow -->
	<tr> 
		<td class="{iprow.ROW_CLASS} nine"><div class="right">[ <a href="{iprow.U_LOOKUP_IP}">{L_LOOKUP_IP}</a> ]</div>{iprow.IP}&nbsp;&nbsp;&nbsp;[ {iprow.POSTS} ]</td>
	</tr>
	<!-- END iprow -->
</table>

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