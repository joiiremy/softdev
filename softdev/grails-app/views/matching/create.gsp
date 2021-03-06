<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
%{-- 		<g:set var="entityName" value="${message(code: 'matching.label', default: 'Matching')}" /> --}%
		<title><g:message code="matching.add.equipment.label" default="Add Equipment"/></title>
	</head>
	<body>
		<div id="matching.add.equipment.label" class="content scaffold-create" role="main">
			<h3><g:message code="matching.add.equipment.label"default="Add Equipment" /></h3>

			<g:if test="${flash.message}">
			<div class="alert alert-danger alert-dismissible" role="status">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					${flash.message}
				</div>
			</g:if>

			<g:hasErrors bean="${matchingInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${matchingInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:matchingInstance, action:'save']" class="form-horizontal">
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitButton name="create" class="save btn btn-success btn-lg pull-right" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
