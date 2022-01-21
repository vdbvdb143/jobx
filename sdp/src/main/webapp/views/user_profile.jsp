<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>User Profile</h1>
 	<form:form  method="post" modelAttribute="profile" action="/user_updateProfile">
	   	<div>
	      <div>
	        <label>First Name</label>
	        <form:input type="text" path="firstname" required="required"/>
	      </div>
	      
	      <div>
	        <label>Last Name</label>
	        <form:input type="text" path="lastname" required="required"/>
	      </div>
	      
	      <div>
	        <label>Email</label>
	        <form:input type="email" path="email" required="required"/>
	      </div>
	      
	      <div>
	        <label>Password</label>
	        <form:input type="password" path="password" required="required"/>
	      </div>
	      
	      <div>
	        <label>Mobile Number</label>
	        <form:input type="text" path="mobilenumber" required="required"/>
	      </div>
	      
	      <div>
	        <button type="submit">Submit</button>
	      </div>
	   	</div>
	</form:form>

</body>
</html>