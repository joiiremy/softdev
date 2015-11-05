<%@ page import="com.swd.Matching" %>

<div class="fieldcontain ${hasErrors(bean: matchingInstance, field: 'equipment', 'error')} required">
	<label for="equipment">
		<g:message code="matching.equipment.label" default="Equipment" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="equipment" name="equipment.id" from="${com.swd.Equipment.list()}" optionValue="title" optionKey="id" required="title" value="${matchingInstance?.equipment?.id}" class="many-to-one"/>
	
</div>

<div class="fieldcontain ${hasErrors(bean: matchingInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="matching.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" type="number" value="${matchingInstance.amount}" required=""/>
</div>


<div class="fieldcontain ${hasErrors(bean: matchingInstance, field: 'requistion', 'error')} required">
	<label for="requistion">
		<g:message code="matching.requistion.label" default="Requistion" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="requistion" name="requistion.id" from="${com.swd.Requistion.list()}" optionKey="id" required="" value="${matchingInstance?.requistion?.id}" class="many-to-one"/>
</div>
