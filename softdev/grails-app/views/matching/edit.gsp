<%@ page import="com.swd.Matching" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'matching.label', default: 'Matching')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="edit-matching" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${matchingInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${matchingInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:matchingInstance]" method="PUT" class="form-horizontal" >
				<g:hiddenField name="version" value="${matchingInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>

				<fieldset class="buttons">
					<g:actionSubmit class="save btn btn-warning btn-lg" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:actionSubmit class="save btn btn-danger btn-lg" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" id="matchingInstance?.id" />
				%{-- 	<button onClick="deleteItem(${matchingInstance?.id})">
						<g:message code="default.button.delete.label" default="Delete" />
					</button> --}%
					
%{-- 
					<g:form url="[resource:matchingInstance, action:'delete']" method="DELETE" >

						<g:actionSubmit class="delete btn btn-danger btn-lg pull-right" action="delete" v />
					</g:form> --}%
				</fieldset>
				
			</g:form>
		
			
		</div>
	</body>
</html>
