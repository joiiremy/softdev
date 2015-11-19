
<%@ page import="com.swd.Equipment" %>
<%@ page import="com.swd.Matching" %>
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'equipment.label', default: 'Equipment')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
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

				<g:sortableColumn property="total" title="${message(code: 'equipment.total.label', default: 'Total')}" />

				<g:sortableColumn property="price" title="${message(code: 'equipment.price.label', default: 'Price')}" />

				<g:sortableColumn property="description" title="${message(code: 'equipment.description.label', default: 'Description')}" />

				<g:sortableColumn property=" " title=" "/>



			</tr>
		</thead>
		<tbody>
			<g:each in="${equipmentInstanceList}" status="i" var="equipmentInstance">
			<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
				<td>${fieldValue(bean: equipmentInstance, field: "barcode")}</td>

				<td>${fieldValue(bean: equipmentInstance, field: "title")}</td>

				<td>${fieldValue(bean: equipmentInstance, field: "amount")}</td>

				<td>
			<g:set var="amountOfEq" value="${equipmentLists.find{it.id == equipmentInstance.id}?.amount}" />	
					${equipmentInstance.amount - (amountOfEq?:0)} 

				</td>

				<td>${fieldValue(bean: equipmentInstance, field: "price")}</td>

				<td>${fieldValue(bean: equipmentInstance, field: "description")}</td>
				<td >
					<div class="pull-right">
						<g:form url="[resource:equipmentInstance, action:'delete']" method="DELETE">
						<g:link class="btn btn-warning" action="edit" id="${equipmentInstance.id}">Edit
						</g:link>
						<g:actionSubmit class="btn btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</g:form>
					</div>		
				</td>
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
