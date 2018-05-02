<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign In/Up form</title>
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css'>
<link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css'>
<link rel="stylesheet" href="css/style.css">

</head>
<body>

  <div id="container" :class="state">
  <div class="col-xs-10 col-xs-offset-1 col-lg-6 col-lg-offset-3 animated fadeInDown" id="form">
    <div id="form-info" class="text-center">
      <transition
      mode="out-in"
      enter-active-class="animated zoomIn"
      leave-active-class="animated zoomOut">
      <div key="login" v-if="state == '__signingin'">
        <h1>Sign In</h1>
        <p>And meet the awesomeness inside!</p>
        <div class="form-group">
        <a class="btn btn-link" @click.prevent="goToRegistration" href="#">Don't have an account?</a>
        </div>
      </div>
        <div key="register" v-if="state == '__registration'">
          <h1>Sign Up</h1>
          <p>And meet the awesomeness inside!</p>
        <div class="form-group">
        <a class="btn btn-link" @click.prevent="goToLogin" href="#">Already got an account?</a>
        </div>
        </div>
      </transition>
    </div>
    <div id="form-slider">
    <transition
      mode="out-in"
      enter-active-class="animated fadeIn"
      leave-active-class="animated fadeOut">
    <div v-if="state == '__signingin'" class="animate fadeIn" key="login" id="login-form">
    <form action="LoginServlet" method="post">
      <div class="form-group">
        <img src="images/avatar-01.jpg" alt="" class="img-responsive center-block" width="120"/>
      </div>
      <div class="form-group">
        <input type="text" name="username" class="form-control" placeholder="Username"/>
      </div>
      <div class="form-group">
        <input type="password" name="pass" class="form-control" placeholder="Password"/>
      </div>
      <div class="form-group">
        
        <input type="submit" name="admin_button" value="Sign As ADMIN"class="btn btn-block btn-sm btn-primary" />
        
      </div>
      </form>
    </div>
    <script>
    function val() {
    var x = document.myform.fullname.value;
    var y =document.myform.pass.value;
    var z =document.myform.email.value;
    var t =document.myform.country.value;
    var atpos = z.indexOf("@");
    var dotpos = z.lastIndexOf(".");
    if (x == ""||x<9) {
        alert("Name must be filled out");
        return false;
    }
        else if(y==""||y<6||y==x)
        	{
        	alert("Password must be filled out OR Invalid password");  
        	return false;
        	}
        else if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length) {
            alert("Not a valid e-mail address");
        return false;    
        }
        else if(t=="")
        	{
        	alert("country must be filled out");
        	return false;
        	}
        else
        	return true;
    
}
</script>
    <div v-if="state == '__registration'" class="animate fadeIn" key="register" id="register-form">
    <form action="SignUpServlet" name="myform" onsubmit="return val()" method="post">
      <div class="form-group">
        <!-- <img src="http://orig05.deviantart.net/a8f9/f/2011/284/5/6/lion_by_skillr-d4ci222.png" alt="" class="img-responsive center-block" width="60"/> -->
      </div>
      <div class="form-group">
        <input type="text" name="name" class="form-control" placeholder="Name"/>
      </div>
      <div class="form-group">
        <input type="text" name="contact" class="form-control" placeholder="Contact-no"/>
      </div>
	   <div class="form-group">
        <input type="text" name="qualification" class="form-control" placeholder="Qualification"/>
      </div>
	   <div class="form-group">
        <input type="text" name="college" class="form-control" placeholder="College"/>
      </div>
	   <div class="form-group">
        <input type="text" name="address" class="form-control" placeholder="Address"/>
      </div>
	   <div class="form-group">
        <input type="text" name="email" class="form-control" placeholder="E-mail"/>
      </div>
	  <div class="form-group">
        <p>Type of Training:</p>
        <input type="radio" name="TypeofTraining" value="6 months"> 6 Months
        
        <input type="radio" name="TypeofTraining" value="6 weeks"> 6 Weeks
        
        <input type="radio" name="TypeofTraining" value="regular"> Regular </div>
		 <div class="form-group">
        <p>Placement Analysis:</p>
        <input type="radio" name="place" value="yes"> Yes
        
        <input type="radio" name="place" value="no"> No  </div>
        
        
  
      <div class="form-group">
        <input type="password" name="password" class="form-control" placeholder="Password"/>
      </div>
      <div class="form-group">
        <input type="password" name="repassword" class="form-control" placeholder="Password confirmation"/>
      </div>
      <div class="form-group">
        <button class="btn btn-block btn-sm btn-success">Sign Up</button>
        
        
        </div>
        
        </form>
        </div>
    </transition>
    </div>
  </div>
  <script src='https://cdnjs.cloudflare.com/ajax/libs/vue/2.1.10/vue.min.js'></script>

    <script  src="js/index.js"></script>
response.sendRedirect("home_page.jsp");
</body>
</html>