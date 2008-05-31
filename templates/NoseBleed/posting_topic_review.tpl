<!-- BEGIN switch_inline_mode -->
<table cellspacing="1">
	<tr>
		<td colspan="2"><h2>{L_TOPIC_REVIEW}</h2></td>
	</tr>
	<tr>
		<td class="row3" style="padding: 5px;">
			<iframe src="{U_REVIEW_TOPIC}" frameborder="0" style="width: 100%; height: 200px;">
			<!-- END switch_inline_mode -->
			<table cellspacing="1" class="posting_body">
				<tr> 
					<td colspan="2" style="height: 6px;"></td>
				</tr>
				<!-- BEGIN postrow -->
				<tr>
					<td class="{postrow.ROW_CLASS} eight"><a id="{postrow.U_POST_ID}"></a>{postrow.POSTER_NAME}</td>
					<td class="{postrow.ROW_CLASS} nine"><img src="{postrow.MINI_POST_IMG}" style="width: 12px; height: 9px; border: 0;" alt="" />
					{L_POSTED}: {postrow.POST_DATE}<br />
					<div class="hr"><hr /></div>
					<div>{postrow.MESSAGE}</div></td>
				</tr>
				<tr> 
					<td colspan="2" style="height: 7px;"></td>
				</tr>
				<!-- END postrow -->
			</table>
			<!-- BEGIN switch_inline_mode -->
			</iframe>
		</td>
	</tr>
</table>
<!-- END switch_inline_mode -->