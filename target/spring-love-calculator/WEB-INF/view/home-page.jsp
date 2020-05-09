<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3 align="center">Love Calculator</h3>
	<hr>
	<form:form action="process-homepage" method="get" modelAttribute="userInfo">
	
	<div align="center">
		<p>
			<label for="yn">Your Name : </label> 
			<form:input type="text" id="yn" path="userName"/>
		</p>

		<p>
			<label for="cn">Crush Name : </label> 
			<form:input type="text" id="cn" path="crushName"/>
		</p>

		<input type="submit" value="calculate" />

	</div>
	
	</form:form>
</body>
</html>