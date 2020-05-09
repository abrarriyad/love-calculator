<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Registration</title>
</head>
<body>
	<h1 align="center">Please Register here</h1>

	<form:form action="registration-success" method="GET" modelAttribute="userReg">
	<div align="center">
		<label>User: </label>
		<form:input path="name" />

		<br/>
		
		<label>User Name: </label>
		<form:input path="userName" />		
		<br/>
		
		<label>Password: </label>
		<form:password path="password" />
		<br/>
		
		<label>Country: </label>
		<form:select path="countryName">
			<form:option value="BAN" label="Bangladesh"></form:option>
			<form:option value="USA" label="United States"></form:option>
			<form:option value="PAK" label="Pakistan"></form:option>
			<form:option value="SL" label="Srilanka"></form:option>
		</form:select>		
		<br/>
		<label>Hobbies: </label>
		Cricket: <form:checkbox path="hobbies" value="cricket"/>
		Reading: <form:checkbox path="hobbies" value="reading"/>
		Travel: <form:checkbox path="hobbies" value="travel"/>
		Programming: <form:checkbox path="hobbies" value="programming"/>
		
		<br/>
		<label>Gender: </label>
		Male<form:radiobutton path="gender" value="male"/>
		Female<form:radiobutton path="gender" value="female"/>
		<br/>
		<input type="submit" value="register"/>
		
		</div>
	
	</form:form>


</body>
</html>