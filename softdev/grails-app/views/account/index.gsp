
<%@ page import="com.swd.Account" %>
<%@ page import="com.swd.AccountRole" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'account.label', default: 'Account')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div>
			<div class="col-md-10">
				<h3><g:message code="default.list.label" args="[entityName]"/></h3>
			</div>
			<div class="col-md-2">
				<h3><g:link class="btn btn-info" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link>
				</h3>
			</div>
		</div>
		<div>
			<g:if test="${flash.message}">
				<div class="alert alert-success alert-dismissible" role="alert">
					<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					${flash.message}
				</div>
			</g:if>
		</div>
		<div id="list-account" class="content scaffold-list" role="main">
			

			<table class="table table-striped">
			<thead>
					<tr>
					
						<g:sortableColumn property="username" title="${message(code: 'account.username.label', default: 'Username')}" />
						
						<g:sortableColumn property="name" title="${message(code: 'account.name.label', default: 'Name')}" />
						
						<g:sortableColumn property="barcode" title="${message(code: 'account.barcode.label', default: 'Barcode')}" />
						
						<g:sortableColumn property="barcode" title="${message(code: 'account.role.label', default: 'Role')}" />
						
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${accountInstanceList}" status="i" var="accountInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${accountInstance.id}">${fieldValue(bean: accountInstance, field: "username")}</g:link></td>
					
						<td>${fieldValue(bean: accountInstance, field: "name")}</td>

						<td>${fieldValue(bean: accountInstance, field: "barcode")}</td>
						
						<td>${AccountRole.findAllByAccount(accountInstance).role[0]}</td>
						
						<td >
						<div class="pull-right">
							<g:form url="[resource:accountInstance, action:'delete']" method="DELETE">
							<g:link class="btn btn-warning" action="edit" id="${accountInstance.id}">${message(code: 'default.button.edit.label', default: 'Edit')}
							</g:link>
							<g:actionSubmit class="btn btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
							</g:form>
						</div>		
					</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div align="center">
				<div class="pagination">
					<g:paginate total="${accountInstanceCount ?: 0}" />
				</div>
			</div>
		</div>
	</body>
</html>
