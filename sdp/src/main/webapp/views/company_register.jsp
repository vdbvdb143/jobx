<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!Doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  </head>
  <body>
    <div class="left">
      <button class=" btn btn-primary"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
        <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
      </svg><a href="/com_login" class="linkk">Login</a></button>
      <div class="heading">
        <h5>Job Recruiter Register</h5>
      </div>
      
    </div>
    
      <div class="something">
        <div class="container">
          
            <form:form method="post" modelAttribute="companyRegister" action="/companyRegisterVerify">
                <div class="form-group">
                  <label for="exampleInputEmail1">Company Name</label>
                  <form:input type="text" class="form-control"  placeholder="Company Name" path="companyname" required="required"/>
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Location</label>
                  <form:input type="text" class="form-control"  placeholder="Address" path="address" required="required"/>
                </div>
                <div class="form-row">
                    <div class="form-group col-md-6">
                      <label for="inputEmail4">Email</label>
                      <form:input type="email" class="form-control" placeholder="Email" path="com_email" required="required"/>
                    </div>
                    <div class="form-group col-md-6">
                      <label for="inputPassword4">Password</label>
                      <form:input type="password" class="form-control"  placeholder="Password" path="password" required="required"/>
                    </div>
                  </div>
                <button type="submit" class="btn btn-primary">Register</button>
              </form:form>
              
          
          </div>
      </div>
          
         


          </body>
      

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
<style>
  .heading{
    padding-left:30%;
    

  }
   .linkk{
  color:white;
 }
 .linkk:hover{
 color:white;
 }
  .left{
    padding-top: 10px;
    padding-left:10px;
  }
.img-register{
    width:100%;

    display: inline-block;
}
.navbar-brand{
  margin-left:30px;
}

.navbar-collapse{
  margin-left:30px;
}
.container{
   align-items: center;
   margin-top:5%;
   width:40%;
}
body{
  background-image: url("https://internshala.com/static/images/registration/student/background-1366.png");
}

</style>