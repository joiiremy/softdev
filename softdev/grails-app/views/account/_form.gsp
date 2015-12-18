<%@ page import="com.swd.Account" %>

<div class="form-group form-group fieldcontain ${hasErrors(bean: accountInstance, field: 'username', 'error')} required">
	<label class="col-sm-2 control-label" for="username">
		<g:message code="account.username.label" default="รายชื่อผู้ใช้" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="username" required="" value="${accountInstance?.username}"/>
	</div>
</div>


<div class="form-group form-group fieldcontain ${hasErrors(bean: accountInstance, field: 'name', 'error')} required">
	<label class="col-sm-2 control-label" for="name">
		<g:message code="account.name.label" default="ชื่อ-สกุล" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="name" required="" value="${accountInstance?.name}"/>
	</div>
</div>



<div class="form-group form-group fieldcontain ${hasErrors(bean: accountInstance, field: 'password', 'error')} required">
	<label class="col-sm-2 control-label" for="password">
		<g:message code="account.password.label" default="รหัสผ่าน" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="password" required="" value="${accountInstance?.password}"/>
	</div>
</div>


<div class="form-group form-group fieldcontain ${hasErrors(bean: accountInstance, field: 'barcode', 'error')} required">
	<label class="col-sm-2 control-label" for="barcode">
		<g:message code="account.barcode.label" default="Barcode" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" name="barcode" required="" value="${accountInstance?.barcode}"/>
	</div>
</div>




<div class="form-group fieldcontain ${hasErrors(bean: accountInstance, field: 'accountLocked', 'error')} required">
	<label class="col-sm-2 control-label" for="accountLocked">
		<g:message code="account.accountLocked.label" default="สถานะผู้ใช้" />
		
	</label>
	<div class="col-sm-10">
		<g:select id="role" name="roleId" from="${com.swd.Role.list()}" optionValue="${title}" 	optionKey="id" value="${roleId}" class="many-to-one chosen-select" style="width:100%;"/>
	</div>
</div>

<div class="form-group form-group fieldcontain ${hasErrors(bean: accountInstance, field: 'accountLocked', 'error')} required">
	<label class="col-sm-2 control-label" for="accountLocked">
		<g:message code="account.accountLocked.label" default="บัญชีที่โดนบล็อค" />
	</label>
 	<div class="col-sm-10">
		<g:checkBox name="accountLocked" value="${accountInstance?.accountLocked}" />
	</div>
</div>

<script type="text/javascript">
$(document).ready( function(){
	$(".chosen-select").chosen({no_results_text: "Oops, nothing found!"});     
});
</script>



