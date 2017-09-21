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

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" /> 
</head>
<body>
	<div id="fullscreen_bg" class="fullscreen_bg" />
	<div class="container">
<strong><h1>
		<a class="linki" href="mainSite">Strona główna</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="linki" href="hello">Panel rodzica</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="linki" href="teacher">Panel nauczyciela</a>
	</div></h1></strong>
	<div class="container" id="signupbox" style="margin-top: 50px"
		class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
		
		<form:form modelAttribute="absence" method="post">
			<div class="panel-heading" class="form-group"
				class="col-md-3 control-label" class="col-sm-3">
				<div class="panel-title">Zgłoś nieobecność</div>

			</div>

			<div class="panel-body">
				<form:select itemValue="id" itemLabel="fullname" path="child.id"
					items="${children}" />
				<%-- <form:errors path="firstname" /> --%>
			</div>
			<div class="form-group" class="col-md-3 control-label"
				class="col-sm-3">
				<form:label path="date"></form:label>
				Data:<br></br>
				<form:input type="text" id="datepicker" path="date" />
			</div>
			<div class="form-group" class="col-md-3 control-label"
				class="col-sm-3">
				<form:label path="message">Dodatkowe informaacje</form:label><br></br>
				<form:textarea path="message" />
				<form:errors path="message" />
			</div>

			<input type="submit" ></input>
		</form:form>
	</div>
	<a class="link" href="hello">powrót</a>
	</div>

	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#datepicker").datepicker();
		});
	</script>
</body>
</html>