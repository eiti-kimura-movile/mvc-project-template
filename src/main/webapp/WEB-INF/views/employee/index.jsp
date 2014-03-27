<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta name="menu" content="emp" />
<title><spring:message code="emp.main.title" /></title>

<spring:message code="emp.basic.remove.confirm"/>

<script language="javascript">
	function confirmWarning(url, name) {
		if (confirm("<spring:message code='emp.basic.remove.confirm' javaScriptEscape='true' /> " + name + "?")) {
			window.location.href = url;
		}
	}
</script>

</head>
<body>
	<h1>
		<spring:message code="emp.list" />
	</h1>

	<c:if test="${SUCCESS_MESSAGE eq true}">
	   <div class="alert alert-warn">${emp.id} - ${emp.name}<spring:message code="emp.remove.success"/></div>
	</c:if>
          
	<br />
	<div class="panel panel-default">
		<!-- Default panel contents -->
		<div class="panel-heading">
			<a href="<c:url value="/employee/new"/>" class="btn btn-primary"
				role="button"><spring:message code="emp.new" text="New Employee" /></a>
			&nbsp;
			<spring:message code="emp.list.message" />
			${fn:length(list)} - ${pageContext.response.locale}
		</div>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th><spring:message code="emp.name" /></th>
					<th><spring:message code="emp.birth_date" /></th>
					<th><spring:message code="emp.email" /></th>
					<th><spring:message code="emp.dept" /></th>
					<th><spring:message code="emp.det" /></th>
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
						<td><a href="<c:url value="employee/${emp.id}/edit"/>"> <span
								class="glyphicon glyphicon-pencil"
								title="<spring:message code="emp.basic.edit.tip"/>" /> 
								
							 <a href="javascript:confirmWarning('<c:url value="employee/${emp.id}/remove"/>','${emp.name}');"> <span
									class="glyphicon glyphicon-remove"
								title="<spring:message code="emp.basic.remove.tip"/>" />
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</body>
</html>