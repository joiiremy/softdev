
<%@ page import="com.swd.Equipment" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'equipment.label', default: 'Equipment')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
		<div id="list-equipment" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
			<thead>
					<tr>
						<g:sortableColumn property="barcode" title="${message(code: 'equipment.barcode.label', default: 'Barcode')}" />
					
						<g:sortableColumn property="title" title="${message(code: 'equipment.title.label', default: 'Title')}" />
					
					
						<g:sortableColumn property="amount" title="${message(code: 'equipment.amount.label', default: 'Amount')}" />
					
					
						<g:sortableColumn property="price" title="${message(code: 'equipment.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'equipment.description.label', default: 'Description')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${equipmentInstanceList}" status="i" var="equipmentInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						<td>${fieldValue(bean: equipmentInstance, field: "barcode")}</td>
					
						<td>${fieldValue(bean: equipmentInstance, field: "title")}</td>
					
					
						<td>${fieldValue(bean: equipmentInstance, field: "amount")}</td>
					
						<td>${fieldValue(bean: equipmentInstance, field: "price")}</td>
					
						<td><g:link action="show" id="${equipmentInstance.id}">${fieldValue(bean: equipmentInstance, field: "description")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${equipmentInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
