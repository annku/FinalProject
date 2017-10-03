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
<link rel="stylesheet"	href="<c:url value="/resources/css/register.css" />" />
<link rel="stylesheet"	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"/>
<link rel="stylesheet"  href="/resources/demos/style.css"/>
<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

	
</head>
<body>
	<div class="container">
		<div id="fullscreen_bg" class="fullscreen_bg" />
		<div class="container">
			<h1><strong>
					<a class="linki" href="${contextPath}/mainSite">Strona główna</a>&nbsp; <a
						class="linki" href="${contextPath}/hello">Panel rodzica</a>&nbsp; <a
						class="linki" href="${contextPath}/teacher">Panel nauczyciela</a>
				</strong></h1>
		</div>

		<h3>Nieobecności</h3>
		
			<form action="${contextPath}/childAbsences/${id}"
				method="post">
				<table class="table table-hover">
				<tr>
					<th>imię i nazwisko</th>
					<th colspan="2">wybierz zakres dat</th>
					<th></th>
				</tr>
				<tr>
					<td>${child.fullname}</td>
					<td><label for="startDate"></label>
						<input	class="datepicker" id="startDate"/></td>
					<td><label for="endDate"></label> 
						<input	class="datepicker" id="endDate"/></td>
						
					<td><input class="col-md-offset-3 col-md-9" 
						type="submit" value="wyślij"></input></td>
			</tr>
			</table>
			</form>

			
		
		<a href="${contextPath}/child">Zapisz dziecko</a><br/> 
		<a href="${contextPath}/activity">Dodaj zajęcia dodatkowe</a> <br/> 
		<a href="${contextPath}/hello">powrót</a> <br/>
	</div>
	
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<script>
	
	$(function() {
			
			$('.datepicker').datepicker();
			$('.datepicker').datepicker('setDate', 'today');
			$('.datepicker').datepicker( {maxDate: '0' });
		}); 
			
	</script>

</body>
</html>