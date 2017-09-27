<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Welcome page</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/register.css" />" />

<style type="">
body {
	text-align: center;
}

table {
	width: 500px;
	margin: 0 auto;
	text-align: left;
}
</style>

</head>
<body>

	<div id="fullscreen_bg" class="fullscreen_bg" />
	<div class="container">
		<strong><h1>
				<a class="linki" href="${contextPath}/mainSite">Strona główna</a>&nbsp;
				<a class="linki" href="${contextPath}/hello">Panel rodzica</a>&nbsp;
				<a class="linki" href="${contextPath}/teacher">Panel nauczyciela</a>
			</h1></strong>
	</div>


	<br></br>
	<br></br> Rachunek:
	<br><br></br>

		<table class="table table-condensed">
			<tr>
				<th>imię i nazwisko</th>
				<td>${invoice.parent.fullname}</td>
			</tr>
			<tr>

				<th>od:</th>
				<td><fmt:formatDate value="${invoice.startDate}"
						pattern="dd/MM/YYYY" /></td>
			</tr>
			<tr>
				<th>do:</th>
				<td><fmt:formatDate value="${invoice.endDate}"
						pattern="dd/MM/YYYY" /></td>
			</tr>
			<tr>
				<th>nieobecności:</th>
				<td>
					<table>
						<c:forEach var="item" items="${invoice.absences}">
							<tr>

								<td>${item.date}</td>
								<td>${item.child.fullname}</td>

							</tr>
						</c:forEach>
					</table>
				</td>
			</tr>
			<tr>
				<th>suma:</th>
				<td>${invoice.sum}</td>
			</tr>

		</table>
	<a href="${contextPath}/parentList">powrót</a>
	</div>
</body>
</html>