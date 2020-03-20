
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ page isELIgnored="false" %>
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
		<form:errors path="student.*" cssStyle="color:red"	class="form-control">
		</form:errors>
		
	 
		<form:form action="processForm" modelAttribute="student" method="POST">
			<div class="row">
				<div class="col-md-8">
					<div class="form-group">
						<h1>User Registration Form</h1>
						<hr>
					</div>
					<div class="form-group">
						<form:input path="rollNumber" cssStyle="color:red"
							class="form-control" placeholder="Enter your roll number" />

					</div>
					<div class="form-group">
						<form:input path="name" class="form-control"
							placeholder="Enter your name" />
						<form:errors path="name" cssStyle="color:red" />
					</div>
					<div class="form-group">

						<form:input path="email" class="form-control"
							placeholder="Enter your email" />
					</div>
					<div class="form-group">
						<label>Country:</label>
						<!--  Hardcoding in JSP Page. -->
						 <%-- <form:select path="country">
					  <form:option value="India" label="India"></form:option>
					  <form:option value="Brazil" label="Brazil"></form:option>
					  <form:option value="USA" label="USA"></form:option>
					  <form:option value="Germany" label="Germany"></form:option>
					  </form:select>  --%>
					  
						<!--  We are going to read this value from bean. -->
						
							
						 <form:select path="country">
							<form:options items="${student.countryOptions}" />
						</form:select> 
					</div>
					<div class="form-group">
						<input type="submit" name="btnSubmit" class="btnContact"
							value="Register" />
					</div>

				</div>
			</div>
		</form:form>
	</div>

</body>