<form action="{S_GROUPCP_ACTION}" method="post">
<table cellspacing="1" class="groupcp">
	<tr class="toplines"> 
		<th colspan="2">{L_GROUP_INFORMATION}</th>
	</tr>
	<tr>
		<td colspan="2"><h2>{GROUP_NAME}</h2></td>
	</tr>
	<tr> 
		<td class="row1 one">{L_GROUP_DESC}:</td>
		<td class="row2 two">{GROUP_DESC}</td>
	</tr>
	<tr> 
		<td class="row1 one">{L_GROUP_MEMBERSHIP}:</td>
		<td class="row2 two">{GROUP_DETAILS} &nbsp;&nbsp; 
		<!-- BEGIN switch_subscribe_group_input -->
			<input class="button" type="submit" name="joingroup" value="{L_JOIN_GROUP}" />
		<!-- END switch_subscribe_group_input -->
		<!-- BEGIN switch_unsubscribe_group_input -->
			<input class="button" type="submit" name="unsub" value="{L_UNSUBSCRIBE_GROUP}" />
		 <!-- END switch_unsubscribe_group_input -->
		</td>
	</tr>
	<!-- BEGIN switch_mod_option -->
	<tr> 
		<td class="row1 one">{L_GROUP_TYPE}:</td>
		<td class="row2 two"><input type="radio" class="checkbox" name="group_type" value="{S_GROUP_OPEN_TYPE}" {S_GROUP_OPEN_CHECKED} />
		{L_GROUP_OPEN} &nbsp;&nbsp;
		<input type="radio" class="checkbox" name="group_type" value="{S_GROUP_CLOSED_TYPE}" {S_GROUP_CLOSED_CHECKED} />
		{L_GROUP_CLOSED} &nbsp;&nbsp;
		<input type="radio" class="checkbox" name="group_type" value="{S_GROUP_HIDDEN_TYPE}" {S_GROUP_HIDDEN_CHECKED} />
		{L_GROUP_HIDDEN} &nbsp;&nbsp; 
		{S_HIDDEN_FIELDS}<input class="button" type="submit" name="groupstatus" value="{L_UPDATE}" /></td>
	</tr>
	<!-- END switch_mod_option -->
</table>
</form>

<div class="spacing"></div>
<div class="spacing"></div>

<form action="{S_GROUPCP_ACTION}" method="post" name="post">
<table cellspacing="1" class="groupcp">
	<tr class="toplines"> 
		<th>{L_PM}</th>
		<th>{L_USERNAME}</th>
		<th>{L_POSTS}</th>
		<th>{L_FROM}</th>
		<th>{L_EMAIL}</th>
		<th>{L_WEBSITE}</th>
		<th>{L_SELECT}</th>
	</tr>
	<tr>
		<td colspan="7"><h2>{L_GROUP_MODERATOR}</h2></td>
	</tr>
	<tr>
		<td class="row1 three txtcenter">{MOD_PM_IMG}</td>
		<td class="row1 three txtcenter"
			onmouseover="this.style.backgroundColor='{T_TR_COLOR3}'; this.style.cursor='pointer'"
			onmouseout="this.style.backgroundColor=''"
			onclick="window.location.href='{U_MOD_VIEWPROFILE}'"><a href="{U_MOD_VIEWPROFILE}">{MOD_USERNAME}</a></td>
		<td class="row1 three txtcenter">{MOD_POSTS}</td>
		<td class="row1 three txtcenter">{MOD_FROM}</td>
		<td class="row1 three txtcenter">{MOD_EMAIL_IMG}</td>
		<td class="row1 three txtcenter">{MOD_WWW_IMG}</td>
		<td class="row1">&nbsp;</td>
	</tr>
	<tr>
		<td colspan="7"><h2>{L_GROUP_MEMBERS}</h2></td>
	</tr>
	<!-- BEGIN member_row -->
	<tr> 
		<td class="{member_row.ROW_CLASS} three txtcenter">{member_row.PM_IMG}</td>
		<td class="{member_row.ROW_CLASS} three txtcenter"
			onmouseover="this.style.backgroundColor='{T_TR_COLOR3}'; this.style.cursor='pointer'"
			onmouseout="this.style.backgroundColor=''"
			onclick="window.location.href='{member_row.U_VIEWPROFILE}'"><a href="{member_row.U_VIEWPROFILE}">{member_row.USERNAME}</a></td>
		<td class="{member_row.ROW_CLASS} three txtcenter">{member_row.POSTS}</td>
		<td class="{member_row.ROW_CLASS} three txtcenter">{member_row.FROM}</td>
		<td class="{member_row.ROW_CLASS} three txtcenter">{member_row.EMAIL_IMG}</td>
		<td class="{member_row.ROW_CLASS} three txtcenter">{member_row.WWW_IMG}</td>
		<td class="row3 three txtcenter"> 
		<!-- BEGIN switch_mod_option -->
			<input type="checkbox" class="checkbox" name="members[]" value="{member_row.USER_ID}" /> 
		<!-- END switch_mod_option -->
		</td>
	</tr>
	<!-- END member_row -->
	<!-- BEGIN switch_no_members -->
	<tr> 
		<td class="row1 pad60 txtcenter" colspan="7">{L_NO_MEMBERS}</td>
	</tr>
	<!-- END switch_no_members -->
	<!-- BEGIN switch_hidden_group -->
	<tr> 
		<td class="row1 pad60 txtcenter" colspan="7">{L_HIDDEN_MEMBERS}</td>
	</tr>
	<!-- END switch_hidden_group -->
	<!-- BEGIN switch_mod_option -->
	<tr>
		<td class="row3 pad4 txtright" colspan="7"><input type="submit" name="remove" value="{L_REMOVE_SELECTED}" class="button" /></td>
	</tr>
	<!-- END switch_mod_option -->
		{PENDING_USER_BOX}
</table>

<!-- BEGIN switch_mod_option -->
<div class="spacing"></div>

<table cellspacing="1">
	<tr>
		<td class="row3 pad4 txtright"><input type="text"  class="post postmedium" name="username" maxlength="50" />&nbsp;<input type="submit" name="add" value="{L_ADD_MEMBER}" class="button" />&nbsp;<input type="submit" name="usersubmit" value="{L_FIND_USERNAME}" class="button" onclick="window.open('{U_SEARCH_USER}', '_phpbbsearch', 'HEIGHT=250,resizable=yes,WIDTH=400');return false;" /></td>
	</tr>
</table>
<!-- END switch_mod_option -->

{S_HIDDEN_FIELDS}
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