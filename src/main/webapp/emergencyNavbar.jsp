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
			<!-- NAVIGATION -->