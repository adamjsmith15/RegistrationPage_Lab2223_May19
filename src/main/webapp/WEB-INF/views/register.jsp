<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link href="https://stackpath.bootstrapcdn.com/bootswatch/4.3.1/darkly/bootstrap.min.css" rel="stylesheet" integrity="sha384-w+8Gqjk9Cuo6XH9HKHG5t5I1VR4YBNdPt/29vwgfZR485eoEJZ8rJRbm3TR32P6k" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="/style.css">
<meta charset="UTF-8">
<title>Registration</title>
</head>
<body>
	<h1>Please fill the form to register</h1>
	<!-- form to take in user information and put into member class -->
	<form name="reg" action="adduser" method="POST" onsubmit="required()">
		<label for="txtFirstName">First Name:</label><input type="text" name="first" required> 
		<br> 
		<label for="txtLastName">Last Name:</label><input type="text" name="last" required> 
		<br>
		<label for="txtEmail">Email:</label><input type="email" name="email" required> 
		<br>
		<label for="txtPhoneNumber">Phone Number:</label><input type="number" name="pn" pattern = "(\d{10})" required> 
		<br>
		<label for="txtPassword">Password:</label><input id = "psw" type= "password" name="pass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" required>
		<br> 
		<label for="txtGender">Gender</label>Male <input type="radio"
			name="gender" value="male"> Female<input type="radio"
			name="gender" value="female">
			<label for="maritalStatus">Marital Status</label>
			<select name = "maritalstatus">
			<option value="married">Married</option>
			<option value="single">Single</option>
			<option value="widowed">Widowed</option>
		</select>
		<label for="txtbday">Birthdate:</label><input type= "date" name="date" required>
			<p>
		<label>Put some text in a box</label>
		<textarea id="myTextArea" name = "description" rows="3" cols="80">Your text here</textarea>
		</p>
		<div class="buttonholder">
		<input type="submit" value="Register">
		</div>
	</form>
	<!-- div holds password verifier information see style.css for more info -->
	<div id="message">
  <h3>Password must contain the following:</h3>
  <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
  <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
  <p id="number" class="invalid">A <b>number</b></p>
  <p id="length" class="invalid">Minimum <b>8 characters</b></p>
</div>

	<script  src="/validation.js"></script>
</html>