<%@ page import="com.swd.Requistion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'requistion.borrow.label', default: 'Requistion')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="edit-requistion" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${requistionInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${requistionInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:requistionInstance, action:'update']" method="PUT" class="form-horizontal">
				<g:hiddenField name="version" value="${requistionInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				
			</g:form>
		</div>
	</body>
</html>
