<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@	taglib	prefix="form" uri="http://www.springframework.org/tags/form"	%>
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
	</h1></strong></div>

<form:form modelAttribute="childActivity" method="post">
<h4>Zajęcia dodatkowe</h4>
		<div>Dla kogo:<br>
			<form:select itemValue="id" itemLabel="fullname" path="child.id"
				items="${children}" />
			<%-- <form:errors path="" /> --%>
		</div>
		<div>Wybierz zajęcia<br>
			<form:select itemValue="id" itemLabel="name" path="activity.id"
				items="${activities}" />
			<%-- <form:errors path="" /> --%>
		</div>
		<div>Informacje dodatkowe:<br>
			<form:label path="note"></form:label>
			<form:textarea path="note" />
			<form:errors path="note" />
		</div>
		</div>
				  <form:label path="startDate"></form:label>
			Od kiedy<br><form:input id="datepicker" path="startDate"/>
		
		<div>
		</div>
				  <form:label path="endDate"></form:label>
			Do kiedy<br> <form:input id="datepicker1" path="endDate"/>
		
		<div>
		
		<input type="submit"></input>
	</form:form>
	<a href="hello">powrót</a>
	</div>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
		$(function() {
			$("#datepicker").datepicker();
		});
		$(function() {
			$("#datepicker1").datepicker();
		});
	</script>

</body>
</html>