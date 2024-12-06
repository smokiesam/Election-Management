<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NewUser</title>
</head>
<body style="text-align: center;">
	<h1>SIGN UP</h1><hr><br/><br/>
	<form method="post" action="register.jsp">
		First-Name: <input type="text" name="fname"/><br/><br/>
		Last-Name: <input type="text" name="lname"/><br/><br/>
		D.O.B: <input type="date" name="dob"/><br/><br/>
		Email: <input type="email" name="email"/><br/><br/>
		Password: <input type="password" name="passwd"/><br/><br/>
		<br/>
		<input type="submit" value="Signup" /><br/>
		<p>
		Already a user?<a href="index.jsp" />Login</a>
		</p>
	</form>
</body>
</html>