
<%@ page import="com.swd.Requistion" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'requistion.label', default: 'Requistion')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div id="show-requistion" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<dl class="dl-horizontal">
            <dt class="fieldcontain">
               <span id="approved-label" class="property-label"><g:message code="requistion.approved.label" default="Approved" /></span>
            </dt>
            <dd>
                <g:isApproved test="${fieldValue(bean: requistionInstance, field: "approved")}"></g:isApproved>
            </dd>
          
           <g:if test="${requistionInstance?.requistionDate}">
            <dt class="fieldcontain">
                 <span id="requistionDate-label" class="property-label"><g:message code="requistion.requistionDate.label" default="Requistion Date" /></span>
            </dt>
            <dd>
               <span class="property-value" aria-labelledby="requistionDate-label"><g:fieldValue bean="${requistionInstance}" field="requistionDate"/></span>
            </dd>
          </g:if>

           <g:if test="${requistionInstance?.returnDate}">
            <dt class="fieldcontain">
                 <span id="returnDate-label" class="property-label"><g:message code="requistion.returnDate.label" default="Return Date" /></span>
            </dt>
            <dd>
               <span class="property-value" aria-labelledby="returnDate-label"><g:fieldValue bean="${requistionInstance}" field="returnDate"/></span>
            </dd>
          </g:if>

          <g:if test="${requistionInstance?.borrower}">
            <dt class="fieldcontain">
                <span id="borrower-label" class="property-label"><g:message code="requistion.borrower.label" default="Borrower" /></span>
            </dt>
            <dd>
                <span class="property-value" aria-labelledby="borrower-label"><g:link controller="account" action="show" id="${requistionInstance?.borrower?.id}">${requistionInstance?.borrower?.name?.encodeAsHTML()}</g:link></span>
            </dd>
          </g:if>

          <g:if test="${requistionInstance?.endorser}">
            <dt class="fieldcontain">
               <span id="endorser-label" class="property-label"><g:message code="requistion.endorser.label" default="Endorser" /></span>
            </dt>
            <dd>
              <span class="property-value" aria-labelledby="endorser-label"><g:link controller="account" action="show" id="${requistionInstance?.endorser?.id}">${requistionInstance?.endorser?.name?.encodeAsHTML()}</g:link></span>
            </dd>
          </g:if>      

          <g:if test="${requistionInstance?.matchings}">
            <dt class="fieldcontain">
               <span id="matchings-label" class="property-label"><g:message code="requistion.matchings.label" default="Matchings" /></span>
            </dt>
            <dd>

              <table class="table table-striped table-hover">
                <thead>
                  <th><g:message code="matching.equipment.label" default="Equipment" /></th>
                  <th><g:message code="matching.amount.label" default="Amount" /></th>
                </thead>
                <tbody>
                  <g:if test="${requistionInstance?.id}">

                  <g:set var="matchings" value="${Requistion.get(requistionInstance.id).matchings}" />
                    <g:each var="matching" in="${matchings}">
                      <tr>
                        <td>${matching?.equipment?.title}</td>    
                        <td>${matching?.amount}</td>
                      </tr>
                    </g:each>
                  </g:if>       
                </tbody>
              </table>
            </dd>
          </g:if>

      
          </dt>


        </dl>
      
        <sec:ifAnyGranted roles="ROLE_ADMIN">
      
      %{-- ADMIN CAN CONFIRM APPORVED ONLY --}%

        <g:set var="isApproved" value="${requistionInstance?.approved.toString()}" />
            <g:link class="btn btn-info pull-right" action="isApproved" resource="${requistionInstance}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" params="[approved: true]"><g:message code="default.button.approved.label" default="Approved" /></g:link>
           
          <g:if test="${isApproved != 'false'}">
          <g:link class="btn btn-danger pull-right" action="isApproved" resource="${requistionInstance}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" params="[approved: false]"><g:message code="default.button.notApproved.label" default="Not Approved" /></g:link>
          </g:if> 



      </sec:ifAnyGranted>




			<g:form url="[resource:requistionInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="btn btn-warning edit" action="edit" resource="${requistionInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="btn btn-danger delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>


       
        
     