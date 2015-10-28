<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>ประวัติ</title>
	</head>
	<body>
		${requistionList}
		<br>
		${equipments.title}

		${accounts.name}
		<br>
		<g:each in="${equipments}">
			<p>equipments: ${it.title}</p>
		</g:each>


		<div class="container">
			<div class="row">
				<div class="col-xs-12">
					<b><h1 class = "text-center">บันทึกประวัติการใช้งาน</h1></b>
				</div>
			</div><br>
			<form>
				<div class="form-group">
					<div class="row">
						<div class="col-xs-2">
							สถานะใช้งาน:
						</div>
						<div class="col-xs-3">
							<g:select  class="form-control" placeholder=".col-xs-3" name="user" from="${accounts}"   	 noSelection="['':'-Choose your name-']"/>
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
				<div class = "form-group">
					<div class ="row">
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
				</div>
			</div>
		</form>
	</div>
	</body>	
</html>
