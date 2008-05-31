<table cellspacing="1" class="groupcp">
	<tr class="toplines"> 
		<th colspan="2">{L_GROUP_MEMBERSHIP_DETAILS}</th>
	</tr>
	<!-- BEGIN switch_groups_joined -->
	<tr>
		<td colspan="2"><h2>{L_GROUP_MEMBERSHIP_DETAILS}</h2></td>
	</tr>
	<!-- BEGIN switch_groups_member -->
	<tr> 
		<td class="row1 one">{L_YOU_BELONG_GROUPS}:</td>
		<td class="row2 two txtright"><form method="get" action="{S_USERGROUP_ACTION}">{S_HIDDEN_FIELDS}{GROUP_MEMBER_SELECT}&nbsp;<input type="submit" value="{L_VIEW_INFORMATION}" class="button" /></form></td>
	</tr>
	<!-- END switch_groups_member -->
	<!-- BEGIN switch_groups_pending -->
	<tr class="posting"> 
		<td class="row1 one">{L_PENDING_GROUPS}:</td>
		<td class="row2 two txtright"><form method="get" action="{S_USERGROUP_ACTION}">{S_HIDDEN_FIELDS}{GROUP_PENDING_SELECT}&nbsp;<input type="submit" value="{L_VIEW_INFORMATION}" class="button" /></form></td>
	</tr>
	<!-- END switch_groups_pending -->
	<!-- END switch_groups_joined -->
	<!-- BEGIN switch_groups_remaining -->
	<tr>
		<td colspan="2"><h2>{L_JOIN_A_GROUP}</h2></td>
	</tr>
	<tr> 
		<td class="row1 one">{L_SELECT_A_GROUP}:</td>
		<td class="row2 two txtright"><form method="get" action="{S_USERGROUP_ACTION}">{S_HIDDEN_FIELDS}{GROUP_LIST_SELECT}&nbsp;<input type="submit" value="{L_VIEW_INFORMATION}" class="button" /></form></td>
	</tr>
	<!-- END switch_groups_remaining -->
</table>

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