<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	HttpSession se = request.getSession(false);
	String n = (String)session.getAttribute("m");
	String Email=(String)session.getAttribute("m");
	String name[] = new String[5];
	name[0] = "Login";
	if(Email != null){
    	name =Email.split("@",-1);
	}
	
	
%>


<%
HttpSession ht = request.getSession(false);

String email = (String) ht.getAttribute("email");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>mybook.com | Sign Up</title>
			<%@ include file="titleLogo.jsp" %>
		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="css/signUp.css"/>
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
		
		



<link rel="stylesheet" href="css/otp.css">
<link href="css/style.css" type="text/css" rel="stylesheet">
<link href="css/grid.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>


<!-- Navbar -->
<!-- HEADER -->
		<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
						<li><a href="#"><i class="fa fa-phone"></i> +91-0123456789</a></li>
						<li><a href="#"><i class="fa fa-envelope-o"></i> mybook.com@gmail.com</a></li>
						<li><a href="#"><i class="fa fa-map-marker"></i> Kolkata, India</a></li>
					</ul>
					<ul class="header-links pull-right">
						
						<% if(n!=null){
							%>
							<li>
								<form action="Logout" method="post">
									<button style="background-color:#333 !important;color: white;font-weight: bolder;"> <i class="fa fa-sign-out"></i>Logout</button>
								</form>
							</li>
							<li><a href="profile.jsp" style="font-weight: bolder;"><i class="fa fa-user-o"></i><%="Welcome "+ name[0].toUpperCase() %></a></li>
							<% 
						}
						else{
							%>
							<li><a href="signIn.jsp"><i class="fa fa-sign-in"></i>Login</a></li>
							<li><a href="#"><i class="fa fa-user-o"></i> My Account</a></li>
							<% 
						}
						%>
						
					</ul>
				</div>
			</div>
			<!-- /TOP HEADER -->

			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div class="col-md-3">
							
								<% if(n!=null){
							%>
							<a href="home.jsp" class="logo">
									<h2 style="color: white; padding-top: 15px"><img style="border-radius: 20%" alt="" src="images/favicon_io/favicon-32x32.png">mybook.com</h2>
							</a>
							<% 
						}
						else{
							%>
							<a href="index.jsp" class="logo">
									<h2 style="color: white; padding-top: 15px"><img style="border-radius: 20%" alt="" src="images/favicon_io/favicon-32x32.png">mybook.com</h2>	
							</a>
							<% 
						}
						%>
							
							
						</div>
						<!-- /LOGO -->

						<!-- SEARCH BAR -->
						<jsp:useBean id="t" class="userBean.ProductCategory"></jsp:useBean>
						<div class="col-md-6">
							<div class="header-search">
								<form>
									
									<select class="input-select">
										<option selected>All Categories</option>
										<c:forEach items="${t.getAllProductCategory()}"  var="st">
											<option>${st}</option>
										</c:forEach>
									</select>
									
									
									<input class="input" placeholder="Search here">
									
									<button class="search-btn">Search</button>
									
								</form>
							</div>
						</div>
						<!-- /SEARCH BAR -->

						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">
								<!-- Wishlist -->
								<div>
									<a href="#">
										<i class="fa fa-heart-o"></i>
										<span>Your Wishlist</span>
										<div class="qty">2</div>
									</a>
								</div>
								<!-- /Wishlist -->
								<!-- 
								
								<!-- Cart -->
								<div class="dropdown">
									<a style="cursor: pointer !important;" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true" >
										<i class="fa fa-shopping-cart"></i>
										<span >Your Cart</span>
											<jsp:useBean id="crt" class="userBean.Cart"></jsp:useBean>
										
											<c:set var="count" value="${crt.checkCart()}"></c:set>
											
									
										<div class="qty">${count }</div>
									</a>
									<div class="cart-dropdown">
										<div class="cart-list">
											
											
											<div class="product-widget">
											<c:forEach items="${cobj.getAllProductsFromCartByEmail()}" var="cart">
											<jsp:setProperty property="pCategoryId" name="pc" value="${cart.getpCategoryId()}"/>
												<div class="product-img">
													<img src="./img/product01.png" alt="">
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">${cart.getpName()}</a></h3>
													<h4 class="product-price"><span class="qty">1x</span>$980.00</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</c:forEach>
											</div>
										

											
										</div>
										<div class="cart-summary">
											<small>3 Item(s) selected</small>
											<h5>SUBTOTAL: $2940.00</h5>
										</div>
										<div class="cart-btns">
											<a href="cart.jsp" >View Cart</a>
											<a href="checkout.jsp">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
										</div>
									</div>
								</div>
								<!-- /Cart -->


								<!-- Menu Toogle -->
								<div class="menu-toggle">
									<a href="#">
										<i class="fa fa-bars"></i>
										<span>Menu</span>
									</a>
								</div>
								<!-- /Menu Toogle -->
							</div>
						</div>
						<!-- /ACCOUNT -->
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</div>
			<!-- /MAIN HEADER -->
		</header>
		<!-- /HEADER -->
		<div id="top-header">
				<div class="container ">
					<ul class="header-links pull-left">
						
						<% if(n!=null){
							%>
							<li><a href="home.jsp"><img style="height:30px "  src="https://img-premium.flaticon.com/png/512/1655/premium/1655740.png?token=exp=1632770809~hmac=36e9376c0d8b0e8c2547fc9990f2bd1a"> Home</a></li>
							<% 
						}
						else{
							%>
							<li><a href="index.jsp"><img style="height:30px "  src="https://img-premium.flaticon.com/png/512/1655/premium/1655740.png?token=exp=1632770809~hmac=36e9376c0d8b0e8c2547fc9990f2bd1a"> Home</a></li>
							<% 
						}
						%>
						<li><a href="developers.jsp"><img style="height:30px "  src="https://img-premium.flaticon.com/png/512/3242/premium/3242257.png?token=exp=1632770595~hmac=cb15beceba092e9d0995ccb21957e2bf">Developers </a></li>
						<li><a href="about.jsp"><img style="height:30px " src="https://cdn-icons-png.flaticon.com/512/2640/2640740.png">About</a></li>
						<li><a href="features.jsp"><img style="height:30px " alt="" src="https://cdn-icons-png.flaticon.com/512/1560/1560002.png">Features</a></li>
					</ul>
					<ul class="header-links pull-right">
					
					
							<li><a href="blog.jsp"><img style="height:30px " alt="" src="https://img-premium.flaticon.com/png/512/2593/premium/2593549.png?token=exp=1632770871~hmac=90d46f91f3308a546bbfffffea3c23b3"> Blogs</a></li>
							<li><a href="contact.jsp"><i class="fas fa-phone-volume"></i>Contact Us</a></li>
					
						
					</ul>
				</div>
			</div>
			
			

