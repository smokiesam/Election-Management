<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
</head>
<body>
	<h2>Registration Status</h2>
	<jsp:useBean id="rb" class="com.sunbeam.beans.RegisterBean" scope="session"/>
	<jsp:setProperty property="*" name="rb"/>
	
	${rb.register()}
	
	<c:choose>
		<c:when test="${rb.getSave()!=0}">
			Registration Successful!;
			<c:redirect url="index.jsp"/>
		</c:when>
		<c:otherwise>
			Registration Failed. Please Try Again!
			<c:redirect url="newuser.jsp"/>
		</c:otherwise>
	</c:choose>
</body>
</html>