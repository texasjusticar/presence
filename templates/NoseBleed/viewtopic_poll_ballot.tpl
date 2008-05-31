<form method="POST" action="{S_POLL_ACTION}">
<tr>
	<td class="row3 txtmiddle pad60" colspan="2"><span style="font-weight: bold">{POLL_QUESTION}</span><br /><br />
		<table cellspacing="1">
			<!-- BEGIN poll_option -->
			<tr>
				<td class="txtright"><input type="radio" class="checkbox" name="vote_id" value="{poll_option.POLL_OPTION_ID}" />&nbsp;&nbsp;</td>
				<td class="txtleft">{poll_option.POLL_OPTION_CAPTION}</td>
			</tr>
			<tr>
				<td colspan="2">&nbsp;</td>
			</tr>
			<!-- END poll_option -->
			<tr>
				<td colspan="2" class="txtcenter"><br /><br />{S_HIDDEN_FIELDS}<input type="submit" name="submit" value="{L_SUBMIT_VOTE}" class="button" />&nbsp;<input type="button" class="button"  name="viewresults" value="{L_VIEW_RESULTS}" onclick="window.location.href='{U_VIEW_RESULTS}'" /></td>
			</tr>
		</table></td>
</tr>
</form>