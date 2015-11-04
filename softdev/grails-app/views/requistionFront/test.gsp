<%@ page import="com.swd.Equipment" %>



<div class="fieldcontain ${hasErrors(bean: equipmentInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="equipment.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${equipmentInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipmentInstance, field: 'amount', 'error')} required">
	<label for="amount">
		<g:message code="equipment.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="amount" type="number" value="${equipmentInstance.amount}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipmentInstance, field: 'barcode', 'error')} required">
	<label for="barcode">
		<g:message code="equipment.barcode.label" default="Barcode" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="barcode" required="" value="${equipmentInstance?.barcode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipmentInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="equipment.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: equipmentInstance, field: 'price')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipmentInstance, field: 'title', 'error')} required">
	<label for="title">
		<g:message code="equipment.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="title" required="" value="${equipmentInstance?.title}"/>

</div>

