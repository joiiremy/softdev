<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<meta name="layout" content="main">
	<g:set var="entityName" value="${message(code: 'requistion.label', default: 'Requistion')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
%{-- 	<a href="#create-requistion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
	<div class="nav" role="navigation">
		<ul>
			<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
		</ul>
	</div>
	<div id="create-requistion" class="content scaffold-create" role="main">
		<h1><g:message code="default.create.label" args="[entityName]" /></h1>
		<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<g:hasErrors bean="${requistionInstance}">
	<ul class="errors" role="alert">
		<g:eachError bean="${requistionInstance}" var="error">
		<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
	</g:eachError>
</ul>
</g:hasErrors> --}%
<g:form url="[resource:requistionInstance, action:'save']" >
<fieldset class="form">
	<g:render template="form"/>
</fieldset>
%{-- <fieldset class="buttons">
	<g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /> --}%
</fieldset>

<!--/////////////////////// Modal ////////////////////////////////////////////////////////////////////////-->
<center>
	<button type="button" class="btn btn-default"data-toggle="modal" data-target="#myModal">ยืนยันการยืม
	</button>
	<div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">ยืนยันการทำรายการ</h4>
				</div>

				<div class="modal-body">

					<table class="table table-bordered">
						<thead>
							<tr>
								<th>ลำดับ</th>
								<th>รายการอุปกรณ์</th>
								<th>จำนวน</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>new</td>
								<td>1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>Moe</td>
								<td>2</td>
							</tr>
							<tr>
								<td>3</td>
								<td>sic</td>
								<td>3</td>
							</tr>
						</tbody>
					</table>
				</div>
				<center>
					<form class="pure-form">
						<fieldset>
							<legend>รหัสยืนยัน</legend>

							<input type="password" placeholder="Password">

							<label for="remember">
								<input id="remember" type="checkbox"> บันทึกรหัสผ่าน
							</label>
							<div class="modal-footer">
								<fieldset class="buttons">
									<g:submitButton name="create" class="save" value="${message(code: 'default.button.submit_create.label', default: 'Create')}" />
									<button type="button" class="btn btn-default" data-dismiss="modal">ยกเลิก</button>
								</fieldset>
							</div>
						</fieldset>
					</form>
				</center>
			</div>
		</div>
	</div>
</center>
%{-- end modal --}%
</g:form>
</div>
</body>
</html>
