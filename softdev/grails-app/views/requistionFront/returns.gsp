<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>คืนรายการอุปกรณ์</title>
</head>
<body>
	<div class="container">
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
	<center><g:link controller="requistionFront" action="summary" type="button" class="btn btn-default">ยืนยันการคืน</g:link></center>
</body>
</html>
