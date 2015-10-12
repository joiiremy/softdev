<%@ page import="com.swd.Requistion" %>



<div class="fieldcontain ${hasErrors(bean: requistionInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="requistion.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" type="number" value="${requistionInstance.amount}" required=""/>

</div>

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

<div class="fieldcontain ${hasErrors(bean: requistionInstance, field: 'equipments', 'error')} ">
	<label for="equipments">
		<g:message code="requistion.equipments.label" default="Equipments" />
		
	</label>
	<g:select name="equipments" from="${com.swd.Equipment.list()}" multiple="multiple" optionKey="id" size="5" value="${requistionInstance?.equipments*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: requistionInstance, field: 'requistionDate', 'error')} required">
	<label for="requistionDate">
		<g:message code="requistion.requistionDate.label" default="Requistion Date" />
		<span class="required-indicator">*</span>
	</label>
	<joda:datePicker class="form-control" name="requistionDate" /> 

</div>

<div class="fieldcontain ${hasErrors(bean: requistionInstance, field: 'returnDate', 'error')} required">
	<label for="returnDate">
		<g:message code="requistion.returnDate.label" default="Return Date" />
		<span class="required-indicator">*</span>
	</label>
	<joda:datePicker class="form-control" name="returnDate" /> 

</div>

