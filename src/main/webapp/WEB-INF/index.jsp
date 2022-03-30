<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Omikuji Form</title>
<link rel="stylesheet" type="text/css" href="/css/style.css">
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript" src="js/app.js"></script>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container text-center">
		<h1>Send an Omikuji</h1>
	</div>
	<div class ="container text-center border border-4">
		<form action="/info" method="post">
		<div class="mb-3">
			<label for ="numbers">Pick any number from 5 to 25</label>
			<input type="number" id="numbers" name="numbers" min="5" max="25">
		</div>
		<div class="mb-3">
			<label for="city">Enter the name of any city:</label>
			<input type="text" id="city" name="city">
		</div>
		<div class="mb-3">
			<label for="person">Enter the name of any real person:</label>
			<input type="text" id="person" name="person">
		</div>
		<div class="mb-3">
			<label for="hobby">Enter professional endeavor or hobby:</label>
			<input type="text" id="hobby" name="hobby">
		</div>
		<div class="mb-3">
			<label for="thing">Enter any type of living thing:</label>
			<input type="text" id="thing" name="thing">
		</div>
		<div class="mb-3">
			<label for="comment">Comments:</label>
			<textarea class="form-control" rows="5" cols="5" id="comment" name="comment"></textarea>
		</div>
		<input type ="submit" value="submit">
		</form>
		
	</div>
	
	
		

			
		
	

</body>
</html>