<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>สรุปรายการยืม</title>
	</head>
	<body>
		<a href="#list-requistion" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
			</ul>
		</div>
		สรุปรายการยืม <br>
		มี popup ให้คนมายืนยันการยืม
		<g:link controller="requistion" action="summaryList"></g:link>
	</body>
</html>
