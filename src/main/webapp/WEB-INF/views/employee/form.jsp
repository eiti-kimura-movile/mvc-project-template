<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <meta name="menu" content="emp" />
  <title><spring:message code="emp.edit.page.title"/></title>
  <link href="<c:url value="/resources/css/datepicker.css" />" rel="stylesheet">
</head>
<body>
	<h1><spring:message code="emp.edit.info"/> - ID: ${emp.id}</h1>
	<br />
	<div class="panel panel-default">
		<form role="form" style="padding: 20px 20px" action="<c:url value="/employee/${emp.id}/save"/>" method="post">
		<div class="form-group">
			    <label for="name"><spring:message code="emp.name"/></label>
			    <input type="text" class="form-control" name="name" id="name" placeholder="Name" value="${emp.name}">
			  </div>
			  <div class="form-group">
			    <label for="email"><spring:message code="emp.email"/></label>
			    <input type="email" class="form-control" name="email" id="email" placeholder="Enter email" value="${emp.email}">
			  </div>
			  <div class="form-group">
			    <label for="department"><spring:message code="emp.dept"/></label>
			    <input type=text class="form-control" id="department" placeholder="Department" value="${emp.department}">
			  </div>
			 <div class="form-group">
			    <label for="birth_date"><spring:message code="emp.birth_date"/></label>
			    <input type=text class="form-control" style="width: 200px;" id="birth_date" value="${emp.birthDate}">
			  </div>
			  <button type="submit" class="btn btn-primary"><spring:message code="emp.edit.submit"/></button>
			  <a href="<c:url value="/employee"/>" class="btn btn-default" role="button"><spring:message code="emp.edit.back"/></a>
		</form>
	</div>

    <script src="https://code.jquery.com/jquery.js"></script>
    <script src="<c:url value="/resources/js/bootstrap-datepicker.js"/>"></script>
	<script type="text/javascript">
		 $(document).ready(function () {
	         $('#birth_date').datepicker({
	             format: "yyyy-mm-dd"
	         });  
	     });
	</script>
</body>
</html>
