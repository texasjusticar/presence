<form method="post" name="search" action="{S_SEARCH_ACTION}">
<table cellspacing="0" style="margin-top: 10px;">
	<tr>
		<td class="row1 txtmiddle" style="padding: 30px 20px;">{L_SEARCH_USERNAME}: <input type="text" name="search_username" value="{USERNAME}" class="post postsmall" /> <input type="submit" name="search" value="{L_SEARCH}" class="button" /><br /><br />{L_SEARCH_EXPLAIN}
		<!-- BEGIN switch_select_name -->
		<br /><br />{L_UPDATE_USERNAME}<br /><select name="username_list">{S_USERNAME_OPTIONS}</select>&nbsp; <input type="submit" class="button" onClick="refresh_username(this.form.username_list.options[this.form.username_list.selectedIndex].value);return false;" name="use" value="{L_SELECT}" />
		<!-- END switch_select_name -->
		<br /><br /><br />
		<a href="javascript:window.close();">{L_CLOSE_WINDOW}</a><br /></td>
	</tr>
</table>
</form>
