<tr>
    <td>${matching?.equipment?.title}</td>    
    <td>${matching?.amount}</td>
    <td>
    	<g:link class="btn btn-warning" controller="matching" action="edit" id="${matching?.id}">Edit</g:link>
    </td>
</tr>
<script type="text/javascript">
$(document).ready( function(){
  	$(".chosen-select").chosen({no_results_text: "Oops, nothing found!"});     
});
</script>