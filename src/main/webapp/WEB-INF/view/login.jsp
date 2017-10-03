<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Register</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/register.css" />" />
	<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<form:form modelAttribute="user" method="post" class="form-horizontal" >
<br/>Login
		<div>
			<form:label path="login"></form:label>
			<form:input type="login" path="login" />
			<form:errors path="login" />
		</div>
		<br/>Hasło
		<div>
			<form:label path="password"></form:label>
			<form:password path="password" />
			<form:errors path="password" />
		</div>

		<input type="submit"></input>
	</form:form>
	<h1>${msg }</h1>
</body>
</html>