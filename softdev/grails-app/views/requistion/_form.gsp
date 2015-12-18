<%@ page import="com.swd.Requistion" %>
<%@ page import="com.swd.Equipment" %>
<%@ page import="com.swd.Account" %>
<%@ page import="org.joda.time.LocalDate" %>
<%@ page import="grails.converters.JSON" %>
<asset:javascript src="jquery.metadata.js"/>
<asset:javascript src="jquery.ui.min.js"/>
<asset:javascript src="jquery.ui.writetable.js"/>


<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'borrower', 'error')} required">
	<label class="col-sm-2 control-label" for="borrower">
		<g:message code="requistion.borrower.label" default="Borrower" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<sec:ifAnyGranted roles="ROLE_USER">
		<g:if test="${account?.id}">
			${account.name}
			<g:hiddenField name="borrower.id" value="${account.id}" />
		</g:if>
		<g:elseif test="${requistionInstance?.borrower?.id}">
			${requistionInstance?.borrower?.name}
		</g:elseif>
		</sec:ifAnyGranted>

		<sec:ifAnyGranted roles="ROLE_ADMIN">
			<g:select class="chosen-select many-to-one" id="borrower" name="borrower.id" from="${com.swd.AccountRole.list().findAll{it.role.authority == 'ROLE_USER'}.account}" optionKey="id" optionValue="name" required="" style="width:350px;" value="${requistionInstance?.borrower?.id}" />
		</sec:ifAnyGranted>
		
	</div>
</div>

<sec:ifAnyGranted roles="ROLE_ADMIN">
	<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'endorser', 'error')} required">
		<label class="col-sm-2 control-label" for="endorser">
			<g:message code="requistion.endorser.label" default="Endorser" />
			<span class="required-indicator">*</span>
		</label>

		<div class="col-sm-10">
			<g:select class="chosen-select many-to-one" id="endorser" name="endorser.id" from="${com.swd.AccountRole.list().findAll{it.role.authority == 'ROLE_ADMIN'}.account}" optionKey="id" required="name"  style="width:350px;" value="${requistionInstance?.endorser?.id}" />
		</div>

	</div>
</sec:ifAnyGranted>

<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'requistionDate', 'error')} required">
	<label class="col-sm-2 control-label" for="requistionDate">
		<g:message code="requistion.requistionDate.label" default="Requistion Date" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<joda:dateField class="form-control" style="width:50%" name="requistionDate" value="${new LocalDate()}" />
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'returnDate', 'error')} required">
	<label class="col-sm-2 control-label" for="returnDate">
		<g:message code="requistion.returnDate.label" default="Return Date" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<joda:dateField class="form-control" style="width:50%" name="returnDate" value="${new LocalDate().plusWeeks(1)}" />
	</div>
</div>
<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'isMatching', 'error')} required">
	<g:hiddenField name="isMatching" value="false" />
</div>

%{-- <div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'approved', 'error')} ">
	<label class="col-sm-2 control-label" for="approved">
		<g:message code="requistion.approved.label" default="Approved" />
		
	</label>
	<div class="col-sm-10">
		<g:checkBox name="approved" value="${requistionInstance?.approved}" />
	</div>
</div> --}%

<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'matchings', 'error')} ">
	<label class="col-sm-2 control-label" for="matchings">
		<g:message code="requistion.matchings.label" default="Matchings" />	
	</label>
	<div class="col-sm-10">
		<g:actionSubmit  class="btn btn-default btn-lg " action="addMatching" id='${requistionInstance?.id}' value="${message(code: 'matching.add.equipment.label',default: 'Add Equipment')}"/>	
		
		%{-- <g:link class="btn btn-default btn-lg" action="addMatching" id='${requistionInstance?.id}'><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> 
		<g:message code="matching.add.equipment.label" default="Add Equipment" />	
		</g:link> --}%
	</div>
</div>
	<div class="col-sm-2"></div>
	<div class="col-sm-10">
		<table id="member" class="table table-striped table-hover">
			<thead>
				<th><g:message code="matching.equipment.label" default="Equipment" /></th>
				<th><g:message code="matching.amount.label" default="Amount" /></th>
			</thead>
			<tbody class="addMember">
			<g:if test="${requistionInstance?.id}">

			<g:set var="matchings" value="${Requistion.get(requistionInstance.id).matchings}"/>
				<g:each var="matching" in="${matchings}">
					<g:render template="/matching/matching" model="['matching': matching]"/>
				</g:each>
			</g:if>				
			</tbody>
		</table>
	</div>

	<!-- Button trigger modal -->
	<g:if test="${params.action == 'edit'}">
        <button type="button" class="btn btn-primary btn-lg pull-right" data-toggle="modal" data-target="#myModal">
			 ${message(code: 'default.button.ok.label', default: 'OK')}
		</button> 
    </g:if>
    <g:elseif test="${params.action== 'create'}">
         <g:submitButton disabled="${id == NULL}" name="create" class="save btn btn-success btn-lg pull-right" value="${message(code: 'default.button.create.label', default: 'Create')}"/>
    </g:elseif>
	

	<g:render template="confirm" model="['requistionInstance': requistionInstance]"/>

<script type="text/javascript">
	$( document ).ready(function() {
		$(".chosen-select").chosen({no_results_text: "Oops, nothing found!"}); 
	});
	
	// function addMatching(event, matchingId){
	// 	$.get('<g:createLink controller="matching" action="create"/>'+"/"+ matchingId,function(data){ 
	// 			$('.addMember').append(data); 
	// 		});
	// };
</script>

