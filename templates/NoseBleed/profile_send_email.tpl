<script language="JavaScript" type="text/javascript">
<!--
function checkForm(formObj) {

	formErrors = false;    

	if (formObj.message.value.length < 2) {
		formErrors = "{L_EMPTY_MESSAGE_EMAIL}";
	}
	else if ( formObj.subject.value.length < 2)
	{
		formErrors = "{L_EMPTY_SUBJECT_EMAIL}";
	}

	if (formErrors) {
		alert(formErrors);
		return false;
	}
}
//-->
</script>

<form action="{S_POST_ACTION}" method="post" name="post" onSubmit="return checkForm(this)">
<table cellspacing="1" class="posting_body">
	<tr class="toplines"> 
		<th colspan="2">{L_SEND_EMAIL_MSG}</th>
	</tr>
	<tr>
		<td colspan="2"><h2>{L_SEND_EMAIL_MSG}</h2></td>
	</tr>
	{ERROR_BOX} 
	<tr> 
		<td class="row1 one">{L_RECIPIENT}:</td>
		<td class="row2 two">{USERNAME}</td>
	</tr>
	<tr> 
		<td class="row1 one">{L_SUBJECT}:</td>
		<td class="row2 two"><input type="text" name="subject" maxlength="100" tabindex="2" class="post postbiggest" value="{SUBJECT}" /></td>
	</tr>
	<tr> 
		<td class="row1 one txttop">{L_MESSAGE_BODY}<br />{L_MESSAGE_BODY_DESC}</td>
		<td class="row2 two"><textarea name="message" rows="25" cols="40" wrap="virtual" tabindex="3" class="post postbiggest">{MESSAGE}</textarea></td>
	</tr>
	<tr> 
		<td class="row1 one">{L_OPTIONS}:</td>
		<td class="row2 two"><input type="checkbox" class="checkbox" name="cc_email"  value="1" checked="checked" />&nbsp;{L_CC_EMAIL}</td>
	</tr>
	<tr>
		<td colspan="2" class="row3 pad4 txtcenter">{S_HIDDEN_FIELDS}<input type="submit" tabindex="6" name="submit" class="button" value="{L_SEND_EMAIL}" /></td>
	</tr>
</table>
</form>

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