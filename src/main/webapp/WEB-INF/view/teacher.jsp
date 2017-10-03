<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Welcome page</title>

<link rel="stylesheet"
	href="<c:url value="/resources/css/register.css" />" />
</head>
<body>

	<div class="container">
<h1><strong>
		<a class="linki" href="mainSite">Strona główna</a>&nbsp;
		<a class="linki" href="hello">Panel rodzica</a>&nbsp;
		<a class="linki" href="teacher">Panel nauczyciela</a>
	
</strong></h1></div>
<br></br><br></br>
<a href="child">Zapisz dziecko</a><br/>
<a href="activity">Dodaj zajęcia dodatkowe</a><br/>
<a href="showActivityTeacher">Zajęcia dodatkowe</a><br/>
<a href="childList">Lista dzieci</a><br/>
<a href="parentList">Lista rodziców</a>

</body>
</html>