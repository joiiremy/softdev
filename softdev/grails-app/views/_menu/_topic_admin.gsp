<div class="list-group">
	<a href="#" class="list-group-item active">
		<h4 class="list-group-item-heading">Admin</h4>
	</a>  
	<a href="${createLink(controller: 'Equipment', action: 'index')}"class="list-group-item">
		<h4 class="list-group-item-heading">สต็อกสินค้า</h4>
		<div class="list-group-item-text">เพิ่ม</div>
		<div class="list-group-item-text">แก้ไข</div>
		<div class="list-group-item-text">รายการสินค้า</div>
	</a>  
	<a href="${createLink(controller: 'Requistion', action: 'index')}" class="list-group-item">
		<h4 class="list-group-item-heading">สถิติ / ประวัติการยืมสินค้า</h4>
	%{-- 	<p class="list-group-item-text">Check</p>
		<p class="list-group-item-text">Checkout Questions</p>
		<p class="list-group-item-text">Checkout Question Sets</p> --}%

	</a>
</div>

