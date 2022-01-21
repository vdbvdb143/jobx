<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  </head>
  <body>

      <div class="container">
          <div class="head">Application Form</div>
          
	<form:form method="post" action="/submitApply" modelAttribute="jobForm">        
		<div class="form-group">
          <label for="exampleInputEmail1">First Name </label>
          
          <form:input type="text" path="firstName" class="form-control" placeholder="First Name" required="required"/>
        </div>
        <div class="form-group">
          <label for="exampleInputPassword1">Last Name</label>
          <form:input type="text" class="form-control" path="lastName"  placeholder="Last Name" required="required"/>
        </div>
        
        <%-- <div class="form-check">
            <form:input class="form-check-input gen" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" />
            <label class="form-check-label" for="exampleRadios1">
                Male</label>
            <input class="form-check-input gen" type="radio" name="exampleRadios" id="exampleRadios1" value="option1" >
            <label class="form-check-label" for="exampleRadios1">
                Female</label> 
        </div> --%>
        
        <div class="form-group">
          <label for="exampleInputEmail1">Gender </label>
          <form:input type="text" class="form-control"  placeholder="Enter gender" path="gender" required="required"/>
        </div>
        
        <div class="form-group">
          <label for="exampleInputEmail1">Email </label>
          <form:input type="email" class="form-control"  placeholder="Enter email" path="email" required="required"/>
        </div>
        
        <div class="form-group">
          <label for="exampleInputEmail1">Mobile number</label>
          <form:input type="text" class="form-control"  placeholder="Mobile_Number" path="mobilenumber" required="required"/>
        </div>
        <select class="form-select form-select-lg mb-3 dropdown-toggle" aria-label=".form-select-lg example">
        
            <option selected>Graduation</option>
            <option value="1">2021</option>
            <option value="2">2022</option>
            <option value="3">2023</option>
            
          </select>
          <br>
        <button type="submit" class="btn btn-primary">Apply</button>
	</form:form>    
</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
<style>
.container{
    width:40%;
    padding-top:40px;
    margin-top:40px;
}
.head{
    margin-left:35%;
}

.form-check input{
    margin-right:20px;
}
.form-check label{
    margin-right:20px;
}

</style>