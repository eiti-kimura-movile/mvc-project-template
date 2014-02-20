<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<jsp:useBean id="now" class="java.util.Date" scope="page" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><decorator:title /></title>

<!-- Bootstrap -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
	    <![endif]-->

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://code.jquery.com/jquery.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>

<decorator:head />
</head>

<body>
	<c:set var="mnu" scope="request">
		<decorator:getProperty property="meta.menu" default="home" />
	</c:set>

	<jsp:include page="/includes/navigation_bar.jsp?mnu=${mnu}" />

	<div class="container">
		<div style="padding: 80px 15px;">
			<decorator:body />
		</div>
		
		<div class="footer">
		<div style="display: inline">© Movile <fmt:formatDate value="${now}" pattern="yyyy" /></div>
		<div style="display: inline; float: right;">
			<ul class="list-inline">
				<li><a href="?locale=en">English</a></li>
				<li class="muted">·</li>
				<li><a href="?locale=pt_BR">Português (BR)</a></li>
			</ul>
		</div>
	</div>
	</div>

</body>
</html>