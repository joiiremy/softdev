<%@ page import="com.swd.Account" %>



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

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="account.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${accountInstance?.name}"/>

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

<div class="fieldcontain ${hasErrors(bean: accountInstance, field: 'role', 'error')} required">
	<label for="role">
		<g:message code="account.role.label" default="Role" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="role" required="" value="${accountInstance?.role}"/>

</div>

