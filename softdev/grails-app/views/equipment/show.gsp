
<%@ page import="com.swd.Equipment" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'equipment.label', default: 'Equipment')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>


	<div id="show-equipment" class="content scaffold-show" role="main">
		<h3><g:message code="default.show.label" args="[entityName]" /></h3>
		<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<dl class="dl-horizontal">
		<g:if test="${equipmentInstance?.title}">
		<dt class="fieldcontain">
			<span id="title-label" class="property-label"><g:message code="equipment.title.label" default="Title" /></span>
		</dt>
		<dd>
			<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${equipmentInstance}" field="title"/></span>

		</dd>
	</g:if>
	<g:if test="${equipmentInstance?.description}">
	<dt class="fieldcontain">
		<span id="description-label" class="property-label"><g:message code="equipment.description.label" default="Description" /></span>
	</dt>
	<dd>
		<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${equipmentInstance}" field="description"/></span>

	</dd>
</g:if>

<g:if test="${equipmentInstance?.amount}">
<dt class="fieldcontain">
	<span id="amount-label" class="property-label"><g:message code="equipment.amount.label" default="Amount" /></span>
</dt>
<dd>
	<span class="property-value" aria-labelledby="amount-label"><g:fieldValue bean="${equipmentInstance}" field="amount"/></span>
</dd>
</g:if>

<g:if test="${equipmentInstance?.barcode}">
<dt class="fieldcontain">
	<span id="barcode-label" class="property-label"><g:message code="equipment.barcode.label" default="Barcode" /></span>
</dt>
<dd>
	<span class="property-value" aria-labelledby="barcode-label"><g:fieldValue bean="${equipmentInstance}" field="barcode"/></span>
</dd>
</g:if>

<g:if test="${equipmentInstance?.price}">
<dt class="fieldcontain">
	<span id="price-label" class="property-label"><g:message code="equipment.price.label" default="Price" /></span>
</dt>
<dd>
	<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${equipmentInstance}" field="price"/></span>

</dd>
</g:if>

</dl>
<g:form url="[resource:equipmentInstance, action:'delete']" method="DELETE">
<fieldset class="buttons">
	<g:link class="btn btn-warning edit" action="edit" resource="${equipmentInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
	<g:actionSubmit class="btn btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
</fieldset>
</g:form>
</div>
</body>
</html>
