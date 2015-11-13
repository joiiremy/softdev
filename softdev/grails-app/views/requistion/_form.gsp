<%@ page import="com.swd.Requistion" %>
<%@ page import="com.swd.Equipment" %>
<%@ page import="com.swd.Account" %>
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
		<g:select class="chosen-select many-to-one" id="borrower" name="borrower.id" from="${com.swd.Account.list()}" optionKey="id" optionValue="name" required="" style="width:350px;" value="${requistionInstance?.borrower?.id}" />
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'endorser', 'error')} required">
	<label class="col-sm-2 control-label" for="endorser">
		<g:message code="requistion.endorser.label" default="Endorser" />
		<span class="required-indicator">*</span>
	</label>

	<div class="col-sm-10">
		<g:select class="chosen-select many-to-one" id="endorser" name="endorser.id" from="${com.swd.Account.list()}" optionKey="id" required="name"  style="width:350px;" value="${requistionInstance?.endorser?.id}" />
	</div>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'requistionDate', 'error')} required">
	<label class="col-sm-2 control-label" for="requistionDate">
		<g:message code="requistion.requistionDate.label" default="Requistion Date" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<joda:datePicker class="form-control" name="requistionDate" />
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'returnDate', 'error')} required">
	<label class="col-sm-2 control-label" for="returnDate">
		<g:message code="requistion.returnDate.label" default="Return Date" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
	<joda:datePicker class="form-control" name="returnDate" />
	</div>
</div>
<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'isMatching', 'error')} required">
	<g:hiddenField name="isMatching" value="false" />
</div>

<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'approved', 'error')} ">
	<label class="col-sm-2 control-label" for="approved">
		<g:message code="requistion.approved.label" default="Approved" />
		
	</label>
	<div class="col-sm-10">
		<g:checkBox name="approved" value="${requistionInstance?.approved}" />
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'matchings', 'error')} ">
	<label class="col-sm-2 control-label" for="matchings">
		<g:message code="requistion.matchings.label" default="Matchings" />	
		<g:actionSubmit action="addMatching" id='${requistionInstance?.id}' value="add"/>	
	</label>

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

			<g:set var="matchings" value="${Requistion.get(requistionInstance.id).matchings}" />
				<g:each var="matching" in="${matchings}">
					<g:render template="/matching/matching" model="['matching': matching]"/>
				</g:each>
			</g:if>				
			</tbody>
		</table>
	</div>

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
