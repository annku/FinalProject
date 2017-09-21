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
<form:form modelAttribute="activity" method="post">
<h2>Edytuj zajęcia dodatkowe</h2>
		<div>
			<form:label path="name">Nazwa<br></br></form:label>
			<form:input type="name" path="name" ></form:input>
			<form:errors path="name" />
		</div>
		<div>
			<form:label path="description">Opis<br></br></form:label>
			<form:textarea type="description" path="description" />
			<form:errors path="description" />
		</div>
		<div>
			<form:label path="price">Cena<br></br></form:label>
			<form:input path="price" />
			<form:errors path="price" />
		</div>
	
		
		<input type="submit"></input>
	</form:form>
	<a href="${contextPath}/showActivityTeacher">powrót</a>
</div>
</body>
</html>