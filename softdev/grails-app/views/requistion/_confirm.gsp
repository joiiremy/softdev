<%@ page import="com.swd.Requistion" %>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">
          ${message(code: 'requistion.confirm.title.label', default: 'Confirm')}</h4>
      </div>

      <div class="modal-body">

        <dl class="dl-horizontal">
            <dt class="fieldcontain">
               <span id="approved-label" class="property-label"><g:message code="requistion.approved.label" default="Approved" /></span>
            </dt>
            <dd>
                <span class="property-value" aria-labelledby="approved-label"><g:formatBoolean boolean="${requistionInstance?.approved}" /></span>
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
                <span class="property-value" aria-labelledby="borrower-label"><g:link controller="account" action="show" id="${requistionInstance?.borrower?.id}">${requistionInstance?.borrower?.encodeAsHTML()}</g:link></span>
            </dd>
          </g:if>

          <g:if test="${requistionInstance?.endorser}">
            <dt class="fieldcontain">
               <span id="endorser-label" class="property-label"><g:message code="requistion.endorser.label" default="Endorser" /></span>
            </dt>
            <dd>
              <span class="property-value" aria-labelledby="endorser-label"><g:link controller="account" action="show" id="${requistionInstance?.endorser?.id}">${requistionInstance?.endorser?.encodeAsHTML()}</g:link></span>
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
          
       

        </dl>
        


      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-lg btn-default" data-dismiss="modal">Close</button>

          <g:if test="${params.action == 'edit'}">
             <g:actionSubmit class="save btn btn-info btn-lg" action="update " value="${message(code: 'default.button.update.label', default: 'Update')}" />
          </g:if>
          <g:elseif test="${params.action== 'create'}">
               <g:submitButton name="create" class="save btn btn-lg pull-right" value="${message(code: 'default.button.create.label', default: 'Create')}" />
          </g:elseif>

      </div>
    </div>
  </div>
</div>