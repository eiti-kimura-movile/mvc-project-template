<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
<script src="https://code.jquery.com/jquery.js"></script>
</head>
<body>
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="<c:url value="/"/>"><spring:message code="prj.name"/></h2></a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li id="home"><a href="<c:url value="/"/>"><spring:message code="mnu.home"/></a></li>
            <li id="emp"><a href="<c:url value="/employee"/>"><spring:message code="mnu.emp"/></a></li>
            <li id="about"><a href="/about"><spring:message code="mnu.about"/></a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>
    
    <script language="javascript">
       $("#${mnu}").addClass('active');
    </script>
</body>
</html>