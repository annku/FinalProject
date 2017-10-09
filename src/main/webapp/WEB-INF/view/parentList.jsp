<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Welcome page</title>
<link rel="stylesheet" 	href="<c:url value="/resources/css/register.css" />" />
<link rel="stylesheet"	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
<link rel="stylesheet"  href="/resources/demos/style.css"/>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	
</head>
<body>
	<div class="container">
		<div id="fullscreen_bg" class="fullscreen_bg" >
		<div class="container">
			<h1><strong>
					<a class="linki" href="mainSite">Strona główna</a>&nbsp; <a
						class="linki" href="hello">Panel rodzica</a>&nbsp; <a
						class="linki" href="teacher">Panel nauczyciela</a>
				</strong></h1>
		</div>

<strong><c:out value="${msg}"></c:out></strong>

		<br/> Rodzice:<br/>

				<table class="table table-hover">
					<tr>
						<th>imię</th>
						<th>nazwisko</th>
						<th>usuwanie</th>
						<th>faktura</th>
						<th>wystawione faktury</th>

					</tr>
					

					<c:forEach var="item" items="${parents}">

						<tr>
							<td>${item.firstname}</td>
							<td>${item.lastname}</td>
							<td><a href="${contextPath}/deleteParent/${item.id}">usuń</a></td>
							<td><a href="${contextPath}/newInvoice/${item.id}">wystaw fakturę</a></td>
							<td><a href="${contextPath}/invoices/${item.id}">zobacz</a></td>
						</tr>

					</c:forEach>
				</table>
				<a href="child">Zapisz dziecko</a><br/> 
				<a href="activity">Dodaj zajęcia dodatkowe</a> <br/> 
				<a href="hello">powrót</a> <br/>
	</div>
</div>

</body>
</html>