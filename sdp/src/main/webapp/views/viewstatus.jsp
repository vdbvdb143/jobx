<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@page import="com.example.demo.company.CreateBatch,java.util.List" %>

<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous"/>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<!-- 
    <title>Hello, world!</title> -->
  </head>
  <body>
  <c:set var="count" value="0" scope="page"/>
  <c:forEach items="${cbstatus}" var="li" >
  
    <div class="card">
        <div class="card-body">
            <h5 class="job-title"> ${li.getRole()}</h5>
            <h6 class="card-subtitle mb-2 text-muted">${li.getComName()}</h6>
            <i class="fa fa-home wf" aria-hidden="true"></i>    work from home

            <div class="details">
                <div class="details2">
                    <i class="far fa-play-circle card-subtitle text-muted">   Start date</i>
                    <br>
                    ${li.getStartDate()}
                </div>
                <div class="details2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-calendar" viewBox="0 0 16 16">
                        <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z"/>
                      </svg>
                    <i class="far card-subtitle text-muted">Duration</i>
                    <br>
                       ${li.getDuration()} Months
                </div>
                <div class="details2">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cash" viewBox="0 0 16 16">
                        <path d="M8 10a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/>
                        <path d="M0 4a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V4zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V6a2 2 0 0 1-2-2H3z"/>
                      </svg>
                    <i class="far card-subtitle text-muted">stipend</i>
                    <br>
                      ${li.getStipend()}
                </div>
                <div class="details2">
                    <i class="far fa-hourglass-start card-subtitle text-muted">   Applyby</i>
                    <br>
                      ${li.getEndDate()}
                </div>
                <div class="details2">
                      <c:out value="${jbstatus[count].getStatus()}"></c:out>
						  <c:set  var="count" value="${count+1}" scope="page"/>
						
                    <br>
                      
                </div>
                

            </div>


            

            
        </div>

    </div>
</c:forEach>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
<style>
    .wf{
        padding-bottom: 15px;
    }
    .details2{
        display: inline-block;
        padding-right:40px;
    }
    .applylink{
        display: inline-block;
        padding-left:10%;
    }
.card{
    width:50%;
    margin-left:20%;
    margin-top:3%;

}
.card:hover{
box-shadow:0 0 20px rgba(33,33,33,.2);
}

</style>