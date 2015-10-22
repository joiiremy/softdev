<%@ page import="com.swd.Account" %>



<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="account.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${accountInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="account.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${accountInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="account.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${accountInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="account.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${accountInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'approvedRequistion', 'error')} ">
	<label for="approvedRequistion">
		<g:message code="account.approvedRequistion.label" default="Approved Requistion" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${accountInstance?.approvedRequistion?}" var="a">
    <li><g:link controller="requistion" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="requistion" action="create" params="['account.id': accountInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'requistion.label', default: 'Requistion')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'barcode', 'error')} required">
	<label for="barcode">
		<g:message code="account.barcode.label" default="Barcode" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="barcode" required="" value="${accountInstance?.barcode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="account.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${accountInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="account.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${accountInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="account.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${accountInstance?.passwordExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'requistions', 'error')} ">
	<label for="requistions">
		<g:message code="account.requistions.label" default="Requistions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${accountInstance?.requistions?}" var="r">
    <li><g:link controller="requistion" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="requistion" action="create" params="['account.id': accountInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'requistion.label', default: 'Requistion')])}</g:link>
</li>
</ul>


</div>

