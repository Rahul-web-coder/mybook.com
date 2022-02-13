<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags must come first in the head; any other head content must come after these tags -->

		
		<title>mybook.com | Sign Up</title>
			<%@ include file="titleLogo.jsp" %>
		<!-- Custom stlylesheet -->
		
		<link type="text/css" rel="stylesheet" href="css/signIn.css"/>
		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
		
		<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	
		
		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="css/style1.css"/>
		
		
		 <!-- Font Icon -->
   		 <link rel="stylesheet" href="fonts/material-icon/css/material-design-iconic-font.min.css">
		
		

	<!--Bootsrap 4 CDN-->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    
    <!--Fontawesome CDN-->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">


	
	<script type="text/javascript">
	function validateUser() {
		var d1 = document.getElementById("Email");
		var d2 = document.getElementById("Password");
		var e1 = document.getElementById("er1");
		var e2 = document.getElementById("er2");
		e1.textContent = "";
		e2.textContent = "";
		ret_value = true;
		
		if (!d1.value || d1.value.lenght === 0) {
			//alert("User id must be entered...");
			e1.textContent = "*This field is required";
			ret_value = false;
		}

		const regex = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;

		if (d1.value && !regex.test(d1.value)) {
			//alert("User id must be entered...");
			e1.textContent = "*This email is invalid";
			ret_value = false;
		}

		if (!d2.value || d2.value.lenght === 0) {
			//alert("Password must be entered...");
			e2.textContent = "*This field is required";
			ret_value = false;
		}
		return ret_value;
	}
</script>
</head>
<body>

		<%@ 
			include file="emergencyNavbar.jsp" 
		%>
		
		
		
		<!-- SIGN IN -->
		
		<section class="vh-200" style="background-color: DarkSlateGrey;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card shadow-2-strong" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">
			  <i style="color: red;margin: 7px">${requestScope['mseg']}</i>
            <h3 class="mb-5">Sign Up</h3>
		  <form action="emailCheck"  method="POST" class="register-form" id="register-form">
            <div class="form-floating mb-3">
  				<input type="text" class="form-control" name="username" id="name" placeholder="Your Name" required>
  				<label for="name">Name</label>
			</div>
			
			<div class="form-floating mb-3">
  				<input type="email" class="form-control" name="email" id="email" placeholder="Your Email" required>
  				<label for="email">Email</label>
			</div>
			
			<div class="form-floating mb-3">
  				<input type="number" class="form-control" name="contact" id="contact" placeholder="Contact" required>
  				<label for="contact">Contact</label>
			</div>
			
			<div class="form-floating mb-3">
  				<input type="text" class="form-control" name="address" id="address" placeholder="Address" required>
  				<label for="address">Address</label>
			</div>
			
			<div class="form-floating mb-3">
  				<input type="password" class="form-control" name="password" id="pass" placeholder="Password" required>
  				<label for="pass">Password</label>
			</div>
			
			
            <!-- Checkbox -->
            <div class="form-check d-flex justify-content-start mb-4">
              <input
                class="form-check-input"
                type="checkbox"
                value=""
                id="form1Example3"
              />
              <label class="form-check-label" for="form1Example3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Remember password </label>
            </div>

            <button class="btn btn-primary btn-lg btn-block" type="submit" value="Register">Register</button>
			</form>
            <hr class="my-4">
            
            <h5 style="padding: 9px">Already Have Account?  <a href="signIn.jsp" class="btn btn-sm btn-block btn-primary" style="background-color: #90EE90;font-weight: bolder;color: black;text-transform: uppercase;" type="submit"><i class="fab fa-account" ></i> Sign In</a></h5>

            <button class="btn btn-lg btn-block btn-primary" style="background-color: #dd4b39;" type="submit"><i class="fab fa-google me-2"></i> Sign in with google</button>
            <button class="btn btn-lg btn-block btn-primary mb-2" style="background-color: #3b5998;" type="submit"><i class="fab fa-facebook-f me-2"></i>Sign in with facebook</button>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>

    
     <!-- Sign up form -->
     <!--    
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class=" heading form-title">Sign up</h2>
                        <i style="color: red;margin: 7px">${requestScope['mseg']}</i>
                        <form action="emailCheck"  method="POST" class="register-form" id="register-form">
                            <div class="form-group">
                                <i class="fas fa-user"></i>
                                <input class="signin" type="text" name="username" id="name" placeholder="Your Name"/>
                            </div>
                            <div class="form-group">
                               <i class="fas fa-envelope"></i>
                                <input class="signin" type="email" name="email" id="email" placeholder="Your Email"/>
                            </div>
                            <div class="form-group">
                                <i class="fas fa-phone"></i>
                                <input class="signin" type="number" name="contact" id="email" placeholder="Contact"/>
                            </div>
                              <div class="form-group">
                                <i class="fas fa-map-marker-alt"></i>
                                <input class="signin" type="text" name="address" id="re_pass" placeholder="Address"/>
                            </div>
                            <div class="form-group">
                                <i class="fas fa-unlock-alt"></i>
                                <input class="signin" type="password" name="password" id="pass" placeholder="Password"/>
                            </div>
                          
                            <div class="form-group">
                                <input class="signin" type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input class="login" type="submit" name="signup" id="signup" class="form-submit" value="Register"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images/signup-image.jpg" alt="sing up image"></figure>
                        <a href="signIn.jsp" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>
      -->
	 
		<%@ 
			include file="footer.jsp" 
		%>

</body>
</html>