
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
    <%@ page import=" java.util.*" %>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>mybook.com | cart</title>
	<%@ include file="titleLogo.jsp" %>
<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

<!-- Slick -->
<link type="text/css" rel="stylesheet" href="css/slick.css" />
<link type="text/css" rel="stylesheet" href="css/slick-theme.css" />

<!-- nouislider -->
<link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />
<link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">

<!-- Font Awesome Icon -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style1.css" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
 		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
 		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
 		<![endif]-->
<link type="text/css" rel="stylesheet" href="css/cart.css" />
</head>
<body>
	<!-- HEADER -->
	<%@ 
			include file="navbar.jsp" 
	%>
	
	
	<jsp:useBean id="cobj" class="userBean.Cart"></jsp:useBean>
	<jsp:useBean id="pc" class="userBean.ProductCategory"></jsp:useBean>
	<jsp:setProperty property="userEmail" name="cobj" value="<%=Email %>"/>
	<c:set var="userEmail" value="<%=Email %>"></c:set>
	<c:set var="count" value=""></c:set>
	<!-- BREADCRUMB -->
	<div id="breadcrumb" class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				
					<main class="page">
						<section class="shopping-cart dark">
							<div class="container">
								<div class="block-heading">
									<h2>Shopping Cart</h2>
									<p  style=" color:black; font-style: italic; font-weight: bold;font-size: 26px"> &#698;A room without books is like a body without a soul. &#698; </p>
								</div>
								<div class="content">
									<div class="row">
										<div class="col-md-12 col-lg-8">
											<div class="items">
											
											<c:set var="count" value="${cobj.checkCart()}"></c:set>
											<c:choose>
											
											 <c:when test="${ count  <= 0}" > 
											 	
												
												
												<div  style="text-align:  center; padding: 20px" >
													<img alt="cart" src="https://tse4.mm.bing.net/th?id=OIP.q_FTdPIgEPUwnolfd9hfeQHaGr&pid=Api&P=0&w=192&h=174">
													<h1 style="color: black;font-weight: bolder;text-shadow: 2px 2px gray;padding: 10px">Your Cart is Empty</h1>
											 	</div>
											 </c:when>
											<c:otherwise>
												
												<c:forEach items="${cobj.getAllProductsFromCartByEmail() }" var="cart">
												<jsp:setProperty property="pCategoryId" name="pc" value="${cart.getpCategoryId()}"/>
											    
												<div class="product">
													<div class="row">
														<div class="col-md-3">
															<img class="img-fluid mx-auto d-block image" style="height:5cm;padding-left: 5% "
																src="book-images/${cart.getpImage() }">
																
														</div>
														<div class="col-md-8">
															<div class="info">
																<div class="row">
																	<div class="col-md-4 product-name">
																		<div class="product-name">
																			<a style="color:  #D10024;font-weight: bolder;font-size: 17px" href="#">${cart.getpName()}</a>
																			<div class="product-info">
																				<div>
																					Price: <span style="color: #D10024;font-weight: bolder;" class="value">&#8377;${cart.getpPrice() }</span>
																				</div>
																				<div>
																					CATEGORY: <span class="value" style="color: #D10024;font-weight: bolder;"><c:out  value="${pc.getNameByCategoryId()} "></c:out></span>	
																				</div>
																				<div>
																					Author: <span style="color: #D10024;font-weight: bolder;" class="value">${cart.getpAuthor()}</span>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="col-md-3 quantity">
																		<label for="quantity">Quantity:</label> <input
																			id="quantity" type="number" value="${ cart.getPqty()}"
																			class="form-control quantity-input">
																	</div>
																	<div class="col-md-3 price">
																		<span></span>
																	</div>
																	<div class="col-md-2 price">
																		<span><a title="delete record" class="btn btn-danger" href="delete?eid=${cart.getpId()}" onclick="return confirm('Are you sure ?')"><i class="fa fa-trash"></i></a></span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												
												<c:set var="sum" value="${ sum + cart.getpPrice() * cart.getPqty()}"></c:set>
												
												</c:forEach>
											</c:otherwise>
											</c:choose>
											
											
											</div>
										</div>
										<div class="col-md-12 col-lg-4" >
											<div class="summary">
												<h3>Summary</h3>
												<div class="summary-item">
													<span class="text">Subtotal</span><span class="price"><i class="fa fa-inr order-total" aria-hidden="true"> ${sum}</i></span>
												</div>
												<div class="summary-item">
													<span class="text">Discount</span><span class="price">%</span>
												</div>
												<div class="summary-item">
													<span class="text">Shipping</span><span class="price"><i class="fa fa-inr order-total" aria-hidden="true"> 0</i></span>
												</div>
												<div class="summary-item">
													<span class="text">Total</span><span class="price"><i class="fa fa-inr order-total" aria-hidden="true"> ${sum}</i></span>
												</div>
												<a href="checkout.jsp">
													<button type="button" class="btn btn-primary btn-lg btn-block" >Checkout</button>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</section>
					</main>

			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /SECTION -->

	

	<!-- Footer -->
		<%@ 
			include file="footer.jsp" 
		%>

	<!-- jQuery Plugins -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>
