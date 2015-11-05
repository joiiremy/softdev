<%@ page import="com.swd.Requistion" %>
<%@ page import="com.swd.Account" %>
<%@ page import="grails.converters.JSON" %>

<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'approved', 'error')} ">
	<label for="approved">
		<g:message code="requistion.approved.label" default="Approved" />
		
	</label>
	<g:checkBox name="approved" value="${requistionInstance?.approved}" />

</div>
<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'borrower', 'error')} required">
	<label for="borrower">
		<g:message code="requistion.borrower.label" default="Borrower" />
		<span class="required-indicator">*</span>
	</label>
	<g:select class="chosen-select many-to-one" id="borrower" name="borrower.id" from="${com.swd.Account.list()}" optionKey="id" optionValue="name" required="" value="${requistionInstance?.borrower?.id}" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'endorser', 'error')} required">
	<label for="endorser">
		<g:message code="requistion.endorser.label" default="Endorser" />
		<span class="required-indicator">*</span>
	</label>

	<g:select class="form-control" id="endorser" name="endorser.id" from="${com.swd.Account.list()}" optionKey="id" required="" value="${requistionInstance?.endorser?.id}" class="many-to-one"/>

</div>

<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'matchings', 'error')} ">
	<label for="matchings">
		<g:message code="requistion.matchings.label" default="Matchings" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${requistionInstance?.matchings?}" var="m">
    <li><g:link controller="matching" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="matching" action="create" params="['requistion.id': requistionInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'matching.label', default: 'Matching')])}</g:link>
</li>
</ul>


</div>

<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'requistionDate', 'error')} required">
	<label for="requistionDate">
		<g:message code="requistion.requistionDate.label" default="Requistion Date" />
		<span class="required-indicator">*</span>
	</label>
	<joda:datePicker class="form-control" name="requistionDate" />
	

</div>

<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'returnDate', 'error')} required">
	<label for="returnDate">
		<g:message code="requistion.returnDate.label" default="Return Date" />
		<span class="required-indicator">*</span>
	</label>
	<joda:datePicker class="form-control" name="returnDate" />

</div>

<script type="text/javascript">
	$( document ).ready(function() {
		$(".chosen-select").chosen({no_results_text: "Oops, nothing found!"}); 
	});
</script>

