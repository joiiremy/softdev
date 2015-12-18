<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'equipment.label', default: 'อุปกรณ์/สินค้า')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="create-equipment" class="content scaffold-create" role="main">
			<h3><g:message code="default.create.label" args="[entityName]" /></h3>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${equipmentInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${equipmentInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form  url="[resource:equipmentInstance, action:'save']" class="form-horizontal">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset align="right" class="buttons">


					<g:submitButton name="create" class="btn btn-lg btn-success save"  value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
