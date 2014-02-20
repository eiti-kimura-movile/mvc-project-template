<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta name="menu" content="emp" />
<title><spring:message code="emp.main.title"/></title>
</head>
<body>

	<h1><spring:message code="emp.list"/></h1>
	<br />
	<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading">
		    <a href="<c:url value="/employee/new"/>" class="btn btn-primary" role="button"><spring:message code="emp.new" text="New Employee"/></a> &nbsp;
		    <spring:message code="emp.list.message"/> ${fn:length(list)} - ${pageContext.response.locale}
		</div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th><spring:message code="emp.name"/></th>
					<th><spring:message code="emp.birth_date"/></th>
					<th><spring:message code="emp.email"/></th>
					<th><spring:message code="emp.dept"/></th>
					<th><spring:message code="emp.det"/></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="emp">
					<tr>
						<td>${emp.id}</td>
						<td>${emp.name}</td>
						<td>${emp.birthDate}</td>
						<td>${emp.email}</td>
						<td>${emp.department}</td>
						<td>
						    <a href="<c:url value="employee/${emp.id}/edit"/>">
						      <span class="glyphicon glyphicon-pencil" title="<spring:message code="emp.basic.edit.tip"/>"/>
						    </a>
						    <span class="glyphicon glyphicon-phone-alt" title="<spring:message code="emp.contact.edit.tip"/>"/>
						    <span class="glyphicon glyphicon-folder-open" title="<spring:message code="emp.docs.edit.tip"/>"/>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>