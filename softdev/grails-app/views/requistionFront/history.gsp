<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>ประวัติ</title>
</head>
<body >
	%{-- ${requistionList} --}%
	<br>
	%{-- ${accounts.name} --}%
	<br>
	${roles}
	%{-- <g:each in="${matching}">
		<p>matching: ${it.equipment.title}</p>
	</g:each> --}%


<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<b><h1 class = "text-center">บันทึกประวัติการใช้งาน</h1></b>
		</div>
		<br><br><br><br><br><br>
	</div>
	<g:form class="form-inline pull-right">
				Search:
				%{-- <div class="form-group">
					<g:select class="my_select_box form-control" noSelection="['':'-All Account-']" optionKey="id" optionValue="name" name="accountId" from="${accounts}" value="${accountId}"/>
					<g:select class="my_select_box form-control" noSelection="['':'-All Equipment-']" optionKey="id" optionValue="title" name="equipmentId" from="${equipments}" value="${equipmentId}"/>
				</div> --}%
				<g:checkBox name="notreturn" value="${notreturn}"/> รายการที่ยังไม่คืน
				&emsp;<g:actionSubmit value="Search" action="history" class="btn btn-info"/>
				<g:link class="btn btn-warning" action="history"  params="[accountId: '',equipmentId:'']">
		        	Clear
		       	</g:link>
	</g:form>

	%{-- ตัวอย่าง  requistionList ที่ได้จากการค้าหา --->	${requistionList} --}%
	<br><br>
	<g:each status="i" in="${requistionList}" var="item">
    	%{-- ${i} : ${item.requistionDate}, ${item.returnDate} , --}%
    	<g:each status="j" in="${item.matchings}" var="match">
    		%{-- ${j},${match.equipment.title} จำนวน ${match.amount}  --}%
    		<br>
    	</g:each>
    	%{-- <br>--------------------------------<br> --}%
  	</g:each>
%{-- 	<form>
		<div class="form-group">
			<div class="row">
				<div class="col-xs-2">
					สถานะใช้งาน:
				</div>
				<div class="col-xs-3">
					<g:select  class="form-control" placeholder=".col-xs-3" name="user" from="test"   	 noSelection="['':'-Choose your name-']"/>
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
	</form> --}%
		<div class="form-group">
			<div class="row">
				<div class = "form-group">
					<div class ="row">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>รายการอุปกรณ์</th>
									<th>จำนวน</th>
									<th>วันที่ยืม</th>
									<th>วันที่คืน</th>
								</tr>
							</thead>
							<tbody>
								<tr>
  								<g:each status="i" in="${requistionList}" var="item">
  									<g:each status="j" in="${item.matchings}" var="match">
									<td>							
											${match.equipment.title} <br>
									</td>
									<td>
											${match.amount} <br>
									</td>
									<td>
    										${item.requistionDate}
									</td>
									<td>
    										${item.returnDate}
									</td>
								</tr>
							</g:each>
    						</g:each>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		
	</div>
	<script type="text/javascript">

	$(document).ready(function(){
		$(".my_select_box").chosen({
			allow_single_deselect: true,
			display_selected_options:false,
			search_contains : true,
	        // disable_search_threshold: 10,
	        no_results_text: "Oops, nothing found!"
	    });
		$("#findcheckout").click(function(event){
	      // event.preventDefault();
	  });
		$('.sortable').sortable();    
	});
	</script>
</body>


</html>

