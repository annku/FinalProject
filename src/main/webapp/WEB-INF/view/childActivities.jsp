<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Welcome page</title>
<link rel="stylesheet"	href="<c:url value="/resources/css/register.css" />" />

<style type="">
body {
	text-align: center;
}

table {
	width: 200px;
	margin: 0 auto;
	text-align: left;
}
</style>

</head>
<body>

	<div id="fullscreen_bg" class="fullscreen_bg" >
	<div class="container">
		<h1><strong>
				<a class="linki" href="${contextPath}/mainSite">Strona główna</a>&nbsp;
				<a class="linki" href="${contextPath}/hello">Panel rodzica</a>&nbsp;
				<a class="linki" href="${contextPath}/teacher">Panel nauczyciela</a>
			</strong></h1>
	</div>


	
	<br></br> Zajęcia dodatkowe:
	<br></br>

		<table class="table table-condensed">
			<tr>
				<th>imię i nazwisko</th>
				<td>${child.fullname}</td>
			</tr>
			<tr>
				<th>zajęcia dodatkowe:</th>
				<td>
					<table>
				<c:forEach var="item" items="${activities}">
				<tr>
						<td>${item.name}</td>
				</tr>
				</c:forEach>
				
					</table>
				</td>
			</tr>
			
		</table>
	<a href="${contextPath}/childList">powrót</a>
	</div>
</body>
</html>