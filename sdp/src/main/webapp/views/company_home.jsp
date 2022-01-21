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
			<a href="/com_profile">Profile</a><br><br>
			
			<a href="/createbatch">Create Batch</a><br><br>	
			
			<a href="/display">Job Applications</a>
			
			<a href="/com_logout">Logout</a>
		</c:if>
		
		<c:if test="${empty details}">
        	<a href="/com_login">Login</a>
    	</c:if>  
	
</body>
</html>