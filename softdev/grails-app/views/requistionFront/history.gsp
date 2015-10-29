<!DOCTYPE html>
<html lang="en" ng-app="demo">
	 <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.18/angular.js"></script>
			<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.18/angular-sanitize.js"></script>
			<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.css">
			<!-- ui-select files -->
			<script src="select.js"></script>
			<link rel="stylesheet" href="select.css">


			<!-- Select2 theme -->
			<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/select2/3.4.5/select2.css">

			<!--
			Selectize theme
			Less versions are available at https://github.com/brianreavis/selectize.js/tree/master/dist/less
			-->
			<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.8.5/css/selectize.default.css">
			<!-- <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.8.5/css/selectize.bootstrap2.css"> -->
			<!-- <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.8.5/css/selectize.bootstrap3.css"> -->
	<script src="demo.js"></script>
	<head>
		<meta name="layout" content="main"/>
		<title>ประวัติ</title>
	</head>
	<body ng-controller="DemoCtrl">
		${requistionList}
		<br>
		${equipments.title}

		${accounts.name}
		<br>
		${roles}
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
							<g:select  class="form-control" placeholder=".col-xs-3" name="user" from="${roles}"   	 noSelection="['':'-Choose your name-']"/>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<div class="col-xs-2">
							รายชื่อ:
						</div>
						<div class="col-xs-3">
							<g:select  class="form-control" placeholder=".col-xs-3" name="user" from="${accounts}"   	 noSelection="['':'-Choose your name-']"/>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<div class="col-xs-2">
							ค้นหารายชื่อ:
						</div>
							%{-- <div class="col-xs-3">
								<input type="text" class="form-control" placeholder="ค้นหารายชื่อ">
							</div> --}%
							<p>Selected: {{address.selected.formatted_address}}</p>
								  <ui-select ng-model="address.selected"
								             theme="bootstrap"
								             ng-disabled="disabled"
								             reset-search-input="false"
								             style="width: 300px;">
								    <ui-select-match placeholder="Enter an address...">{{$select.selected.formatted_address}}</ui-select-match>
								    <ui-select-choices repeat="address in addresses track by $index"
								             refresh="refreshAddresses($select.search)"
								             refresh-delay="0">
								      <div ng-bind-html="address.formatted_address | highlight: $select.search"></div>
								    </ui-select-choices>
								  </ui-select>
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
