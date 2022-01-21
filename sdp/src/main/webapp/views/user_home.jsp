<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<c:if test="${not empty details}">
			<h1> Welcome  ${details} </h1>
			<a href="/user_profile">Profile</a><br><br>
			<a href="/jobsearch">Jobsearch</a><br><br>
			<a href="/status">View status</a><br><br>
			<a href="/user_logout">Logout</a>
		</c:if>
		
		<c:if test="${empty details}">  
        	<a href="/user_login">Login</a>
    	</c:if>  
      
</body>
</html>