
<%@ page import="com.swd.Equipment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'equipment.label', default: 'Equipment')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-equipment" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-equipment" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list equipment">
			
				<g:if test="${equipmentInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="equipment.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${equipmentInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipmentInstance?.amount}">
				<li class="fieldcontain">
					<span id="amount-label" class="property-label"><g:message code="equipment.amount.label" default="Amount" /></span>
					
						<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${equipmentInstance}" field="amount"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipmentInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="equipment.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${equipmentInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipmentInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="equipment.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${equipmentInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipmentInstance?.total}">
				<li class="fieldcontain">
					<span id="total-label" class="property-label"><g:message code="equipment.total.label" default="Total" /></span>
					
						<span class="property-value" aria-labelledby="total-label"><g:fieldValue bean="${equipmentInstance}" field="total"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:equipmentInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${equipmentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
