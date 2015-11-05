<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">

      <a class="navbar-brand" href="${createLink(uri: '/')}">COE</a>
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>

  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
  <ul class="nav navbar-nav">

        %{-- <g:if test="${params.controller != null}"> --}%
      <li class="dropdown">
            <a href="${createLink(uri: '/')}" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">MENU <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
              <li><a href="${createLink(controller: 'requistion', action: 'create')}">ยืม</a></li>
              <li><a href="${createLink(controller: 'requistionFront', action: 'returns')}">คืน</a></li>
              <li><a href="${createLink(controller: 'requistionFront', action: 'history')}">ประวัติ</a></li>
            </ul>
      </li>
        %{-- </g:if> --}%

      %{-- CHECKOUT --}%
      <g:if test="${ params.controller == 'requistionFront' || params.controller == 'requistion' }">
        <li class="${ params.action == "create" ? 'active' : '' }" >
          <a href="${createLink(controller: 'requistion', action: 'create')}"> ยืม
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