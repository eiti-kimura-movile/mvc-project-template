<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/page" prefix="page"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

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

		<form:form role="form" style="padding: 20px 20px" action="${pageContext.request.contextPath}/employee/${emp.id}/save" modelAttribute="emp">
			  <c:if test="${SUCCESS_MESSAGE eq true}">
	            <div class="alert alert-success">${emp.name} <spring:message code="emp.persist.success"/></div>
	          </c:if>
        
		      <div class="form-group">
			    <label for="name"><spring:message code="emp.name"/></label>
			    <form:input cssClass="form-control" path="name" placeholder="Name" />
			    <form:errors path="name" cssClass="help-block"/>
			  </div>
			  <div class="form-group">
			    <label for="email"><spring:message code="emp.email"/></label>
			    <form:input cssClass="form-control" path="email" placeholder="Enter email" />
			    <form:errors path="email" cssClass="help-block"/>
			  </div>
			  <div class="form-group">
			    <label for="department"><spring:message code="emp.dept"/></label>
			    <form:input cssClass="form-control" path="department" placeholder="Department"/>
			    <form:errors path="department" cssClass="help-block"/>
			  </div>
			 <div class="form-group">
			    <label for="birth_date"><spring:message code="emp.birth_date"/></label>
			    <form:input cssClass="form-control" path="birthDate" id="birth_date" style="width: 200px;" />
			    <form:errors path="birthDate" cssClass="help-block"/>
			  </div>
			  <button type="submit" class="btn btn-primary"><spring:message code="emp.edit.submit"/></button>
			  <a href="<c:url value="/employee"/>" class="btn btn-default" role="button"><spring:message code="emp.edit.back"/></a>
		</form:form>
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
