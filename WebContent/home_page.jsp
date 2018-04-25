<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Btes visitor portal screen</title>
 <link href="css3/bootstrap.min.css" rel="stylesheet">
  <link href="css3/animate.min.css" rel="stylesheet"> 
  <link href="css3/font-awesome.min.css" rel="stylesheet">
  <link href="css3/lightbox.css" rel="stylesheet">
  <link href="css3/main.css" rel="stylesheet">
  <link id="css-preset" href="css3/presets/preset1.css" rel="stylesheet">
  <link href="css3/responsive.css" rel="stylesheet">

  <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
  <![endif]-->
  
  <link href='http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
  <link rel="" href="images/favicon.ico">
</head><!--/head-->
<body>

  <!--.preloader-->
  <div class="preloader"> <i class="fa fa-circle-o-notch fa-spin"></i></div>
  <!--/.preloader-->
 <form action="login" method="get">
  <header id="home">
    <div id="home-slider" class="carousel slide carousel-fade" data-ride="carousel">
      <div class="carousel-inner">
        <div class="item active" style="background-image: url(images/slider/1.jpg)">
          <div class="caption">
          
          	<h1 class="animated fadeInDownBig">ADMIN MODULE</h1>
          	<p class="animated fadeInDownBig"><span>Presented By Himani</span></p>
            <h1 class="animated fadeInLeftBig">Welcome to <span>Btes Visitor Portal Screen</span></h1>
            <p class="animated fadeInRightBig">we are here for your help</p>
            <a data-scroll class="btn btn-start animated fadeInUpBig" href="#services">Click here</a>
          </div>
        </div>
        </div>
      </div>
      <a class="left-control" href="#home-slider" data-slide="prev"><i class="fa fa-angle-left"></i></a>
      <a class="right-control" href="#home-slider" data-slide="next"><i class="fa fa-angle-right"></i></a>

      <a id="tohash" href="#services"><i class="fa fa-angle-down"></i></a>
