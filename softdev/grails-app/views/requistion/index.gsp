
<%@ page import="com.swd.Requistion" %>
<%@ page import="com.swd.Account" %>

<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'requistion.label', default: 'Requistion')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>

	</head>

	<body>
		<script type="text/javascript">
		$( document ).ready(function() {
  			$(".chosen-select").chosen({no_results_text: "Oops, nothing found!"}); 
		});	
		</script>

		<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
		</g:if>
		<div id="list-requistion" class="content scaffold-list" role="main">
			<div class="col-md-6">
				<h3><g:message code="default.list.label" args="[entityName]" /></h3>
			</div>
			<div class="col-md-6">
				<h3 style="font-size:100%;font-weight: bold;">
					<g:form >
					<g:select class="panel-body chosen-select many-to-one" id="borrower" name="j_username" from="${com.swd.AccountRole.list().findAll{it.role.authority == 'ROLE_USER'}.account}" optionKey="id" optionValue="name" required="" style="width:30%;" value="${id}" />
					&emsp;
					<g:checkBox name="notreturn" value="${notreturn}"/> รายการที่ยังไม่คืน

						<g:actionSubmit value="Search" action="index" class="btn btn-info"/>
						<g:link class="btn btn-warning" action="index"  params="[j_username: '',notreturn:'']">
				        	Clear
				       	</g:link>
						
					</g:form>
				</h3>
			</div>
         
			<table class="table table-striped">
			<thead>
					<tr>
						<g:sortableColumn property="requistionDate" title="${message(code: 'requistion.requistionDate.label', default: 'Requistion Date')}" />
					
						<g:sortableColumn property="returnDate" title="${message(code: 'requistion.returnDate.label', default: 'Return Date')}" />
					
						<th><g:message code="requistion.borrower.label" default="Borrower" /></th>
					
						<th><g:message code="requistion.endorser.label" default="Endorser" /></th>
					
						<g:sortableColumn property="approved" title="${message(code: 'requistion.approved.label', default: 'Approved')}" />

						<th><g:message code="requistion.isReturn.label" default="Return" /></th>


					
					
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

						<td>
							<g:link action="show" id="${requistionInstance.id}">
								<g:isReturn test="${fieldValue(bean: requistionInstance, field: "isReturn")}"></g:isReturn>
							</g:link>

							</td>

						%{-- <td>${fieldValue(bean: requistionInstance, field: "isReturn")}</td> --}%
					
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div align="center">
				<div class="pagination">
					<g:paginate total="${requistionInstanceCount ?: 0}" />
				</div>
			</div>
		</div>
		
	</body>
</html>
