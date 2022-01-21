<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>


<!doctype html>
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
        </svg><a href="/">Back</a></button>  
    </div>
      
      <div class="heading">
        <h4>Post an Opening</h4>
      </div>
    <div class="container">
        <form:form action="/create_batch_submit" method="post" modelAttribute="cb">
            <div class="form-group">
              <label >Name</label>
              <form:input type="text" class="form-control"  path="name"  placeholder="Enter Name" required="required"/>
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Job Role</label>
              <form:input type="text" class="form-control"  path="role" placeholder="Enter Role" required="required" />
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Openings</label>
                <form:input type="text" class="form-control"  path="count" placeholder="Number of openings" required="required"/>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Stipend</label>
                <form:input type="text" class="form-control" path="stipend" placeholder="salary" required="required"/>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Start date</label>
                <form:input type="date" class="form-control" path="StartDate" placeholder="Start date" required="required"/>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">End date</label>
                <form:input type="date" class="form-control"  path="EndDate"  placeholder="End date" required="required"/>
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">type</label>
                <select class="form-control" name="" id="">
                    <option value="full time" default>Full time</option>
                    <option value="internship">Internship</option>
                </select>

            </div>

            
            
            <button type="submit" class="btn btn-primary">Post</button>
          </form:form>

    </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>
<style>
.container{
    margin-top:2%;
    width: 40%;
    height: 40%;
}
.heading{
    padding-left:43%;
  }
.left{
padding-top: 10px;
padding-left:10px;
}


</style>