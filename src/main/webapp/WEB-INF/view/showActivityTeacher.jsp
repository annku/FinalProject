<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Welcome page</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/register.css" />" />
</head>
<body>
<div id="fullscreen_bg" class="fullscreen_bg" />
	<div class="container">
<strong><h1>
		<a class="linki" href="mainSite">Strona główna</a>&nbsp;
		<a class="linki" href="hello">Panel rodzica</a>&nbsp;
		<a class="linki" href="teacher">Panel nauczyciela</a>
</h1></strong>	</div>



Zajęcia dodatkowe:<br>

<table border=1>
	<tr><th>Zajęcia</th>
	<th>cena</th>
	<th>uczestnicy</th>
	<th>edytuj</th>
	<th>usuń</th>
	
	</tr>
		<c:forEach var="item" items="${activities}">

			<tr>
				<td><strong>${item.name}</strong><br>
				${item.description}</td><td>${item.price}</td>
				<td><a href="${contextPath}/enrolledChildren/${item.id}">pokaż</a></td>
				<td><a href="${contextPath}/editAct/${item.id}">edytuj</a></td>
				<td><a href="${contextPath}/deleteAct/${item.id}">usuń</a></td>
	
			
			</tr>

		</c:forEach>
	</table>

<a href="child">Zapisz dziecko</a><br>
<a href="activity">Dodaj zajęcia dodatkowe</a><br>
<a href="teacher">powrót</a>
	</div>

</body>
</html>