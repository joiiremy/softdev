
<%@ page import="com.swd.Matching" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'matching.label', default: 'Matching')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-matching" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<a href="#show-matching" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-matching" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list matching">
			
				<g:if test="${matchingInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="matching.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${matchingInstance}" field="amount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchingInstance?.equipment}">
				<li class="fieldcontain">
					<span id="equipment-label" class="property-label"><g:message code="matching.equipment.label" default="Equipment" /></span>
					
						<span class="property-value" aria-labelledby="equipment-label"><g:link controller="equipment" action="show" id="${matchingInstance?.equipment?.id}">${matchingInstance?.equipment?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${matchingInstance?.requistion}">
				<li class="fieldcontain">
					<span id="requistion-label" class="property-label"><g:message code="matching.requistion.label" default="Requistion" /></span>
					
						<span class="property-value" aria-labelledby="requistion-label"><g:link controller="requistion" action="show" id="${matchingInstance?.requistion?.id}">${matchingInstance?.requistion?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:matchingInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${matchingInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
