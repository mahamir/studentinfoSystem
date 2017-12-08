<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<%@ include file="header.jsp"%>
<style type="text/css">
body{
background-image: url('resources/img/beauty.jpg');
background-repeat: no-repeat;
background-size: cover;
}
</style>
</head>
<body>

	<h1>Welcome to my World</h1>
	<div class="alert alert-warning alert-dismissible fade show"
		role="alert">
		<strong>welcome to my world</strong> ${username}
		<button type="button" class="close" data-dismiss="alert"
			aria-label="close">
			<span aria-hidden="true">&times;</span>
		</button>
	</div>
</body>
</html>