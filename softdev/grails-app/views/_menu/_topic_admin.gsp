<div class="list-group">
	<a href="#" class="list-group-item active">
		<h4 class="list-group-item-heading">Admin</h4>
	</a>  
	<a href="${createLink(controller: 'Equipment', action: 'index')}"class="list-group-item">
		<h4 class="list-group-item-heading">คลังสินค้า/แก้ไข</h4>
	</a> 
	<a href="${createLink(controller: 'Equipment', action: 'create')}"class="list-group-item">
		<h4 class="list-group-item-heading">เพิ่มสินค้า</h4>
	</a>
%{-- 	<a href="${createLink(controller: 'Equipment', action: 'edit')}"class="list-group-item">
		<h4 class="list-group-item-heading">แก้ไข</h4>
	</a> --}%
	<a href="${createLink(controller: 'Requistion', action: 'index')}" class="list-group-item">
		<h4 class="list-group-item-heading">สถิติ / ประวัติการยืมสินค้า</h4>
		%{-- <p class="list-group-item-text">Check</p>
		<p class="list-group-item-text">Checkout Questions</p>
		<p class="list-group-item-text">Checkout Question Sets</p> --}%

	</a>
</div>

