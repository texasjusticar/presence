<table cellspacing="1">
	<tr class="toplines"> 
		<th>{L_FAQ_TITLE}</th>
	</tr>
	<tr>
		<td><h2>{L_FAQ_TITLE}</h2></td>
	</tr>
	<tr> 
		<td class="row1 pad25">
			<!-- BEGIN faq_block_link -->
			<span style="font-weight: bold;">{faq_block_link.BLOCK_TITLE}</span><br />
			<!-- BEGIN faq_row_link -->
			<a href="{faq_block_link.faq_row_link.U_FAQ_LINK}">{faq_block_link.faq_row_link.FAQ_LINK}</a><br />
			<!-- END faq_row_link -->
			<br />
			<!-- END faq_block_link -->
		</td>
	</tr>
	<!-- BEGIN faq_block -->
	<tr>
		<td colspan="2"><h2>{faq_block.BLOCK_TITLE}</h2></td>
	</tr>
	<!-- BEGIN faq_row -->
	<tr> 
		<td class="{faq_block.faq_row.ROW_CLASS} pad25"><a id="{faq_block.faq_row.U_FAQ_ID}"></a><span style="font-weight: bold;">{faq_block.faq_row.FAQ_QUESTION}</span><br />{faq_block.faq_row.FAQ_ANSWER}<br /><a href="#top">{L_BACK_TO_TOP}</a></td>
	</tr>
	<!-- END faq_row -->
	<!-- END faq_block -->
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