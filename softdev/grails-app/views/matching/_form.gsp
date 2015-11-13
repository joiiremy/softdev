<%@ page import="com.swd.Matching" %>

<div class="form-group fieldcontain ${hasErrors(bean: matchingInstance, field: 'equipment', 'error')} required">
	<label class="col-sm-2 control-label" for="equipment">
		<g:message code="matching.equipment.label" default="Equipment" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:select id="equipment" name="equipment.id" from="${com.swd.Equipment.list()}" optionValue="title" optionKey="id" required="title" value="${matchingInstance?.equipment?.id}" class="many-to-one form-control"/>
	</div>
</div>

<div class="form-group fieldcontain ${hasErrors(bean: matchingInstance, field: 'amount', 'error')} required">
	<label class="col-sm-2 control-label" for="amount">
		<g:message code="matching.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:field name="amount" type="number" class="form-control" value="${matchingInstance.amount}" required=""/>
	</div>
</div>

<div class="fieldcontain ${hasErrors(bean: matchingInstance, field: 'requistion', 'error')} required">
	<g:if test="${params.id}">
    	<g:hiddenField name="requistion.id" value="${params.id}" />
	</g:if>
	<g:if test="${requistion?.id}">
    	<g:hiddenField name="requistion.id" value="${requistion?.id}" />
	</g:if>
</div>
