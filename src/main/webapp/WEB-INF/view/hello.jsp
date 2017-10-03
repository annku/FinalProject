<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Welcome page</title>
<link rel="stylesheet"	href="<c:url value="/resources/css/register.css" />" />
</head>
<body>

	<div id="fullscreen_bg" class="fullscreen_bg" >
	<div class="container">

<h1><strong>
		<a class="linki" href="${contextPath}/hello">Panel rodzica</a>&nbsp;
		<a class="linki" href="${contextPath}/teacher">Panel nauczyciela</a>&nbsp;
		<a class="linki" href="${contextPath}/contact">Kontakt</a>&nbsp;
		<a class="linki" href="${contextPath}/invalidate">Wyloguj</a>
</strong></h1>	</div>
	<a href="${contextPath}/parent">Rejestracja</a>
	<br/>
	<a href="${contextPath}/showActivity">Zajęcia dodatkowe</a>
	<br/>
	<a href="${contextPath}/enroll">Zapisz dziecko na zajęcia dodatkowe</a>
	<br/> <a href="${contextPath}/absence">Zgłoś nieobecność</a><br/>
	<a href="${contextPath}/myInvoices">Moje faktury</a><br/>
			</div>
</body>
</html>