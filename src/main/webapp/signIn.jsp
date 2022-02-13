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
		
		

		<!-- CSS only -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
			
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
			<h1 style="color: red;" class="text-center">${requestScope['mseg']}</h1>
            <h3 class="mb-5">Sign In</h3>
			 <form action="userlogin" method="post" >
	            <div class="form-floating mb-3">
	  				<input type="email" class="form-control" name="Email" id="Email">
	  				<label for="Email">Email</label>
	  				<span style='color:red' id='er1'></span>
				</div>
				
				<div class="form-floating mb-3">
	  				<input type="password" class="form-control" name="Password" id="Password">
	  				<label for="Password">Password</label>
	  				<span style='color:red' id='er2'></span>
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
	
	            <button class="btn btn-primary btn-lg btn-block" type="submit" onclick='return validateUser()'>Login</button>
			</form>
            <hr class="my-4">
            
            <h5 style="padding: 9px">Don't Have Account?  <a href="signUp.jsp" class="btn btn-sm btn-block btn-primary" style="background-color: #90EE90;font-weight: bolder;color: black;text-transform: uppercase;" type="submit"><i class="fab fa-account" ></i> Sign Up</a></h5>

            <button class="btn btn-lg btn-block btn-primary" style="background-color: #dd4b39;" type="submit"><i class="fab fa-google me-2"></i> Sign in with google</button>
            <button class="btn btn-lg btn-block btn-primary mb-2" style="background-color: #3b5998;" type="submit"><i class="fab fa-facebook-f me-2"></i>Sign in with facebook</button>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>

        <!-- Sing in  Form -->
        <!--
        <section class="sign-in">
        	
            <div class="container">
            	<h1 class="text-center">${requestScope['mseg']}</h1>
                <div class="signin-content">
                    <div class="signin-image">
                        <figure><img src="images/signin-image.jpg" alt="sing up image"></figure>
                        <a href="signUp.jsp" class="signup-image-link">Create an account</a>
                    </div>

                    <div class="signin-form">
                        <h2 class="form-title heading">Sign In</h2>
                        <form action="userlogin" method="post" class="register-form" id="login-form">
                            <div class="form-group">
                            	 <i class="fas fa-user"></i>
                                <label for="your_name"></label>
                                <input class="signin"  type="text" name="Email" id="Email"
								placeholder="Enter a valid email address"/><br>
								<span style='color:red' id='er1'></span>
                            </div>
                            <div class="form-group">
                            	<i class="fas fa-unlock-alt"></i>
                                <label for="your_pass"></label>
                                <input class="signin"  type="password" name="Password" id="Password"
								placeholder="Enter password"/><br>
								<span style='color:red' id='er2'></span>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="remember-me" id="remember-me" class="agree-term" />
                                <label for="remember-me" class="label-agree-term"><span><span></span></span>Remember me</label>
                            </div>
                            <div class="form-group form-button">
                                <button type="submit" class="btn btn-blue text-center login" onclick='return validateUser()'>Login</button>
                            </div>
                        </form>
                        <div class="social-login">
                            <span class="social-label">Or login with</span>
                            <ul class="socials">
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-facebook"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-twitter"></i></a></li>
                                <li><a href="#"><i class="display-flex-center zmdi zmdi-google"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>


     -->

	
	<!-- 
 <form action="userlogin" method="post">
	<div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
		<div class="card card0 border-0">
			<div class="row d-flex">
				<div class="col-lg-6">
					<div class="card1 pb-5">
						<div class="row">
							<img src="https://i.imgur.com/CXQmsmF.png" class="logo">
						</div>
						<div class="row px-3 justify-content-center mt-4 mb-5 border-line">
							<img src="https://media.istockphoto.com/photos/bookshelves-and-laptops-are-placed-on-the-library-deskelearning-class-picture-id1175379199?b=1&k=6&m=1175379199&s=170667a&w=0&h=UDHAdP2RSB3oxEB341XwJIj27gORD6oDLzSI3e22LRY=" class="image">
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="card2 card border-0 px-4 py-5">
						<div class="row mb-4 px-3">
							<h6 class="mb-0 mr-4 mt-2">Sign in with</h6>
							<div class="facebook text-center mr-3">
								<div class="fa fa-facebook"></div>
							</div>
							<div class="twitter text-center mr-3">
								<div class="fa fa-twitter"></div>
							</div>
							<div class="linkedin text-center mr-3">
								<div class="fa fa-linkedin"></div>
							</div>
						</div>
						<div class="row px-3 mb-4">
							<div class="line"></div>
							<small class="or text-center">Or</small>
							<div class="line"></div>
						</div>
						<div class="row px-3">
							<label class="mb-1">
								<h6 class="mb-0 text-sm">Email Address</h6>
							</label> <input class="mb-4" type="text" name="Email" id="Email"
								placeholder="Enter a valid email address">
							<span style='color:red' id='er1'></span>
						</div>
						<div class="row px-3">
							<label class="mb-1">
								<h6 class="mb-0 text-sm">Password</h6>
							</label> <input type="password" name="Password" id="Password"
								placeholder="Enter password">
							<span style='color:red' id='er2'></span>
						</div>
						<div class="row px-3 mb-4">
							<div class="custom-control custom-checkbox custom-control-inline">
								<input id="chk1" type="checkbox" name="chk"
									class="custom-control-input"> <label for="chk1"
									class="custom-control-label text-sm">Remember me</label>
							</div>
							<a href="#" class="ml-auto mb-0 text-sm">Forgot Password?</a>
						</div>
						<div class="row mb-3 px-3">
							<button type="submit" class="btn btn-blue text-center" onclick='return validateUser()'>Login</button>
						</div>
						<div class="row mb-4 px-3">
							<small class="font-weight-bold">Don't have an account? <a
								class="text-danger " href="signUp.jsp">Register</a></small>
						</div>
					</div>
				</div>
			</div>
			
			<h1>${requestScope['mseg']}</h1>
			
			<div class="bg-blue py-4">
				<div class="row px-3">
					<small class="ml-4 ml-sm-5 mb-2">Copyright &copy; 2019. All
						rights reserved.</small>
					<div class="social-contact ml-4 ml-sm-auto">
						<span class="fa fa-facebook mr-4 text-sm"></span> <span
							class="fa fa-google-plus mr-4 text-sm"></span> <span
							class="fa fa-linkedin mr-4 text-sm"></span> <span
							class="fa fa-twitter mr-4 mr-sm-5 text-sm"></span>
					</div>
				</div>
			</div>
		</div>
	</div>
	</form>
	 -->	
	 
		<%@ 
			include file="footer.jsp" 
		%>

</body>
</html>