<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Logging</title>
</head>
<body>
	<jsp:useBean id="lb" class="com.sunbeam.beans.LoginBean" />
	<jsp:setProperty property="*" name="lb"/>

	${lb.authenticate()}
	
	<c:choose>
		<c:when test="${lb.user!=null}">
			<c:choose>
				<c:when test="${lb.user.role == 'admin'}">
					<c:redirect url="result.jsp" />
				</c:when>
				<c:otherwise>
				<c:redirect url="candlist.jsp" />
				</c:otherwise>
			</c:choose>
		</c:when>
		<c:otherwise>
			<h2>Login Failed!</h2>
			<p>Invalid email or password!</p>
			<p>
				<a href="index.html">Login Again</a>
			</p>	
		</c:otherwise>
	</c:choose>
	
</body>
</html>