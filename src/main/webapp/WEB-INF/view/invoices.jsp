<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Welcome page</title>
<link rel="stylesheet" href="<c:url value="/resources/css/register.css" />" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
</head>
<body>
<div id="fullscreen_bg" class="fullscreen_bg" >
	<div class="container">
<strong><h1>
		<a class="linki" href="mainSite">Strona główna</a>&nbsp;
		<a class="linki" href="hello">Panel rodzica</a>&nbsp;
		<a class="linki" href="teacher">Panel nauczyciela</a>
	</h1></strong></div>


<div class="container">
<h3>Lista faktur:</h3><br/>

<table class="table table-hover" class="table table-bordered" >
		<tr>
		<th>od:</th>
		<th>do:</th>
		<th>suma</th>
		<th>usuń</th>
		<th>status</th>
	
		</tr>
		</tr>

		<c:forEach var="item" items="${invoices}">

			<tr>
				<td>${item.startDate}</td>
				<td>${item.endDate}</td>
				<td>${item.sum}</td>
				<td><a href="${contextPath}/deleteInvoice/${item.id}">usuń</a></td>
				<td><a href="">zobacz</a></td>
			
			</tr>

		</c:forEach>
	</table>

<a href="${contextPath}/parentList">powrót</a>
</div>
</div>
</body>
</html>