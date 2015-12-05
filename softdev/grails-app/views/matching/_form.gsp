<%@ page import="com.swd.Matching" %>
%{-- <g:set var="backend" bean="backendService"/>
<g:set var="equipmentLists" value="${backend.queryMatching()}"/> --}%
<div class="form-group fieldcontain ${hasErrors(bean: matchingInstance, field: 'equipment', 'error')} required">
	<label class="col-sm-2 control-label" for="equipment">
		<g:message code="matching.equipment.label" default="Equipment" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:select id="equipment" name="equipment.id" from="${com.swd.Equipment.list()}" optionValue="${{it.title }}" optionKey="id" value="${matchingInstance?.equipment?.id}" class="many-to-one chosen-select" style="width:100%;"/>
		%{-- equipmentLists.find{e -> e.id == it.id}?.amount?:0)} --}%
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
<script type="text/javascript">
$(document).ready( function(){
  	$(".chosen-select").chosen({no_results_text: "Oops, nothing found!"});     
});
</script>