
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<link href="../resources/css/regForm.css" rel="stylesheet">
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="container contact-form">
		<div class="contact-image">
			<img src="https://image.ibb.co/kUagtU/rocket_contact.png"
				alt="rocket_contact" />
		</div>
		 


		<div class="row">
			<div class="col-md-8">
				<div class="form-group">
					<h1>User Registration Form</h1>
					<hr>
				</div>
				<div class="form-group">Roll Number:${student.rollNumber}</div>
				<div class="form-group">Name:${student.name}</div>
				<div class="form-group">Email:${student.email}</div>
				<div class="form-group">Country:${student.country}</div>

			</div>


		</div>
	</div>



</body>