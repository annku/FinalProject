<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="/resources/css/register.css" />" />
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

	<div id="fullscreen_bg" class="fullscreen_bg" >
	<div class="container">
		<h1><strong>
				<a class="linki" href="mainSite">Strona główna</a>&nbsp; <a
					class="linki" href="hello">Panel rodzica</a>&nbsp; <a class="linki"
					href="teacher">Panel nauczyciela</a>
			</strong></h1>
	</div>

	<div id="signupbox" style="margin-top: 50px"
		class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
		<div class="panel panel-info">
			<div class="panel-heading">
				<div class="panel-title">Zarejestruj się</div>

			</div>
			<div class="panel-body">
				<form:form modelAttribute="parent" method="post" id="signupform"
					class="form-horizontal" role="form">

					<div class="form-group">
						<form:label path="firstname" class="col-md-3 control-label"></form:label>
						<div class="col-md-9">
							<form:input type="text" path="firstname" class="form-control"
								name="firstname" placeholder="Imię" />
							<form:errors path="firstname" />
						</div>
					</div>


					<div class="form-group">
						<form:label path="lastname" class="col-md-3 control-label"></form:label>
						<div class="col-md-9">
							<form:input type="text" path="lastname" class="form-control"
								name="lastname" placeholder="Nazwisko" />
							<form:errors path="lastname" />
						</div>
					</div>

					<div class="form-group">
						<form:label path="login" class="col-md-3 control-label"></form:label>
						<div class="col-md-9">
							<form:input type="login" path="login" class="form-control"
								name="login" placeholder="Login" />
							<form:errors path="login" />
							<c:out value="${msg}" />
						</div>
					</div>

					<div class="form-group">
						<form:label path="password" class="col-md-3 control-label"></form:label>
						<div class="col-md-9">
							<form:input type="password" path="password" class="form-control"
								name="password" placeholder="Hasło" />
							<form:errors path="password" />
						</div>
					</div>



					<div class="form-group">
						<!-- Button -->
						<div class="col-md-offset-3 col-md-9">
							<input type="submit"></input>

						</div>
					</div>




				</form:form>
				mam już konto <a href="login">zaloguj</a>
			</div>
		</div>
	</div>
	</div>
</body>
</html>