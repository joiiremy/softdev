<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>คืนรายการอุปกรณ์</title>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

</head>
<body>
	<div class="container" >
		<h2>หน้าคืนอุปกรณ์</h2>
		<p>เลือกรายการที่ต้องการคืน จำนวน จากนั้นกดปุ่่มยืนยัน</p>            
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
					<td>3</td>
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
	<center><button type="button" class="btn btn-default" data-toggle="modal" data-target="#myModal">ยืนยันการคืน</button></center>


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
								<td>3</td>
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
								<button type="button" class="btn btn-default" data-dismiss="modal">ยืนยัน</button>
								<button type="button" class="btn btn-default" data-dismiss="modal">ยกเลิก</button>
							</div>

						</fieldset>
					</form>
				</center>


			</div>

		</div>
	</div>
	%{-- end modal --}%

</body>
</html>
