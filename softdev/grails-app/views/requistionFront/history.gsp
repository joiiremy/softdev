<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="main"/>
	<title>ประวัติ</title>
</head>
<body >
<div class="container">
		<div class="col-md-7">
				<h3>บันทึกประวัติการใช้งาน</h3>
			</div>
			<div class="col-md-5">
				<h3 style="font-size:100%;font-weight: bold;">
				<g:form>
			    Search:	
				<g:checkBox name="notreturn" value="${notreturn}"/> รายการที่ยังไม่คืน&emsp;
					<g:actionSubmit value="Search" action="history" class="btn btn-info"/>
					<g:link class="btn btn-warning " action="history"  params="[accountId: '',equipmentId:'']">
				    	Clear
				   	</g:link>
				<h3>
			</g:form>
			</div>
		</div>
			
	<g:each status="i" in="${requistionList}" var="item">
    	<g:each status="j" in="${item.matchings}" var="match">
    		<br>
    	</g:each>
  	</g:each>
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
  					<g:each status="i" in="${requistionList}" var="item">
  					<g:each status="j" in="${item.matchings}" var="match">
  					<tr>
  						<td>${match.equipment.title} <br></td>
  						<td>${match.amount} <br></td>
  						<td>${item.requistionDate}</td>
  						<td>${item.returnDate}</td>
  					</tr>
  					</g:each>
  					</g:each>
  				</tbody>
  			</table>
  		</div>
	</div>
	<script type="text/javascript">

	$(document).ready(function(){
		$(".my_select_box").chosen({
			allow_single_deselect: true,
			display_selected_options:false,
			search_contains : true,
	        no_results_text: "Oops, nothing found!"
	    });
		$("#findcheckout").click(function(event){
	  });
		$('.sortable').sortable();    
	});
	</script>
</body>


</html>

