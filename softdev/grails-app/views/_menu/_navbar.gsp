<%@ page import="com.swd.Requistion" %>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <sec:ifAnyGranted roles="ROLE_ADMIN">
        
        <a class="navbar-brand"  href="${createLink(controller: 'home', action: 'admin')}">
        <img src = "${assetPath(src: 'home.png')}" width="30" height="25"></a>        
      </sec:ifAnyGranted>
      <sec:ifAnyGranted roles="ROLE_USER">
        
        <a class="navbar-brand" href="${createLink(controller: 'requistion', action: 'create')}">
        <img src = "${assetPath(src: 'home.png')}" width="30" height="25">
        </a>
      </sec:ifAnyGranted>
      <sec:ifNotGranted roles="ROLE_ADMIN,ROLE_USER">
        
        <a class="navbar-brand" href="${createLink(uri: '/')}">
        <img src = "${assetPath(src: 'home.png')}" width="30" height="25">
        </a>
      </sec:ifNotGranted>
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
  <ul class="nav navbar-nav">

      <sec:ifAnyGranted roles="ROLE_USER">

      <g:if test="${ params.controller == 'requistionFront' || params.controller == 'requistion' }">
        <li class="${ params.action == "create" ? 'active' : '' }" >
          <a href="${createLink(controller: 'requistion', action: 'create')}"> ${message(code: 'requistion.borrow.label', default: 'Requestion')}
          </a>
        </li> 
     %{--    <li class="${ params.action == "returns" ? 'active' : '' }">
          <a href="${createLink(controller: 'requistionFront', action: 'returns')}"> คืน
          </a>
        </li>  --}%
        <li class="${ params.action == "history" ? 'active' : '' }">
          <a href="${createLink(controller: 'requistionFront', action: 'history')}">
            ${message(code: 'requistion.history.label', default: 'History')}        
          </a>
        </li>
      </g:if>
      </sec:ifAnyGranted>


      <sec:ifAnyGranted roles="ROLE_ADMIN">
      <g:set var="sizeOfApproved" value="${Requistion.findAllByApproved('').size()}" />
        

     %{--    <g:if test="${ params.controller == 'equipment' || params.controller == 'requistion' }"> --}%
          <li class="${ params.controller == 'account' ? 'active' : '' }" >
            <a href="${createLink(controller: 'Account', action: 'index')}"> จัดการบัญชี
            </a>
          </li> 
          <li class="${( params.action == "index" || params.action == "edit" || params.action == "show")&& params.controller == 'equipment' ? 'active' : '' }" >
            <a href="${createLink(controller: 'Equipment', action: 'index')}"> คลังสินค้า/แก้ไข
            </a>
          </li> 
          <li class="${ params.action == "create" ? 'active' : '' }">
            <a href="${createLink(controller: 'equipment', action: 'create')}"> เพิ่มสินค้า
            </a>
          </li> 
          <li class="${ params.action == "index"  && params.controller == 'requistion'? 'active' : '' }">
            <a href="${createLink(controller: 'Requistion', action: 'index')}">
              สถิติ / ประวัติการยืมสินค้า  
              <g:if test="${sizeOfApproved != 0}">
                <span class="badge progress-bar-warning">${sizeOfApproved}</span>   
              </g:if>     
            </a>
          </li>
        %{-- </g:if> --}%
      </sec:ifAnyGranted>

  </ul>
  <ul class="nav navbar-nav navbar-right">
    
    <sec:ifLoggedIn>
      <li>
        <a href="${createLink(uri: '/j_spring_security_logout')}"> 
          <i class="glyphicon glyphicon-off"></i>  Logout (<sec:loggedInUserInfo field="username" />)
        </a>
      </li>
    </sec:ifLoggedIn>
<g:render template="/_menu/language"/>
  </ul>
  </div>
</div>
</nav>