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
</head>
<body>
	<div id="fullscreen_bg" class="fullscreen_bg" />
	<div class="container">
<strong><h1>
		<a class="linki" href="mainSite">Strona główna</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="linki" href="hello">Panel rodzica</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<a class="linki" href="teacher">Panel nauczyciela</a>
</h1></strong>	</div>
<form:form modelAttribute="child" method="post">
<h2>Zapisz dziecko</h2>
		<div>
			<form:label path="firstname">Imię</form:label><br>
			<form:input type="firstname" path="firstname" ></form:input>
			<form:errors path="firstname" />
		</div>
		<div>
			<form:label path="lastname">Nazwisko</form:label><br>
			<form:input type="lastname" path="lastname" />
			<form:errors path="lastname" />
		</div>
		<div>
			<form:label path="age">Wiek</form:label><br>
			<form:input type="age" path="age" />
			<form:errors path="age" />
		</div>
		<div>
			Rodzic<br>
			<form:select itemValue="id" itemLabel="fullname" path="parent.id"
				items="${parents}" />
			<%-- <form:errors path="" /> --%>
		</div>
		
		<input type="submit"></input>
	</form:form>
	<a href="teacher">powrót</a>
</div>
</body>
</html>