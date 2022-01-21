<!DOCTYPE html>
<html lang="en">
<head>

     <title>jobx</title>

     <meta charset="UTF-8">
     <meta http-equiv="X-UA-Compatible" content="IE=Edge">
     <meta name="description" content="">
     <meta name="keywords" content="">
     <meta name="author" content="">
     <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

     <link rel="stylesheet" href="/css/bootstrap.min.css">
     <link rel="stylesheet" href="/css/font-awesome.min.css">
     <link rel="stylesheet" href="/css/owl.carousel.css">
     <link rel="stylesheet" href="/css/owl.theme.default.min.css">

     <!-- MAIN CSS -->
     <link rel="stylesheet" href="/css/style.css">

</head>
<body id="top" data-spy="scroll" data-target=".navbar-collapse" data-offset="50">

     <!-- PRE LOADER -->
     <section class="preloader">
          <div class="spinner">
               <span class="spinner-rotate"></span>
          </div>
     </section>


     <!-- MENU -->
     <section class="navbar custom-navbar navbar-fixed-top" role="navigation">
          <div class="container">

               <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                         <span class="icon icon-bar"></span>
                    </button>

                    <!-- lOGO TEXT HERE -->
                    <a href="/" class="navbar-brand">JobX</a>
               </div>

               <!-- MENU LINKS -->
               <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav navbar-nav-first">
                         <li class="active"><a href="/">Home</a></li>
                         <!-- <li><a href="#">Jobs</a></li>
                         <li><a href="#">About Us</a></li>
                         <li><a href="#">Blog</a></li> -->
                         
                         <li class="dropdown">
                              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><% if (session.getAttribute("user")!=null){ %>more<%}else{ %>login<%} %><span class="caret"></span></a>
                              <ul class="dropdown-menu">
                              <% if(session.getAttribute("role")!=null && session.getAttribute("role").equals("student")){ %>
                                   <li><a href="/user_profile" >profile</a></li>
                                   <li><a href="/jobsearch">search jobs</a></li>
                                   <li><a href="/status">View status</a></li>
                                   <li><a href="/user_logout">logout</a></li>
                                 <% } else if(session.getAttribute("role")!=null && session.getAttribute("role").equals("recruiter")){%>
                                 <li><a href="/com_profile" >profile</a></li> 
                                 <li><a href="/createbatch">Create batch</a></li>
                                 <li><a href="/display">Job Applications</a></li>
                                 <li><a href="/com_logout">logout</a></li> 
                                 <%} else{ %>
                                 <li><a href="user_login" >Login as Student</a></li>
                                 <li><a href="com_login">Login as Company</a></li>
                                   <%} %>
                              </ul>
                         </li>
                         <%if(session.getAttribute("role")==null) {%>
                         <li><a href="/contactUs">Contact Us</a></li>
                         <%} %>
                    </ul>
               </div>

          </div>
     </section>

     <!-- HOME -->
     <section id="home">
          <div class="row">
               <div class="owl-carousel owl-theme home-slider">
                    <div class="item item-first">
                         <div class="caption">
                              <div class="container">
                                   <div class="col-md-6 col-sm-12">
                                       <!--  <a href="jobs.html" class="section-btn btn btn-default">Browse Jobs</a> -->
                                   </div>
                              </div>
                         </div>
                    </div>

                    <div class="item item-second">
                         <div class="caption">
                              <div class="container">
                                   <div class="col-md-6 col-sm-12">
                                        <!-- <a href="jobs.html" class="section-btn btn btn-default">Browse Jobs</a> -->
                                   </div>
                              </div>
                         </div>
                    </div>

                    <div class="item item-third">
                         <div class="caption">
                              <div class="container">
                                   <div class="col-md-6 col-sm-12">
                                        <!-- <a href="jobs.html" class="section-btn btn btn-default">Browse Jobs</a> -->
                                   </div>
                              </div>
                         </div>
                    </div>
               </div>
          </div>
     </section>

     <main>
          <section>
               <div class="container">
                    <div class="row">
                         <div class="col-md-12 col-sm-12">
                              <div class="text-center">
                                   <h2>About us</h2>

                                   <br>

                                   <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore molestias ipsa veritatis nihil iusto maiores natus dolor, a reiciendis corporis obcaecati ex. Totam assumenda impedit aut eum, illum distinctio saepe explicabo. Consequuntur molestiae similique id quos, quasi quas perferendis laboriosam, fugit natus odit totam! Id dolores saepe, sint debitis rerum dolorem tempora aliquid, pariatur enim nisi. Quia ab iusto assumenda.</p>
                              </div>
                         </div>
                    </div>
               </div>
          </section>
     </main>

     <!-- CONTACT -->
     <section id="contact">
          <div class="container">
               <div class="row">

                    <div class="col-md-6 col-sm-12">
                         <form id="contact-form" role="form" action="" method="post">
                              <div class="section-title">
                                   <h2>Contact us <small>we love conversations. let us talk!</small></h2>
                              </div>

                              <div class="col-md-12 col-sm-12">
                                   <input type="text" class="form-control" placeholder="Enter full name" name="name" required>
                    
                                   <input type="email" class="form-control" placeholder="Enter email address" name="email" required>

                                   <textarea class="form-control" rows="6" placeholder="Tell us about your message" name="message" required></textarea>
                              </div>

                              <div class="col-md-4 col-sm-12">
                                   <input type="submit" class="form-control" name="send message" value="Send Message">
                              </div>

                         </form>
                    </div>

                    <div class="col-md-6 col-sm-12">
                         <div class="contact-image">
                              <img src="images/contact-1-600x400.jpg" class="img-responsive" alt="Smiling Two Girls">
                         </div>
                    </div>

               </div>
          </div>
     </section>       

     <!-- FOOTER -->
     <footer id="footer">
          <div class="container">
               <div class="row">

                    <div class="col-md-4 col-sm-6">
                         <div class="footer-info">
                              <div class="section-title">
                                   <h2>Headquarter</h2>
                              </div>
                              <address>
                                   <p>Vijayawada<br>KL University</p>
                              </address>	

                              
                              <div class="copyright-text"> 
                                   <p>Copyright &copy; 2022 Company Name</p>
                                   
                              </div>
                         </div>
                    </div>

					<div class="col-md-4 col-sm-6">
                         <div class="footer-info">
                     	 	<div class="section-title">
                                   <h2>Quick Links</h2>
                                   <ul>
                                        <li><a href="/">Home</a></li>
                                        <li><a href="/contactUs">Contact Us</a></li>
                                   </ul>
                              </div>
                         </div>
                    </div>
                    
                    <div class="col-md-4 col-sm-6">
                         <div class="footer-info">
                              <div class="section-title">
                                   <h2>Contact Info</h2>
                              </div>
                              <address>
                                   <p>0883 27558261</p>
                                   <p><a href="/contactUs">jobx@gmail.com</a></p>
                              </address>

                              
                         </div>
                    </div>
                    
                     

                    
                    
               </div>
          </div>
     </footer>

     <!-- SCRIPTS -->
     <script src="js/jquery.js"></script>
     <script src="js/bootstrap.min.js"></script>
     <script src="js/owl.carousel.min.js"></script>
     <script src="js/smoothscroll.js"></script>
     <script src="js/custom.js"></script>

</body>
</html>