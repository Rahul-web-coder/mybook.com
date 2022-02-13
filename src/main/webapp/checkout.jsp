 	<%
			HttpSession sess = request.getSession(false);
			String user_email = (String)sess.getAttribute("m");
			
	%>
 
 <%@ include file="check_session.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
  
    <%@ page import=" java.util.*" %>


<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>mybook.com | Checkout</title>
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


<link type="text/css" rel="stylesheet" href="css/cart.css" />
</head>
<body>
	<!-- HEADER -->
							<!-- HEADER -->
	<%@ 
			include file="navbar.jsp" 
	%>

	
	<!-- BREADCRUMB -->
	<div id="breadcrumb" class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">
				<div class="col-md-12">
					<h3 class="breadcrumb-header">Checkout</h3>
					<ul class="breadcrumb-tree">
						<li><a href="#">Home</a></li>
						<li class="active">Checkout</li>
					</ul>
				</div>
			</div>
			<!-- /row -->
		</div>
		<!-- /container -->
	</div>
	<!-- /BREADCRUMB -->

	<!-- SECTION -->
	<div class="section">
		<!-- container -->
		<div class="container">
			<!-- row -->
			<div class="row">

				<div class="col-md-7">
					<!-- Billing Details -->
					<div class="billing-details">
						<div class="section-title">
							<h3 class="title">Billing/Shipping address</h3>
						</div>
						<div class="form-group">
							<input class="input" type="text" name="first-name"
								placeholder="First Name">
						</div>
						<div class="form-group">
							<input class="input" type="text" name="last-name"
								placeholder="Last Name">
						</div>
						<div class="form-group">
							<input class="input" type="email" name="email"
								placeholder="Email" >
						</div>
						<div class="form-group">
							<input class="input" type="text" name="address"
								placeholder="Address">
						</div>
						<div class="form-group">
							<input class="input" type="text" name="city" placeholder="City">
						</div>
						<div class="form-group">
							<input class="input" type="text" name="country"
								placeholder="Country">
						</div>
						<div class="form-group">
							<input class="input" type="text" name="zip-code"
								placeholder="ZIP Code">
						</div>
						<div class="form-group">
							<input class="input" type="tel" name="tel"
								placeholder="Telephone">
						</div>
						<div class="form-group">
							<div class="input-checkbox">
								<input type="checkbox" id="create-account"> <label
									for="create-account"> <span></span> Create Account?
								</label>
								<div class="caption">
									<p>Lorem ipsum dolor sit amet, consectetur adipisicing
										elit, sed do eiusmod tempor incididunt.</p>
									<input class="input" type="password" name="password"
										placeholder="Enter Your Password">
								</div>
							</div>
						</div>
					</div>
					<!-- /Billing Details -->

					<!-- Shiping Details -->
					<!-- 
					<div class="shiping-details">
						<div class="section-title">
							<h3 class="title">Shiping address</h3>
						</div>
						<div class="input-checkbox">
							<input type="checkbox" id="shiping-address"> <label
								for="shiping-address"> <span></span> Ship to a diffrent
								address?
							</label>
							<div class="caption">
								<div class="form-group">
									<input class="input" type="text" name="first-name"
										placeholder="First Name">
								</div>
								<div class="form-group">
									<input class="input" type="text" name="last-name"
										placeholder="Last Name">
								</div>
								<div class="form-group">
									<input class="input" type="email" name="email"
										placeholder="Email">
								</div>
								<div class="form-group">
									<input class="input" type="text" name="address"
										placeholder="Address">
								</div>
								<div class="form-group">
									<input class="input" type="text" name="city" placeholder="City">
								</div>
								<div class="form-group">
									<input class="input" type="text" name="country"
										placeholder="Country">
								</div>
								<div class="form-group">
									<input class="input" type="text" name="zip-code"
										placeholder="ZIP Code">
								</div>
								<div class="form-group">
									<input class="input" type="tel" name="tel"
										placeholder="Telephone">
								</div>
							</div>
						</div>
					</div>
					 -->
					<!-- /Shiping Details -->
		
					<!-- Order notes -->
					<div class="order-notes">
						<textarea class="input" placeholder="Order Notes"></textarea>
					</div>
					<!-- /Order notes -->
				</div>
					
	<jsp:useBean id="cobj" class="userBean.Cart"></jsp:useBean>
	<jsp:useBean id="pc" class="userBean.ProductCategory"></jsp:useBean>
	<jsp:setProperty property="userEmail" name="cobj" value="<%=Email %>"/>
	<c:set var="userEmail" value="<%=Email %>"></c:set>
					
				<!-- Order Details -->
				<div class="col-md-5 order-details">
					<div class="section-title text-center">
						<h3 class="title">Your Order</h3>
					</div>
					
					<div class="order-summary">
						<div class="order-col">
							<div>
								<strong>PRODUCT</strong>
							</div>
							<div>
								<strong>TOTAL</strong>
							</div>
						</div>
						
					
						<div class="order-products">
								<c:forEach items="${cobj.getAllProductsFromCartByEmail() }" var="cart">
								<jsp:setProperty property="pCategoryId" name="pc" value="${cart.getpCategoryId()}"/>
								<div class="order-col">
								
								<div>${cart.getpName()}  <span>( ${ cart.getPqty()} )</span></div>
								
								<div><i class="fa fa-inr" aria-hidden="true"> <c:out value="${cart.getpPrice() * cart.getPqty()}" ></c:out></i></div>
								<c:set var="sum" value="${ sum + cart.getpPrice() * cart.getPqty() }"/>
								
							</div>
							</c:forEach>
							
						</div>
						
						<div class="order-col">
							<div>Shiping</div>
							<div>
								<strong>FREE</strong>
							</div>
						</div>
						<div class="order-col">
							<div>
								<strong>TOTAL</strong>
							</div>
							<div>
								<i class="fa fa-inr order-total" aria-hidden="true"> <strong class="order-total"> ${sum }</strong></i>
							</div>
						</div>
					</div>
				
					<!--  
					<div class="payment-method">
						<div class="input-radio">
							<input type="radio" name="payment" id="payment-1"> <label
								for="payment-1"> <span></span> Direct Bank Transfer
							</label>
							<div class="caption">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua.</p>
							</div>
						</div>
						<div class="input-radio">
							<input type="radio" name="payment" id="payment-2"> <label
								for="payment-2"> <span></span> Cheque Payment
							</label>
							<div class="caption">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua.</p>
							</div>
						</div>
						<div class="input-radio">
							<input type="radio" name="payment" id="payment-3"> <label
								for="payment-3"> <span></span> Paypal System
							</label>
							<div class="caption">
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua.</p>
							</div>
						</div>
					</div>
					-->
					
					<div class="input-checkbox">
						<input type="checkbox" id="terms"> <label for="terms">
							<span></span> I've read and accept the <a href="#">terms &
								conditions</a>
						</label>
					</div>
					<a href="#">
					<button onclick="paynow(${sum})" class="primary-btn order-submit">Place order</button>
					</a>
				</div>
				<!-- /Order Details -->
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
		
		
	<!-- AJAX JQUERY LINK -->
	<script src="https://code.jquery.com/jquery-3.5.0.js" ></script>
	
	
	<!-- PAYMENT GATEWAY -->
	   		<script src="https://checkout.razorpay.com/v1/checkout.js"></script>
	   		
	<script>

	function paynow(amount) {


		$.ajax({
			url: "paymentServ",
			type: "POST",
			data: {"amount" : amount},
			success: function(result) {
				var options = {
					    "key": "rzp_test_sEoLMc8A5HY45R", // Enter the Key ID generated from the Dashboard
					    "amount": amount * 100, // Amount is in currency subunits. Default currency is INR. Hence, 50000 refers to 50000 paise
					    "currency": "INR",
					    "name": "mybook.com",
					    "description": "Test Transaction",
					    "image": "images/favicon_io/favicon-32x32.png",
					    
					    "handler": function (response){
					    	$.ajax({
					    		url: "paymentServ",
								type: "POST",
								data: {"transactionId" : response.razorpay_payment_id},
								success: function(result) {
									
									window.location.href="addOrderedProduct";
									//window.location.href="deleteBuyProduct";
								}
					    		
					    	});
					        /*alert(response.razorpay_payment_id);
					        alert(response.razorpay_order_id);
					        alert(response.razorpay_signature)*/
					    }
					};
					var rzp1 = new Razorpay(options);
					rzp1.open();
				
			},
			error: function(error) {
				console.log(error);
				
			}
		})
	
	}
</script>


	<!-- PAYMENT GATEWAY -->
   		

	

	<!-- jQuery Plugins -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/main.js"></script>

</body>
</html>
