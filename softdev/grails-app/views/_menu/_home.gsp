<%@ page import="com.swd.Account" %>

<script type="text/javascript">
$( document ).ready(function() {
  $(".chosen-select").chosen({no_results_text: "Oops, nothing found!"}); 

});
</script>
<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
  <div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingOne">
      <h4 class="panel-title">
      <center>
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          ผู้ใช้งาน (USER)
        </a>
        </center>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
        <form action="${createLink(uri: '/j_spring_security_check')}" method="post" accept-charset="UTF-8">
          <g:select class="panel-body chosen-select many-to-one" id="borrower" name="j_username" from="${com.swd.AccountRole.list().findAll{it.role.authority == 'ROLE_USER'}.account}" optionKey="username" optionValue="name" required="" style="width:80%;" value="${requistionInstance?.borrower?.id}" />
          <g:hiddenField name="j_password" value="1234" />
          <input class="btn btn-info pull-right" type="submit" id="sign-in" value="Next">
        </div>        
      </form>
    </div>
  </div>
</div>
<div class="panel panel-default">
  <div class="panel-heading" role="tab" id="headingTwo">
    <h4 class="panel-title">
    <center>
      <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
         ผู้ดูแล (ADMIN)
      </a>
      </center>
    </h4>
  </div>
  <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
    <div class="panel-body">
     <form action="${createLink(uri: '/j_spring_security_check')}" method="post" accept-charset="UTF-8">
      <input class="form-control" style="margin-bottom: 15px;" type="text" placeholder="Username" id="username" name="j_username">
      <input class="form-control" style="margin-bottom: 15px;" type="password" placeholder="Password" id="password" name="j_password">
      <input class="btn btn-primary btn-block" type="submit"id="sign-in" value="Sign In">
    </form>
  </div>
</div>
</div>
</div>
