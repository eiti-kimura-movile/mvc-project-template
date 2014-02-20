<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta name="menu" content="about" />
<title><spring:message code="about.main.title" /></title>
</head>
<body>

	<h1>
		<spring:message code="about.main.title" />
	</h1>
	<div class="alert alert-warning">
		<spring:message code="about.warn.message" />
	</div>
	<p class="lead">
		<spring:message code="about.text" />
	</p>

	<table class="table table-hover">
		<tbody>
			<tr>
				<td><img src="http://www.gravatar.com/avatar/0409352bf67cc9886042662578f03664.png" style="width: 30px; height: 30px"/> &nbsp; Eiti Kimura</td>
				<td>eiti.kimura@movile.com</td>
			</tr>
			<tr>
				<td>Felipe Gasparini</td>
				<td>felipe.gasparini@movile.com</td>
			</tr>
			<tr>
				<td>Ricardo Ito</td>
				<td>ricardo.ito@movile.com</td>
			</tr>
			<tr>
				<td>Ronaldo Ronie</td>
				<td>ronaldo.ronie@movile.com</td>
			</tr>
		</tbody>
	</table>
</body>
</html>
