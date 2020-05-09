<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">
.error {
	color:red;
	position:fixed;
	text-align: left;
	margin-left:30px;
}
</style>

<script type="text/javascript">
	function validate() {
		var userName = document.getElementById("yn").value
		if (userName.length < 3) {
			alert("Invalid name");
			return false;
		} else
			return true;
	}
</script>


</head>
<body>
	<h3 align="center">Love Calculator</h3>
	<hr>
	<form:form action="process-homepage" method="get"
		modelAttribute="userInfo" onsubmit="validate()">

		<div align="center">
			<p>
				<label for="yn">Your Name : </label>
				<form:input type="text" id="yn" path="userName" />
				<form:errors class="error" path="userName" />
			</p>

			<p>
				<label for="cn">Crush Name : </label>
				<form:input type="text" id="cn" path="crushName" />
				<form:errors class="error" path="crushName" />
			</p>
			
			<p>
			<form:checkbox id="check" path="termAndCondition"/>
			<label>I am agreeing that this is for fun</label>
			<form:errors class="error" path="termAndCondition"/>
			</p>
			
			<input type="submit" value="calculate" />

		</div>

	</form:form>
</body>
</html>