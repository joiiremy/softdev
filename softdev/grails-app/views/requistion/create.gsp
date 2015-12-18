<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'requistion.borrow.label', default: 'Requestion')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>
				<div id="create-requistion" class="content scaffold-create" role="main">
					<h3><g:message code="default.create.label" args="[entityName]" /></h3>
					<g:if test="${flash.message}">
				<div class="alert alert-success alert-dismissible" role="alert">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					${flash.message}
				</div>

			</g:if>
					<g:hasErrors bean="${requistionInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${requistionInstance}" var="error">
						<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
						</g:eachError>
					</ul>
					</g:hasErrors>
					<g:form url="[resource:requistionInstance, action:'save']" class="form-horizontal">
						<fieldset class="form">
							<g:render template="form"/>
						</fieldset>
						
					</g:form>
				</div>
	</body>
</html>
