<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <sec:ifAnyGranted roles="ROLE_ADMIN">
        <a class="navbar-brand" href="${createLink(controller: 'home', action: 'admin')}">COE</a>
      </sec:ifAnyGranted>
      <sec:ifAnyGranted roles="ROLE_USER">
        <a class="navbar-brand" href="${createLink(controller: 'requistion', action: 'create')}">COE</a>
      </sec:ifAnyGranted>
      <sec:ifNotGranted roles="ROLE_ADMIN,ROLE_USER">
        <a class="navbar-brand" href="${createLink(uri: '/')}">COE</a>
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
      <li class="dropdown">
            <a href="${createLink(uri: '/')}" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">MENU <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
              <li><a href="${createLink(controller: 'requistion', action: 'create')}">
                ${message(code: 'requistion.borrow.label', default: 'Requestion')}</a></li>
              <li><a href="${createLink(controller: 'requistionFront', action: 'returns')}">คืน</a></li>
              <li><a href="${createLink(controller: 'requistionFront', action: 'history')}">ประวัติ</a></li>
            </ul>
      </li>

      <g:if test="${ params.controller == 'requistionFront' || params.controller == 'requistion' }">
        <li class="${ params.action == "create" ? 'active' : '' }" >
          <a href="${createLink(controller: 'requistion', action: 'create')}"> ${message(code: 'requistion.borrow.label', default: 'Requestion')}
          </a>
        </li> 
        <li class="${ params.action == "returns" ? 'active' : '' }">
          <a href="${createLink(controller: 'requistionFront', action: 'returns')}"> คืน
          </a>
        </li> 
        <li class="${ params.action == "history" ? 'active' : '' }">
          <a href="${createLink(controller: 'requistionFront', action: 'history')}">
            ประวัติ        
          </a>
        </li>
      </g:if>
      </sec:ifAnyGranted>


      <sec:ifAnyGranted roles="ROLE_ADMIN">
         <li class="dropdown">
            <a href="${createLink(uri: '/')}" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">MENU <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
              <li><a href="${createLink(controller: 'Equipment', action: 'index')}"> คลังสินค้า/แก้ไข
            </a></li>
              <li><a href="${createLink(controller: 'Equipment', action: 'create')}"> เพิ่มสินค้า
            </a></li>
              <li><a href="${createLink(controller: 'Requistion', action: 'index')}">
              สถิติ / ประวัติการยืมสินค้า      
            </a></li>
            </ul>
        </li>

        <g:if test="${ params.controller == 'equipment' || params.controller == 'requistion' }">
          <li class="${ params.action == "index" && params.controller == 'equipment' ? 'active' : '' }" >
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
            </a>
          </li>
        </g:if>
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

  </ul>
  </div>
</div>
</nav>