<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<p>Here's Your Omikuji!</p>
	<div class="custom-container text-center" style="border:2px solid black; width:150px; background-color: #9fc5f8">
	<p>In <c:out value="${numberpick}"/> years, you will
	live in <c:out value="${cityname}"/> with
	<c:out value="${personname}"/> as your
	room-mate, making a living
	off <c:out value="${endeavor}"/>.
	The next time you
	see a <c:out value="${livingthing}"/>, you will
	 have good luck.
	Also, <c:out value="${kindness}"/></p>
	</div>
	<a href="/omiikuji">Go Back</a>
</body>
</html>