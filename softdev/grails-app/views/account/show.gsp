
<%@ page import="com.swd.Account" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>

		<div id="show-account" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="alert alert-success alert-dismissible" role="alert">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					${flash.message}
				</div>
			</g:if>
			<ol class="property-list account"><br>
			
				<g:if test="${accountInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="account.username.label" default="รายชื่อผู้ใช้  : " /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${accountInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="account.name.label" default="ชื่อ-สกุล  : " /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${accountInstance}" field="name"/></span>
					
				</li>
				</g:if>

				<g:if test="${accountInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="account.password.label" default="รหัสผ่าน  : " /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${accountInstance}" field="password"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="account.accountExpired.label" default="บัญชีหมดอายุ  : " /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${accountInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				
			
				<g:if test="${accountInstance?.approvedRequistions}">
				<li class="fieldcontain">
					<span id="approvedRequistions-label" class="property-label"><g:message code="account.approvedRequistions.label" default="Approved Requistions" /></span>
					
						<g:each in="${accountInstance.approvedRequistions}" var="a">
						<span class="property-value" aria-labelledby="approvedRequistions-label"><g:link controller="requistion" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.barcode}">
				<li class="fieldcontain">
					<span id="barcode-label" class="property-label"><g:message code="account.barcode.label" default="Barcode  : " /></span>
					
						<span class="property-value" aria-labelledby="barcode-label"><g:fieldValue bean="${accountInstance}" field="barcode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${accountInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="account.enabled.label" default="อนุมัติ  : " /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${accountInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				
				<g:if test="${accountInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="account.accountLocked.label" default="บัญชีที่โดนบล็อค  : " /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${accountInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${com.swd.AccountRole?.findByAccount(accountInstance)}">
				<li class="fieldcontain">
					<span id="role-label" class="property-label"><g:message code="account.role.label" default="บทบาท  : " /></span>
					
						<span class="property-value" aria-labelledby="role-label">${com.swd.Role?.findByAuthority(com.swd.AccountRole?.findByAccount(accountInstance).role)}</span>
					
				</li>
				</g:if>
				%{-- <g:if test="${accountInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="account.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${accountInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if> --}%
			
				%{-- <g:if test="${accountInstance?.requistions}">
				<li class="fieldcontain">
					<span id="requistions-label" class="property-label"><g:message code="account.requistions.label" default="Requistions" /></span>
					
						<g:each in="${accountInstance.requistions}" var="r">
						<span class="property-value" aria-labelledby="requistions-label"><g:link controller="requistion" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if> --}%
			
			</ol><br>
			
						
							<g:form url="[resource:accountInstance, action:'delete']" method="DELETE">
							<g:link class="btn btn-info pull-right" action="index" id="${accountInstance.id}">${message(code: 'กลับสู่หน้าจัดการผู้ใช้', default: 'กลับสู่หน้าจัดการผู้ใช้')}
							</g:link>
							<g:link class="btn btn-warning" action="edit" id="${accountInstance.id}">${message(code: 'default.button.edit.label', default: 'Edit')}
							</g:link>
							<g:actionSubmit class="btn btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
							</g:form>
							
				
		</div>
	</body>
</html>