<form action="userregisterservlet" method="post">
<div class="container height-100 d-flex justify-content-center align-items-center">
    <div class="position-relative">
        <div class="card p-2 text-center">
            <h6>Please enter the one time otp <br> to verify your account</h6>
            <div> <span>A code has been sent to </span> <small><%=email %></small> </div>
            <div id="otp" class="inputs d-flex flex-row justify-content-center mt-2">
               <input class="m-2 text-center form-control rounded" type="text" id="first" name="first" maxlength="1" />
               <input class="m-2 text-center form-control rounded" type="text" id="second" name="second" maxlength="1" />
               <input class="m-2 text-center form-control rounded" type="text" id="third" name="third" maxlength="1" />
               <input class="m-2 text-center form-control rounded" type="text" id="fourth" name="fourth" maxlength="1" />
               <input class="m-2 text-center form-control rounded" type="text" id="fifth" name="fifth" maxlength="1" />
               <input class="m-2 text-center form-control rounded" type="text" id="sixth" name="sixth" maxlength="1" />
            </div>
            <div class="mt-4"> <button class="btn btn-danger px-4 validate">Validate</button> </div>
        </div>
        <div class="card-2">
            <div class="content d-flex justify-content-center align-items-center"> 
            <span>Didn't get the code</span> 
            <a href="#" class="text-decoration-none ms-3" id="timeleft"></a>
             </div>
        </div>
    </div>
</div>
</form>




<!-- NEWSLETTER -->
		<div id="newsletter" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="newsletter">
							<p>Sign Up for the <strong>NEWSLETTER</strong></p>
							<form>
								<input class="input" type="email" placeholder="Enter Your Email">
								<button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
							</form>
							<ul class="newsletter-follow">
								<li>
									<a href="https://www.facebook.com/booksMy.comm/?ref=pages_you_manage"><i class="fa fa-facebook"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-instagram"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-pinterest"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /NEWSLETTER -->

<script type="text/javascript">
document.addEventListener("DOMContentLoaded", function(event) {

	function OTPInput() {
	const inputs = document.querySelectorAll('#otp > *[id]');
	for (let i = 0; i < inputs.length; i++) { inputs[i].addEventListener('keydown', function(event) { if (event.key==="Backspace" ) { inputs[i].value='' ; if (i !==0) inputs[i - 1].focus(); } else { if (i===inputs.length - 1 && inputs[i].value !=='' ) { return true; } else if (event.keyCode> 47 && event.keyCode < 58) { inputs[i].value=event.key; if (i !==inputs.length - 1) inputs[i + 1].focus(); event.preventDefault(); } else if (event.keyCode> 64 && event.keyCode < 91) { inputs[i].value=String.fromCharCode(event.keyCode); if (i !==inputs.length - 1) inputs[i + 1].focus(); event.preventDefault(); } } }); } } OTPInput(); });


	/* Resend OTP */
	
	var time = 90;
	var myVar = setInterval(setColor, 1000);

	function setColor() {
		if(time == 0)
		{
			document.getElementById("timeleft").innerHTML = "<a href='emailCheck'>Resend</a>";
			stopColor();
		}
		else
			document.getElementById("timeleft").innerHTML = "Remaining Time: "+time+" sec";
		time--;
	}

	function stopColor() {
	  clearInterval(myVar);
	}
	
	

</script>

</body>
</html>