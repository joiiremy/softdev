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
	<g:select class="chosen-select many-to-one" id="borrower" name="borrower.id" from="${com.swd.Account.list()}" optionKey="id" optionValue="name" required="" style="width:350px;" value="${requistionInstance?.borrower?.id}" />

</div>

<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'endorser', 'error')} required">
	<label for="endorser">
		<g:message code="requistion.endorser.label" default="Endorser" />
		<span class="required-indicator">*</span>
	</label>

	<g:select class="chosen-select many-to-one" id="endorser" name="endorser.id" from="${com.swd.Account.list()}" optionKey="id" required="name"  style="width:350px;" value="${requistionInstance?.endorser?.id}" />

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

<div class="form-group fieldcontain ${hasErrors(bean: requistionInstance, field: 'matchings', 'error')} ">
	<label for="matchings">
		<g:message code="requistion.matchings.label" default="Matchings" />		
	</label>
<ul class="one-to-many">
<g:each in="${requistionInstance?.matchings?}"" var="m">
    <li><g:link controller="matching" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="matching" action="create" params="['requistion.id': requistionInstance?.id]" class="glyphicon glyphicon-plus">${message(code: 'default.add.label', args: [message(code: 'matching.label', default: 'Matching')])}</g:link>
</li>

<div id="list-matching" class="container content scaffold-list">
			<div class="col-md-4">
			<table class = "table " >
			<thead>
					<tr >
						<g:sortableColumn property="amount" title="${message(code: 'matching.amount.label', default: 'Amount')}" />
						<th><g:message code="matching.equipment.label" default="Equipment" /></th>
						<th><g:message code="matching.requistion.label" default="Requistion" /></th>
					</tr>
				</thead>
				<tbody>
				<g:each in="${matchingInstanceList}" status="i" var="matchingInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'} .col-md-4">
						<td><g:link action="show" id="${matchingInstance.id}">${fieldValue(bean: matchingInstance, field: "amount")}</g:link></td>
						<td >${fieldValue(bean: matchingInstance, field: "equipment.title")}</td>
						<td>${fieldValue(bean: matchingInstance, field: "requistion")}</td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${matchingInstanceCount ?: 0}" />
			</div>
		</div>
</div>
</ul>
</div>