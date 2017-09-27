<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/register.css" />" />

<!-- 	    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
</head>
<body>
	<div id="fullscreen_bg" class="fullscreen_bg" />
	<div class="container">
<strong><h1>
		<a class="linki" href="${contextPath}/mainSite">Strona główna</a>&nbsp;
		<a class="linki" href="${contextPath}/hello">Panel rodzica</a>&nbsp;
		<a class="linki" href="${contextPath}/teacher">Panel nauczyciela</a>
	</h1></strong></div>

	<form:form modelAttribute="child" method="post" class="form-horizontal">
		<h4>Edytuj dane dziecka</h4>
		<div>
			<form:label path="firstname">
			</form:label>
			<form:input path="firstname"></form:input>
			<form:errors path="firstname" />
		</div>

		<div>
			<form:label path="lastname">
			</form:label>
			<form:input path="lastname" />
			<form:errors path="lastname" />
		</div>

		<div>
			<form:label path="age">
			</form:label>
			<form:input path="age" />
			<form:errors path="age" />
		</div>

		<div>
			<form:select itemValue="id" itemLabel="fullname" path="parent.id"
				items="${parents}" />
			<%-- <form:errors path="" /> --%>
		</div>

		<div>
			<form:label path="id"></form:label>
			<form:hidden path="id" />
		</div>

		<input type="submit" class="btn btn-default btn-lg" value="Zapisz"></input>
	</form:form>
	<a href="${contextPath}/teacher" class="btn btn-default btn-lg">powrót</a>
	</div>
</body>
</html>