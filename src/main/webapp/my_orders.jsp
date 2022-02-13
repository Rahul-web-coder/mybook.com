 <%@ include file="check_session.jsp" %>
 <%@page import="userBean.User" %>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    	<%
		HttpSession sess=request.getSession(false);
		String email3 = (String)sess.getAttribute("m");
		User u = new User();
		u.setEmail(email3);
		
		
		User u1 = u.getDetailsByEmail();
		
	%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
		 <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>mybook.com | My Orders</title>
			<%@ include file="titleLogo.jsp" %>
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
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

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
    
        <!-- Template Stylesheet -->
        <link href="css/profile.css" rel="stylesheet">
</head>

		
<body  >
  <!-- Navbar -->
		<%@ 
			include file="navbar.jsp" 
		%>
		
   
   
   
   <div class="container">
    <div class="main-body">
    
          <!-- Breadcrumb -->
          <nav aria-label="breadcrumb" class="main-breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="home.jsp">Home</a></li>
              <li class="breadcrumb-item"><a href="profile.jsp">User</a></li>
              <li class="breadcrumb-item active" aria-current="page">My Orders</li>
            </ol>
          </nav>
          <!-- /Breadcrumb -->
    
          <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                    <img src="images/default_img.png" alt="Admin" class="rounded-circle" width="150">
                    <div class="mt-3">
                      <h4><%= u1.getUsername() %></h4>
                      <p class="text-secondary mb-1">Full Stack Developer</p>
                      <p class="text-muted font-size-sm"> <%= u1.getAddress() %></p>
                      <button class="btn btn-primary">Follow</button>
                      <button class="btn btn-outline-primary">Message</button>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card mt-3">
                <ul class="list-group list-group-flush">
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <i class="fas fa-book-reader"></i>
                    <a href="my_orders.jsp" class="text-secondary details">MY ORDERS</a>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <i class="fas fa-user-circle"></i>
                     <a href="profile.jsp" class="text-secondary details">ACCOUNT SETTINGS</a>
                  </li>
                  
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <i class="fas fa-home"></i>
                     <a href="saved_user_address.jsp" class="text-secondary details">MY ADDRESS</a>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <i class="fas fa-sign-out-alt"></i>
                     <a href="" class="text-secondary details">PAYMENTS</a>
                  </li>
                  
                  
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    <i class="fas fa-sms"></i>
                     <a href="" class="text-secondary details">MY CHAT</a>
                  </li>
                  <li class="list-group-item d-flex justify-content-between align-items-center flex-wrap">
                    	 <form action="Logout" method="post">
								<button style="background-color:#333 !important;color: white;font-weight: bolder;"> <i class="fa fa-sign-out"></i>Logout</button>
						</form>
                     
                  </li>
                </ul>
              </div>
            </div>
            <jsp:useBean id="cobj" class="userBean.my_order"></jsp:useBean>
	<jsp:useBean id="pc" class="userBean.ProductCategory"></jsp:useBean>
	<jsp:setProperty property="buyerName" name="cobj" value="<%=Email %>"/>
	
	<c:set var="buyerName" value="<%=Email %>"></c:set>
            
            
             <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                   <div class="col-md-12 col-lg-12" style="max-height: 650px;overflow: scroll;">
											<div class="items">
											
											<c:set var="count" value="${cobj.checkOrder()}"></c:set>
											<c:choose>
											
											 <c:when test="${ count  <= 0}" > 
											 	
												
												
												<div  style="text-align:  center; padding: 20px" >
													<img alt="cart" src="https://tse4.mm.bing.net/th?id=OIP.q_FTdPIgEPUwnolfd9hfeQHaGr&pid=Api&P=0&w=192&h=174">
													<h1 style="color: black;font-weight: bolder;text-shadow: 2px 2px gray;padding: 10px">No Orders to Show.<br><span style="color: #D10024">ORDER PLEASE</span></h1>
											 	</div>
											 </c:when>
											<c:otherwise>
												
												<c:forEach items="${cobj.getAllProductsFromOrderByEmail() }" var="order">
										
											    
												<div class="product">
													<div class="row">
														<div class="col-md-3">
															<img class="img-fluid mx-auto d-block image" style="height:5cm"
																src="https://images.pexels.com/photos/3585048/pexels-photo-3585048.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500">
														</div>
														<div class="col-md-8">
															<div class="info">
																<div class="row">
																	<div class="col-md-4 product-name">
																		<div class="product-name">
																			<a style="color:  #D10024;font-weight: bolder;font-size: 17px" href="#">${order.getProductName()}</a>
																			<div class="product-info">
																				<div>
																					Price: <span style="color: #D10024;font-weight: bolder;" class="value">&#8377;${order.getProductPrice() }</span>
																				</div>
																				<div>
																					CATEGORY: <span class="value" style="color: #D10024;font-weight: bolder;"></span>	
																				</div>
																				<div>
																					Author: <span style="color: #D10024;font-weight: bolder;" class="value"></span>
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="col-md-8 quantity">
																		<label for="quantity">Quantity : </label><span style="color: #D10024;font-weight: bolder;">  ${order.getProductQty() } Books</span>
																		<h6>Status :<span style="color: #D10024 ">${order.getStatus() }</span></h6>
																			
																	</div>
																	<div class="col-md-8 quantity">
																		<label for="quantity">Quantity : </label><span style="color: #D10024;font-weight: bolder;">  ${order.getProductQty() } Books</span>
																		<h6>Status :<span style="color: #D10024 ">${order.getStatus() }</span></h6>
																			
																	</div>
																
																</div>
															</div>
														</div>
													</div>
												</div>
												
												
												
												</c:forEach>
											</c:otherwise>
											</c:choose>
											
											
											</div>
										</div>
                </div>
              </div>
            
            
            
            
            
            
            
           
            <!-- 
            <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Full Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary text-bold">
                      <%= u1.getUsername() %>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%= u1.getEmail() %>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Phone</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%= u1.getContact()%>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Mobile</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <%= u1.getContact()%>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Address</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                     <%= u1.getAddress() %>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-12">
                      <a class="btn btn-info " target="__blank" href="https://www.bootdey.com/snippets/view/profile-edit-data-and-skills">Edit</a>
                    </div>
                  </div>
                </div>
              </div>
              -->

            



            </div>
          </div>

        </div>
        </div>
  

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