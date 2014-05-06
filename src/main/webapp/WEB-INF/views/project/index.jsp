<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta name="menu" content="project" />
<title><spring:message code="proj.main.title" /></title>

</head>
<body>
	<h1>
		<spring:message code="proj.list" />
	</h1>

	<br />
	<div class="panel panel-default">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th><spring:message code="proj.name" /></th>
					<th><spring:message code="proj.start_date" /></th>
					<th><spring:message code="proj.end_date" /></th>
					<th><spring:message code="proj.finished" /></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="proj">
					<tr>
						<td>${proj.id}</td>
						<td>${proj.name}</td>
						<td>${proj.startDate}</td>
						<td>${proj.endDate}</td>
						<td>${proj.finished}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>