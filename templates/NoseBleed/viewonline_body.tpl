<table cellspacing="1" class="viewonline">
	<tr class="toplines">
		<th>{L_USERNAME}</th>
		<th>{L_LAST_UPDATE}</th>
		<th>{L_FORUM_LOCATION}</th>
	</tr>
	<tr> 
		<td colspan="3"><h2>{TOTAL_REGISTERED_USERS_ONLINE}</h2></td>
	</tr>
	<!-- BEGIN reg_user_row -->
	<tr> 
		<td class="row1 one"
			onmouseover="this.style.backgroundColor='{T_TR_COLOR2}'; this.style.cursor='pointer'"
			onmouseout="this.style.backgroundColor=''"
			onclick="window.location.href='{reg_user_row.U_USER_PROFILE}'">
			<a href="{reg_user_row.U_USER_PROFILE}">{reg_user_row.USERNAME}</a></td>
		<td class="{reg_user_row.ROW_CLASS} two">{reg_user_row.LASTUPDATE}</td>
		<td class="{reg_user_row.ROW_CLASS} two"><a href="{reg_user_row.U_FORUM_LOCATION}">{reg_user_row.FORUM_LOCATION}</a></td>
	</tr>
	<!-- END reg_user_row -->
	<tr> 
		<td colspan="3"><h2>{TOTAL_GUEST_USERS_ONLINE}</h2></td>
	</tr>
	<!-- BEGIN guest_user_row -->
	<tr> 
		<td class="{guest_user_row.ROW_CLASS} one">{guest_user_row.USERNAME}</td>
		<td class="{guest_user_row.ROW_CLASS} two">{guest_user_row.LASTUPDATE}</td>
		<td class="{guest_user_row.ROW_CLASS} two"><a href="{guest_user_row.U_FORUM_LOCATION}">{guest_user_row.FORUM_LOCATION}</a></td>
	</tr>
	<!-- END guest_user_row -->
</table>

<div class="timezone left">{L_ONLINE_EXPLAIN}</div>
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