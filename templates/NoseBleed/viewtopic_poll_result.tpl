<tr>
	<td class="row3 txtmiddle pad60" colspan="2"><span style="font-weight: bold">{POLL_QUESTION}</span><br /><br />
		<table cellspacing="1" style="margin: 0 auto">
			<!-- BEGIN poll_option -->
			<tr>
				<td class="txtcenter">{poll_option.POLL_OPTION_CAPTION}&nbsp;&nbsp;</td>
				</tr>
				<tr>
				<td align="center"><table cellspacing="0" style="width: 8px;">
					<tr>
						<td style="padding: 0; vertical-align: bottom;"><img src="templates/NoseBleed/images/vote_lcap.gif" style="width: 4px; height: 12px;" alt="" /></td>
						<td style="padding: 0; vertical-align: bottom;"><img src="{poll_option.POLL_OPTION_IMG}" style="width: {poll_option.POLL_OPTION_IMG_WIDTH}px; height: 12px;" alt="{poll_option.POLL_OPTION_PERCENT}" /></td>
						<td style="padding: 0; vertical-align: bottom;"><img src="templates/NoseBleed/images/vote_rcap.gif" style="width: 4px; height: 12px;" alt="" /></td>
					</tr>
				</table>&nbsp;&nbsp;[ {poll_option.POLL_OPTION_RESULT} ]&nbsp;&nbsp;{poll_option.POLL_OPTION_PERCENT}</td>
			</tr>
			<tr>
				<td>&nbsp;</td>
			</tr>
			<!-- END poll_option -->
			<tr>
				<td class="txtcenter"><br />{L_TOTAL_VOTES} : {TOTAL_VOTES}</td>
			</tr>
		</table></td>
</tr>