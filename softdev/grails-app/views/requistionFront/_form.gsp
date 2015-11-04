<%@ page import="com.swd.Requistion" %>



<div class="fieldcontain ${hasErrors(bean: requistionInstance, field: 'approved', 'error')} ">
	<label for="approved">
		<g:message code="requistion.approved.label" default="Approved" />
		
	</label>
	<g:checkBox name="approved" value="${requistionInstance?.approved}" />

</div>

<div class="fieldcontain ${hasErrors(bean: requistionInstance, field: 'borrower', 'error')} required">
	<label for="borrower">
		<g:message code="requistion.borrower.label" default="Borrower" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="borrower" name="borrower.id" from="${com.swd.Account.list()}" optionKey="id" required="" value="${requistionInstance?.borrower?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requistionInstance, field: 'endorser', 'error')} required">
	<label for="endorser">
		<g:message code="requistion.endorser.label" default="Endorser" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="endorser" name="endorser.id" from="${com.swd.Account.list()}" optionKey="id" required="" value="${requistionInstance?.endorser?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requistionInstance, field: 'requistionDate', 'error')} required">
	<label for="requistionDate">
		<g:message code="requistion.requistionDate.label" default="Requistion Date" />
		<span class="required-indicator">*</span>
	</label>
	<joda:datePicker class="form-control" name="returnDate" />
</div>

<div class="fieldcontain ${hasErrors(bean: requistionInstance, field: 'returnDate', 'error')} required">
	<label for="returnDate">
		<g:message code="requistion.returnDate.label" default="Return Date" />
		<span class="required-indicator">*</span>
	</label>
	<joda:datePicker class="form-control" name="returnDate" />

</div>

