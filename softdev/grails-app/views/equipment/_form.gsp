<%@ page import="com.swd.Equipment" %>

<div class="form-group form-group fieldcontain ${hasErrors(bean: equipmentInstance, field: 'title', 'error')} required">
	<label class="col-sm-2 control-label" for="title">
		<g:message code="equipment.title.label" default="Title" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" placeholder="${message(code: 'equipment.title.label', default: 'Title')}" name="title" required="" value="${equipmentInstance?.title}" />
	</div>
</div>

<div class="form-group form-group-lg fieldcontain ${hasErrors(bean: equipmentInstance, field: 'description', 'error')} ">
	<label for="description" class="col-sm-2 control-label">
		<g:message code="equipment.description.label" default="รายละเอียด" />
		
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" placeholder="${message(code: 'equipment.description.label', default: 'Description')}" name="description" value="${equipmentInstance?.description}"/>
	</div>
</div>

<div class="form-group form-group fieldcontain ${hasErrors(bean: equipmentInstance, field: 'amount', 'error')} required">
	<label for="amount" class="col-sm-2 control-label">
		<g:message code="equipment.amount.label" default="Amount" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:field class="form-control" placeholder="${message(code: 'equipment.amount.label', default: 'Amount')}" name="amount" type="number" value="${equipmentInstance.amount}" required=""/>
	</div>
</div>

<div class="form-group form-group fieldcontain ${hasErrors(bean: equipmentInstance, field: 'barcode', 'error')} required">
	<label for="barcode" class="col-sm-2 control-label">
		<g:message code="equipment.barcode.label" default="Barcode" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:textField class="form-control" placeholder="${message(code: 'equipment.barcode.label', default: 'Barcode')}" name="barcode" required="" value="${equipmentInstance?.barcode}"/>
	</div>
</div>

<div class="form-group form-group fieldcontain ${hasErrors(bean: equipmentInstance, field: 'price', 'error')} required">
	<label for="price" class="col-sm-2 control-label">
		<g:message code="equipment.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-10">
		<g:field class="form-control" placeholder="${message(code: 'equipment.price.label', default: 'Price')}" name="price" value="${fieldValue(bean: equipmentInstance, field: 'price')}" required=""/>
	</div>
</div>



