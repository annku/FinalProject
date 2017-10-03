<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <%@ page isELIgnored="false" %>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Welcome page</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/register.css" />" />

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  
  
</head>
<body>
	<div id="fullscreen_bg" class="fullscreen_bg" >
	<div class="container">
<h1><strong>
		<a class="linki" href="mainSite">Strona główna</a>&nbsp;
		<a class="linki" href="hello">Panel rodzica</a>&nbsp;
		<a class="linki" href="teacher">Panel nauczyciela</a>&nbsp;
	</strong></h1>




<table class="table table-hover" class="table table-condensed">
	<br/>
		<c:forEach var="item" items="${activities}">

			<tr>
				<td><strong>${item.name}</strong><br/>
				${item.description}</td><td>${item.price}</td>
	
			
			</tr>

		</c:forEach>
	</table>

<a href="enroll" class="btn btn-default btn-lg">Zapisz dziecko</a><br/><br></br>

<a href="hello" class="btn btn-default btn-lg">powrót</a>
	</div></div>
</body>
</html>