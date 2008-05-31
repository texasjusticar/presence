<form method="post" action="{S_MODE_ACTION}">
<table cellspacing="1" class="memberlist">
	<tr class="toplines"> 
		<th>#</th>
		<th>{L_PM}</th>
		<th>{L_USERNAME}</th>
		<th>{L_EMAIL}</th>
		<th>{L_FROM}</th>
		<th>{L_JOINED}</th>
		<th>{L_POSTS}</th>
		<th>{L_WEBSITE}</th>
	</tr>
	<tr>
		<td colspan="8"><h2>{L_USERNAME}</h2></td>
	</tr>
	<!-- BEGIN memberrow -->
	<tr> 
		<td class="{memberrow.ROW_CLASS} one txtcenter">{memberrow.ROW_NUMBER}</td>
		<td class="{memberrow.ROW_CLASS} one txtcenter">{memberrow.PM_IMG}</td>
		<td class="{memberrow.ROW_CLASS} one txtcenter"
			onmouseover="this.style.backgroundColor='{T_TR_COLOR3}'; this.style.cursor='pointer'"
			onmouseout="this.style.backgroundColor=''"
			onclick="window.location.href='{memberrow.U_VIEWPROFILE}'"><a href="{memberrow.U_VIEWPROFILE}">{memberrow.USERNAME}</a></td>
		<td class="{memberrow.ROW_CLASS} one txtcenter">{memberrow.EMAIL_IMG}</td>
		<td class="{memberrow.ROW_CLASS} one txtcenter">{memberrow.FROM}</td>
		<td class="{memberrow.ROW_CLASS} one txtcenter">{memberrow.JOINED}</td>
		<td class="{memberrow.ROW_CLASS} one txtcenter">{memberrow.POSTS}</td>
		<td class="{memberrow.ROW_CLASS} one txtcenter">{memberrow.WWW_IMG}</td>
	</tr>
	<!-- END memberrow -->
</table>
  
<table cellspacing="1">
	  <tr> 
		<td class="row3 pad4 txtright">{L_SELECT_SORT_METHOD}:&nbsp;{S_MODE_SELECT}&nbsp;&nbsp;{L_ORDER}:&nbsp;{S_ORDER_SELECT}&nbsp;<input type="submit" name="submit" value="{L_SUBMIT}" class="button" /></td>
	</tr>
</table>
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