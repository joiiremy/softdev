<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>ยืมสินค้า</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'requistion.label', default: 'รายการสินค้า')}" />
</head>
<body>
	%{-- หน้ายืมของ ของผู้ใช้ <br>

	ทำรายการการยืมหน้านี้ <br>
	กดแล้วไปที่หน้า สรุปการยืม <br>
	ประวัติ <br> --}%
	<div>
		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<b><h1 class = "text-center">ยืม</h1></b>
				</div>
			</div><br>
			<form>
				<div class="form-group">
					<div class="row">
						<div class="col-xs-2">
							สถานะใช้งาน:
						</div>
						<div class="col-xs-3">
							<select class="form-control" placeholder=".col-xs-3">
								<option>อาจารย์</option>
								<option>บุคลากร</option>
								<option>นักศึกษา</option>
								<option>แม่บ้าน</option>
							</select>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<div class="col-xs-2">
							รายชื่อ:
						</div>
						<div class="col-xs-3">
							<select class="form-control" placeholder=".col-xs-3">
								<option>อาจารย์</option>
								<option>บุคลากร</option>
								<option>นักศึกษา</option>
								<option>แม่บ้าน</option>
							</select>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<div class="col-xs-2">
							ค้นหารายชื่อ:
						</div>
						<div class="col-xs-3">
							<input type="text" class="form-control" placeholder="ค้นหารายชื่อ">
						</div>
					</div>
				</div>
			</div>
			<div class = "form-group">
				<div class="row">
					<center><button type="submit" class="btn btn-info" formaction="demo_admin.asp">ค้นหา</button></center>
				</div>
			</div> <br>
		</div>
	</form>
</div>

<center>
	<!-- Modal -->
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
								<g:link controller="requistionFront" action="summary" type="button" class="btn btn-default" >ยืนยัน</g:link>
								<button type="button" class="btn btn-default" data-dismiss="modal">ยกเลิก</button>
							</div>

						</fieldset>
					</form>
				</center>


			</div>

		</div>
	</div>
	%{-- end modal --}%
</center>
%{-- start from --}%
<center>
<div id="create-requistion" class="content scaffold-create" role="main">
			<h1><g:message code="default.create.label" args="[entityName]" /></h1>
			
</div>
</center>
%{-- end from --}%
		<center>
			<button type="button" class="btn btn-default"data-toggle="modal" data-target="#myModal">ยืนยันการยืม
			</button>
		</center>
	</div>
</div>
</body>
</html>
