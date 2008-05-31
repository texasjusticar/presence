<tr>
	<td colspan="2"><h2>{L_PENDING_MEMBERS}</h2></td>
</tr>
<!-- BEGIN pending_members_row -->
<tr> 
	<td class="{pending_members_row.ROW_CLASS} three txtcenter">{pending_members_row.PM_IMG}</td>
	<td class="{pending_members_row.ROW_CLASS} three txtcenter"
		onmouseover="this.style.backgroundColor='{T_TR_COLOR3}'; this.style.cursor='pointer'"
		onmouseout="this.style.backgroundColor=''"
		onclick="window.location.href='{pending_members_row.U_VIEWPROFILE}'"><a href="{pending_members_row.U_VIEWPROFILE}">{pending_members_row.USERNAME}</a></td>
	<td class="{pending_members_row.ROW_CLASS} three txtcenter">{pending_members_row.POSTS}</td>
	<td class="{pending_members_row.ROW_CLASS} three txtcenter">{pending_members_row.FROM}</td>
	<td class="{pending_members_row.ROW_CLASS} three txtcenter">{pending_members_row.EMAIL_IMG}</td>
	<td class="{pending_members_row.ROW_CLASS} three txtcenter">{pending_members_row.WWW_IMG}</td>
	<td class="row3 three txtcenter"><input type="checkbox" class="checkbox" name="pending_members[]" value="{pending_members_row.USER_ID}" checked="checked" /></td>
</tr>
<!-- END pending_members_row -->
<tr> 
	<td class="row3 pad4 txtright" colspan="7"><input type="submit" name="approve" value="{L_APPROVE_SELECTED}" class="button" />&nbsp;<input type="submit" name="deny" value="{L_DENY_SELECTED}" class="button" /></td>
</tr>