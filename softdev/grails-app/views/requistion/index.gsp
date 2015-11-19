
<%@ page import="com.swd.Requistion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'requistion.label', default: 'Requistion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

	</head>
	<body>
		<g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
		<div id="list-requistion" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table class="table table-striped">
			<thead>
					<tr>
						<g:sortableColumn property="requistionDate" title="${message(code: 'requistion.requistionDate.label', default: 'Requistion Date')}" />
					
						<g:sortableColumn property="returnDate" title="${message(code: 'requistion.returnDate.label', default: 'Return Date')}" />
					
						<th><g:message code="requistion.borrower.label" default="Borrower" /></th>
					
						<th><g:message code="requistion.endorser.label" default="Endorser" /></th>
					
						<g:sortableColumn property="approved" title="${message(code: 'requistion.approved.label', default: 'Approved')}" />
					
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${requistionInstanceList}" status="i" var="requistionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: requistionInstance, field: "requistionDate")}</td>
					
						<td>${fieldValue(bean: requistionInstance, field: "returnDate")}</td>
						<td>${fieldValue(bean: requistionInstance, field: "borrower.name")}</td>
					
						<td>${fieldValue(bean: requistionInstance, field: "endorser")}</td>
					
						<td>
							%{-- <g:link action="show" id="${requistionInstance.id}">${fieldValue(bean: requistionInstance, field: "approved")}</g:link> --}%
							%{-- ${requistionInstance.approved.toString() == 'null'} --}%
							<g:link action="show" id="${requistionInstance.id}">
								<g:isApproved test="${fieldValue(bean: requistionInstance, field: "approved")}"></g:isApproved>
							</g:link>
						</td>
					
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${requistionInstanceCount ?: 0}" />
			</div>
		</div>
		
	</body>
</html>
