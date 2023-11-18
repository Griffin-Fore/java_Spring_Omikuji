<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" href="/css/main.css"/>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<p>Send An Omikuji!</p>
	<div class="card" style="border: 2px solid black; width: 250px;">
		<div class="text-left">
			<form action="/omikuji/session" method="POST">
				<p>Pick any number from 5 to 25</p>
				<input type="number" name="numberpick" min="5" max="25">
				<p><c:out value="${numberPickError}"/></p>
				<p>Enter the name of any city.</p>
				<input type="text" name="cityname">
				<p><c:out value="${cityNameError}"/></p>
				<p>Enter the name of any real person.</p>
				<input type="text" name="personname">
				<p><c:out value="${personNameError}"/></p>
				<p>Enter professional endeavor or hobby:</p>
				<input  type="text" name="endeavor">
				<p><c:out value="${endeavorError}"/></p>
				<p>Enter any type of living thing.</p>
				<input type="text" name="livingthing">
				<p><c:out value="${livingThingError}"/></p>
				<p>>Say something nice to someone:</p>
				<textarea name="kindness" rows="3" cols="30"></textarea>
				<p><c:out value="${kindnessError}"/></p>			
				<p><em>Send and show a friend</em></p>
				<div style="display:flex; justify-content:flex-end;">
					<input class="btn btn-primary" type="submit" value="Send">
				</div>
			</form>
		</div>
	</div>
</body>
</html>