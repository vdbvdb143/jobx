<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Profile</h1>
	<form:form  method="post" modelAttribute="profile" action="/com_updateProfile">
		<div>
			<div>
				<label>Company Name</label>
				<form:input type="text" path="companyname"  required="required"/>
			</div>
			
			<div>
				<label>Email</label>
				<form:input type="email" path="com_email" required="required"/>
			</div>
			<div>
				<label>Passwored</label>
				<form:input type="password" path="password" required="required"/>
			</div>
			<div>
				<label>Address</label>
				<form:input type="text" path="address" required="required"/>
			</div>
			<div>
				<button type="submit">Sign Up</button>
			</div>
		</div>
	</form:form>

</body>
</html>