<a class="navbar-brand" href="index.html">
         
    </div><!--/#home-slider-->
    <div class="main-nav">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
             <span class="icon-bar"></span> 
             <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
              <h3><img class="img-responsive" src="images/avatar-01.jpg" align="left"alt="logo" height="250" width="125"></h3></a>
         </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">                 
            <li class="scroll active"><a href="home_page.jsp">Home</a></li>
            <li class="scroll"><a href="#services">Service</a></li> 
            <li class="scroll"><a href="#about-us">About Us</a></li>                   
             <li class="scroll"><a href="#features">DashBoard</a></li> 
             <li class="scroll"><a href="mail1.jsp">Notice Box</a></li>
            <li class="scroll"><a href="viewmail.jsp">View Mail</a></li>
            <li class="scroll"><a href="upload.jsp">Upload Data</a></li>
            <li class="scroll"><a href="place.jsp">Placement Analysis</a></li>
             
            <li class="scroll"><a href="login_page.jsp">LogOut</a></li>     
          </ul>
         
        </div>
      </div>
    </div><!--/#main-nav-->
  </header><!--/#home-->
  
  
  
  <section id="services">
    <div class="container">
      <div class="heading wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
        <div class="row">
          <div class="text-center col-sm-8 col-sm-offset-2">
           <p><br><br> <h2>Our Services</h2></p>
            <p> </p>
          </div>
        </div> 
      </div>
      <div class="text-center our-services">
        <div class="row">
          <div class="col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
            <div class="service-icon">
              <i class="fa fa-cogs"></i>
            </div>
            <div class="service-info">
              <h3>Technical Training</h3>
              <p> Technical Training teaches the skills needed to design, develop,implement ,maintain, support or operate a particular technology or related application , product or services.  </p>
            </div>
          </div>
          <div class="col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="450ms">
            <div class="service-icon">
              <i class="fa fa-umbrella"></i>
            </div>
            <div class="service-info">
              <h3>Placement Support</h3>
              <p>With BTES, you get 100% job placement assistance. On successful completion of a course with BTES, our placement teams helps you get interview opportunities with major companies in IT and others.   </p>
            </div>
          </div>
          <div class="col-sm-4 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="550ms">
            <div class="service-icon">
              <i class="fa fa-users"></i>
            </div>
            <div class="service-info">
              <h3>Expert Sessions</h3>
              <p>Expert Sessions are the interaction with the expert of the industry, to ask and learn, about their specialized topic. This session consist of informal question and answer session. </p>
            </div>
          </div>
          <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="650ms">
            <div class="service-icon">
              <i class="fa fa-laptop"></i>
            </div>
            <div class="service-info">
              <h3>Project Work</h3>
              <p>Project Work is a learning experience which aims to provide students with the opportunity to synthesise knowledge from various areas of learning and creatively apply it to real life situation.  </p>
            </div>
          </div>
          <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="750ms">
            <div class="service-icon">
              <i class="fa fa-home"></i>
            </div>
            <div class="service-info">
              <h3>Industry Visits</h3>
              <p>Industry Visit is a part of professional courses, during which students visit companies and get insight of on the internal working environment of the company.  </p>
            </div>
          </div>
          <div class="col-sm-4 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="850ms">
            <div class="service-icon">
              <i class="fa fa-signal"></i>
            </div>
            <div class="service-info">
              <h3>Performance</h3>
              <p>Performance is a completion of a task with application of knowledge, skills and abilities.In work place, performance means good ranking with the conception of requirement of a task role.    </p>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section><!--/#services--><br>
  
  
  
  <section id="about-us" class="parallax">
    <div class="container">
      <div class="row">
        <div class="col-sm-6">
          <div class="about-info wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
           <p><br><br><br> <h2>About us</h2></p>
            <p>BTES(Bebo Technical Educational Services) is an IT professional institute. This institute has emerged into providing practical training on various software technologies under the banner of Bebo Technical Educational Services(BTES).</p>
            <p>BTES focuses on strategic and practical approach in providing training to students and working professionals. Under the close guidance and supervision of our experienced professionals , you will be trained on various technical aspects to tackle industry challenges faced regularly in your professional life.</p>
            <p>Our course cover everything necessary to build a strong professional foundation. Through our courses ,which are developed industry experts, we bring their learning and experience to you so that you excel in your professional life. This brings you at par with working professionals and thus ,meet the industry expectations. </p>
            <p>Our goal remains to provide you practical knowledge with strong fundamentals so that your career is secured. we also conduct online monthly tests ,software skills sessions ,placement oriented online tests- this is only for the students who are interested.</p>
          </div>
        </div>
        <div class="col-sm-6"><br><br><br>
          <div class="our-skills wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
            <div class="single-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
              <p class="lead"><br>Trainer Experiences<br></p>
              <div class="progress">
                <div class="progress-bar progress-bar-primary six-sec-ease-in-out" role="progressbar"  aria-valuetransitiongoal="95">95%</div>
              </div>
            </div>
            <div class="single-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="400ms">
              <p class="lead"><br>Placements<br></p>
              <div class="progress">
                <div class="progress-bar progress-bar-primary six-sec-ease-in-out" role="progressbar"  aria-valuetransitiongoal="100">100%</div>
              </div>
            </div>
            <div class="single-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="500ms">
              <p class="lead"><br>Courses covered as required<br></p>
              <div class="progress">
                <div class="progress-bar progress-bar-primary six-sec-ease-in-out" role="progressbar"  aria-valuetransitiongoal="90">90%</div>
              </div>
            </div>
            <div class="single-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
              <p class="lead"><br>Other Activities<br></p>
              <div class="progress">
                <div class="progress-bar progress-bar-primary six-sec-ease-in-out" role="progressbar"  aria-valuetransitiongoal="85">85%</div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section><!--/#about-us-->


  <section id="features" class="parallax" >
    <div class="container">
      <div class="row count">
        <div class="col-sm-3 col-xs-6 wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="300ms">
        
      
          <p><br><br><i class="fa fa-user"></i></p>
          <h3 class="timer">30</h3>
          <p><h2>6-Months</h2></p>
          
        </div>
        <div class="col-sm-3 col-xs-6 wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="500ms">
          <p><br><br><i class="fa fa-user"></i></p>
          <h3 class="timer">20</h3>                    
          <p><h2>Regular</h2></p>
        </div> 
        <div class="col-sm-3 col-xs-6 wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="700ms">
          <p><br><br><i class="fa fa-user"></i></p>
          <h3 class="timer">45</h3>                    
          <p><h2>6-weeks</h2></p>
        </div> 
        <div class="col-sm-3 col-xs-6 wow fadeInLeft" data-wow-duration="1000ms" data-wow-delay="900ms">
         <p> <br><br><i class="fa fa-comment-o"></i>  </p>                  
          <div class="form-group">
                  <a href= "search.jsp"  class="btn-submit">View details</a>
                </div>
          
        </div>                 
      </div>
    </div>
  </section><!--/#features-->

  <section id="contact">
    <div id="contact-us" class="parallax">
      <div class="container">
        <div class="row">
          <div class="heading text-center col-sm-8 col-sm-offset-2 wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
            <h2>For Query</h2>
            <h2>Contact Us</h2>
            
            <p></p>
          </div>
        </div>
        <div class="contact-form wow fadeIn" data-wow-duration="1000ms" data-wow-delay="600ms">
          <div class="row">
            <div class="col-sm-6">
              <form id="main-contact-form" name="contact-form" method="post" action="#">
                <div class="row  wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
                  <div class="col-sm-6">
                    <div class="form-group">
                      <input type="text" name="name" class="form-control" placeholder="Name" required="required">
                    </div>
                  </div>
                  <div class="col-sm-6">
                    <div class="form-group">
                      <input type="email" name="email" class="form-control" placeholder="Email Address" required="required">
                    </div>
                  </div>
                </div>
                <div class="form-group">
                  <input type="text" name="subject" class="form-control" placeholder="Subject" required="required">
                </div>
                <div class="form-group">
                  <textarea name="message" id="message" class="form-control" rows="4" placeholder="Enter your message" required="required"></textarea>
                </div>                        
                <div class="form-group">
                  <button type="submit" class="btn-submit">Send Now</button>
                </div>
              </form>   
            </div>
            <div class="col-sm-6">
              <div class="contact-info wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
                <ul class="address">
                  <li><i class="fa fa-map-marker"></i> <span> Address:</span>SCO 156-157, 4th floor, near verka building, sector 34-A ,chandigarh-160034</li>
                  <li><i class="fa fa-phone"></i> <span> Phone:</span>+91-172-5086508 , +91-172-5087508</li>
                  <li><i class="fa fa-envelope"></i> <span> Email:</span><a href="mailto:someone@yoursite.com"> support@oxygen.com</a></li>
                  <li><i class="fa fa-globe"></i> <span> Website:</span> <a href="#">www.btesvsp.com</a></li>
                </ul>
              </div>                            
            </div>
          </div>
        </div>
      </div>
    </div>        
  </section><!--/#contact-->
  
  
  <footer id="footer">
    <div class="footer-top wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="300ms">
      <div class="container text-center">
        <div class="footer-logo">
          <a href="index.html"><img class="img-responsive" src="images/500.jpg" align="left" alt="" height="150" width="130"></a>
        </div>
        <div class="social-icons">
          <ul>
            <li><a class="envelope" href="#"><i class="fa fa-envelope"></i></a></li>
            <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li> 
            <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
            <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>
            <li><a class="tumblr" href="#"><i class="fa fa-tumblr-square"></i></a></li>
          </ul>
        </div>
      </div>
        </div>
      </div>
    </div>
  </footer>
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=true"></script>
  <script type="text/javascript" src="js/jquery.inview.min.js"></script>
  <script type="text/javascript" src="js/wow.min.js"></script>
  <script type="text/javascript" src="js/mousescroll.js"></script>
  <script type="text/javascript" src="js/smoothscroll.js"></script>
  <script type="text/javascript" src="js/jquery.countTo.js"></script>
  <script type="text/javascript" src="js/lightbox.min.js"></script>
  <script type="text/javascript" src="js/main.js"></script>
</form>

</body>
</html>