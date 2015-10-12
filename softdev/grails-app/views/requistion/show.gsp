
<%@ page import="com.swd.Requistion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'requistion.label', default: 'Requistion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-requistion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-requistion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list requistion">
			
				<g:if test="${requistionInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="requistion.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${requistionInstance}" field="amount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${requistionInstance?.approved}">
				<li class="fieldcontain">
					<span id="approved-label" class="property-label"><g:message code="requistion.approved.label" default="Approved" /></span>
					
						<span class="property-value" aria-labelledby="approved-label"><g:formatBoolean boolean="${requistionInstance?.approved}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${requistionInstance?.borrower}">
				<li class="fieldcontain">
					<span id="borrower-label" class="property-label"><g:message code="requistion.borrower.label" default="Borrower" /></span>
					
						<span class="property-value" aria-labelledby="borrower-label"><g:link controller="account" action="show" id="${requistionInstance?.borrower?.id}">${requistionInstance?.borrower?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${requistionInstance?.endorser}">
				<li class="fieldcontain">
					<span id="endorser-label" class="property-label"><g:message code="requistion.endorser.label" default="Endorser" /></span>
					
						<span class="property-value" aria-labelledby="endorser-label"><g:link controller="account" action="show" id="${requistionInstance?.endorser?.id}">${requistionInstance?.endorser?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${requistionInstance?.equipments}">
				<li class="fieldcontain">
					<span id="equipments-label" class="property-label"><g:message code="requistion.equipments.label" default="Equipments" /></span>
					
						<g:each in="${requistionInstance.equipments}" var="e">
						<span class="property-value" aria-labelledby="equipments-label"><g:link controller="equipment" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${requistionInstance?.requistionDate}">
				<li class="fieldcontain">
					<span id="requistionDate-label" class="property-label"><g:message code="requistion.requistionDate.label" default="Requistion Date" /></span>
					
						<span class="property-value" aria-labelledby="requistionDate-label"><g:fieldValue bean="${requistionInstance}" field="requistionDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${requistionInstance?.returnDate}">
				<li class="fieldcontain">
					<span id="returnDate-label" class="property-label"><g:message code="requistion.returnDate.label" default="Return Date" /></span>
					
						<span class="property-value" aria-labelledby="returnDate-label"><g:fieldValue bean="${requistionInstance}" field="returnDate"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:requistionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${requistionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
