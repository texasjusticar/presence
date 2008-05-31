<tr>
	<td colspan="2"><h2>{L_ADD_A_POLL}</h2></td>
</tr>
<tr>
	<td class="row1 five" colspan="2">{L_ADD_POLL_EXPLAIN}</td>
</tr>
<tr>
	<td class="row1 one">{L_POLL_QUESTION}:</td>
	<td class="row2 two"><input type="text" name="poll_title" maxlength="255" class="post postbig" value="{POLL_TITLE}" /></td>
</tr>
<!-- BEGIN poll_option_rows -->
<tr>
	<td class="row1 one">{L_POLL_OPTION}:</td>
	<td class="row2 two"><input type="text" name="poll_option_text[{poll_option_rows.S_POLL_OPTION_NUM}]" class="post postbig" maxlength="255" value="{poll_option_rows.POLL_OPTION}" />&nbsp;<input type="submit" name="edit_poll_option" value="{L_UPDATE_OPTION}" class="button" /> <input type="submit" name="del_poll_option[{poll_option_rows.S_POLL_OPTION_NUM}]" value="{L_DELETE_OPTION}" class="button" /></td>
</tr>
<!-- END poll_option_rows -->
<tr>
	<td class="row1 one">{L_POLL_OPTION}:</td>
	<td class="row2 two"><input type="text" name="add_poll_option_text" maxlength="255" class="post postbig" value="{ADD_POLL_OPTION}" />&nbsp;<input type="submit" name="add_poll_option" value="{L_ADD_OPTION}" class="button" /></td>
</tr>
<tr>
	<td class="row1 one">{L_POLL_LENGTH}:</td>
	<td class="row2 two"><input type="text" name="poll_length" maxlength="3" class="post postmini" value="{POLL_LENGTH}" />&nbsp;{L_DAYS} &nbsp;{L_POLL_LENGTH_EXPLAIN}</td>
</tr>
<!-- BEGIN switch_poll_delete_toggle -->
<tr>
	<td class="row1 one">{L_POLL_DELETE}:</td>
	<td class="row2 two"><input type="checkbox" class="checkbox" name="poll_delete" /></td>
</tr>
<!-- END switch_poll_delete_toggle -->