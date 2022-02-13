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
        <style type="text/css">
        	.table-responsive {
    margin: 30px 0;
}
.table-wrapper {
	background: #fff;
	padding: 20px 25px;
	border-radius: 3px;
	min-width: 1000px;
	box-shadow: 0 1px 1px rgba(0,0,0,.05);
}
.table-title {        
	padding-bottom: 15px;
	background: #435d7d;
	color: #fff;
	padding: 16px 30px;
	min-width: 100%;
	margin: -20px -25px 10px;
	border-radius: 3px 3px 0 0;
}
.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
}
.table-title .btn-group {
	float: right;
}
.table-title .btn {
	color: #fff;
	float: right;
	font-size: 13px;
	border: none;
	min-width: 50px;
	border-radius: 2px;
	border: none;
	outline: none !important;
	margin-left: 10px;
}
.table-title .btn i {
	float: left;
	font-size: 21px;
	margin-right: 5px;
}
.table-title .btn span {
	float: left;
	margin-top: 2px;
}
table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	padding: 12px 15px;
	vertical-align: middle;
}
table.table tr th:first-child {
	width: 60px;
}
table.table tr th:last-child {
	width: 100px;
}
table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}
table.table-striped.table-hover tbody tr:hover {
	background: #f5f5f5;
}
table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}	
table.table td:last-child i {
	opacity: 0.9;
	font-size: 22px;
	margin: 0 5px;
}
table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
	text-decoration: none;
	outline: none !important;
}
table.table td a:hover {
	color: #2196F3;
}
table.table td a.edit {
	color: #FFC107;
}
table.table td a.delete {
	color: #F44336;
}
table.table td i {
	font-size: 19px;
}
table.table .avatar {
	border-radius: 50%;
	vertical-align: middle;
	margin-right: 10px;
}
.pagination {
	float: right;
	margin: 0 0 5px;
}
.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 2px !important;
	text-align: center;
	padding: 0 6px;
}
.pagination li a:hover {
	color: #666;
}	
.pagination li.active a, .pagination li.active a.page-link {
	background: #03A9F4;
}
.pagination li.active a:hover {        
	background: #0397d6;
}
.pagination li.disabled i {
	color: #ccc;
}
.pagination li i {
	font-size: 16px;
	padding-top: 6px
}
.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
}    
/* Custom checkbox */
.custom-checkbox {
	position: relative;
}
.custom-checkbox input[type="checkbox"] {    
	opacity: 0;
	position: absolute;
	margin: 5px 0 0 3px;
	z-index: 9;
}
.custom-checkbox label:before{
	width: 18px;
	height: 18px;
}
.custom-checkbox label:before {
	content: '';
	margin-right: 10px;
	display: inline-block;
	vertical-align: text-top;
	background: white;
	border: 1px solid #bbb;
	border-radius: 2px;
	box-sizing: border-box;
	z-index: 2;
}
.custom-checkbox input[type="checkbox"]:checked + label:after {
	content: '';
	position: absolute;
	left: 6px;
	top: 3px;
	width: 6px;
	height: 11px;
	border: solid #000;
	border-width: 0 3px 3px 0;
	transform: inherit;
	z-index: 3;
	transform: rotateZ(45deg);
}
.custom-checkbox input[type="checkbox"]:checked + label:before {
	border-color: #03A9F4;
	background: #03A9F4;
}
.custom-checkbox input[type="checkbox"]:checked + label:after {
	border-color: #fff;
}
.custom-checkbox input[type="checkbox"]:disabled + label:before {
	color: #b8b8b8;
	cursor: auto;
	box-shadow: none;
	background: #ddd;
}
/* Modal styles */
.modal .modal-dialog {
	max-width: 400px;
}
.modal .modal-header, .modal .modal-body, .modal .modal-footer {
	padding: 20px 30px;
}
.modal .modal-content {
	border-radius: 3px;
	font-size: 14px;
}
.modal .modal-footer {
	background: #ecf0f1;
	border-radius: 0 0 3px 3px;
}
.modal .modal-title {
	display: inline-block;
}
.modal .form-control {
	border-radius: 2px;
	box-shadow: none;
	border-color: #dddddd;
}
.modal textarea.form-control {
	resize: vertical;
}
.modal .btn {
	border-radius: 2px;
	min-width: 100px;
}	
.modal form label {
	font-weight: normal;
}	
</style>
</head>
<body>
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
              <li class="breadcrumb-item active" aria-current="page">Saved Address</li>
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
            <jsp:useBean id="cobj" class="userBean.Cart"></jsp:useBean>
	<jsp:useBean id="pc" class="userBean.ProductCategory"></jsp:useBean>
	<jsp:setProperty property="userEmail" name="cobj" value="<%=Email %>"/>
	<c:set var="userEmail" value="<%=Email %>"></c:set>
            
           
             <div class="col-md-8">
             
              <div class="card mb-3">
            
               <div class="container-xl">
	<div class="table-responsive">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-3">
						<a href="#addEmployeeModal" class="btn btn-success" data-toggle="modal"><i class="fas fa-map-marker-alt"></i><span>Add Address</span></a>						
					</div>
					
				</div>
			</div>
			<table class="table table-striped table-hover">
				<thead>
					<tr>
						<th>
							<span class="custom-checkbox">
								<input type="checkbox" id="selectAll">
								<label for="selectAll"></label>
							</span>
						</th>
						<th>Name</th>
						<th>Email</th>
						<th>Phone No</th>
						<th>Pincode</th>
						<th>Locality</th>
						<th>City/District</th>
						<th>Address</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<span class="custom-checkbox">
								<input type="checkbox" id="checkbox1" name="options[]" value="1">
								<label for="checkbox1"></label>
							</span>
						</td>
						<td>Firdaus Ahmed</td>
						<td>firdaus@gmail.com</td>
						<td>7835896472</td>
						<td>700 023</td>
						<td>Khidderpore</td>
						<td>Kolkata</td>
						<td>4/3/H/96 B.K Road</td>
						<td>
							<a href="#deleteEmployeeModal" class="delete" data-toggle="modal"><i class="fas fa-trash-alt"></i></a>
						</td>
					</tr>
						
					 
				</tbody>
			</table>
			<div class="clearfix">
				<div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
				<ul class="pagination">
					<li class="page-item disabled"><a href="#">Previous</a></li>
					<li class="page-item"><a href="#" class="page-link">1</a></li>
					<li class="page-item"><a href="#" class="page-link">2</a></li>
					<li class="page-item active"><a href="#" class="page-link">3</a></li>
					<li class="page-item"><a href="#" class="page-link">4</a></li>
					<li class="page-item"><a href="#" class="page-link">5</a></li>
					<li class="page-item"><a href="#" class="page-link">Next</a></li>
				</ul>
			</div>
		</div>
	</div>        
</div>
<!-- Edit Modal HTML -->
<div id="addEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form>
				<div class="modal-header">						
					
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
					<label>Name</label>
						<input type="text" class="form-control" placeholder="Name" required>
					</div>
					<div class="form-group">
						<label>Email</label>
						<input type="email" class="form-control" value="<%=Email %>" placeholder="Email"  readonly="readonly">
					</div>
					
					<div class="form-group">
						<label>Phone No</label>
						<input type="text" class="form-control" placeholder="10 Digit Phone no">
					</div>	
					<div class="form-group">
						<label>PinCode</label>
						<input type="text" class="form-control" placeholder="Pincode">
					</div>	
					<div class="form-group">
						<label>Locality</label>
						<input type="text" class="form-control" placeholder="Locality">
					</div>	
					<div class="form-group">
						<label>City/Town/District</label>
						<input type="text" class="form-control" placeholder="City/Town/District">
					</div>	
					<div class="form-group">
						<label>Address</label>
						<input type="number" class="form-control" placeholder="Address" required>
					</div>					
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
					<input type="submit" class="btn btn-success" value="Add">
				</div>
			</form>
		</div>
	</div>
</div>
<!-- Edit Modal HTML -->
<div id="editEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form>
				<div class="modal-header">						
					<h4 class="modal-title">Edit Employee</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<div class="form-group">
						<label>Name</label>
						<input type="text" class="form-control" required>
					</div>
					<div class="form-group">
						<label>Email</label>
						<input type="email" class="form-control" value="<%="Welcome "+ name[0].toUpperCase() %>" required>
					</div>
					<div class="form-group">
						<label>Address</label>
						<textarea class="form-control" required></textarea>
					</div>
					<div class="form-group">
						<label>Phone</label>
						<input type="text" class="form-control" required>
					</div>					
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
					<input type="submit" class="btn btn-info" value="Save">
				</div>
			</form>
		</div>
	</div>
</div>
<!-- Delete Modal HTML -->
<div id="deleteEmployeeModal" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<form>
				<div class="modal-header">						
					<h4 class="modal-title">Delete Employee</h4>
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				</div>
				<div class="modal-body">					
					<p>Are you sure you want to delete these Records?</p>
					<p class="text-warning"><small>This action cannot be undone.</small></p>
				</div>
				<div class="modal-footer">
					<input type="button" class="btn btn-default" data-dismiss="modal" value="Cancel">
					<input type="submit" class="btn btn-danger" value="Delete">
				</div>
			</form>
		</div>
	</div>
</div>
               <!--  
                <div class="card-body">
                   <div class="col-md-12 col-lg-12">
											<div class="items">
											
											<c:set var="count" value="${cobj.checkCart()}"></c:set>
											<c:choose>
											
											 <c:when test="${ count  <= 0}" > 
											 	
												
												
												<div  style="text-align:  center; padding: 20px" >
													<img alt="address" src="https://cdn.pixabay.com/photo/2012/04/26/19/04/map-42871__340.png">
													<h1 style="color: black;font-weight: bolder;text-shadow: 2px 2px gray;padding: 10px">No Address Saved<br><span style="color: #D10024">Please Save Address </span></h1>
											 	</div>
											 </c:when>
											<c:otherwise>
												
												<c:forEach items="${cobj.getAllProductsFromCartByEmail() }" var="cart">
												<jsp:setProperty property="pCategoryId" name="pc" value="${cart.getpCategoryId()}"/>
											    
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
																			<a style="color:  #D10024;font-weight: bolder;font-size: 17px" href="#">${cart.getpName()}</a>
																			<div class="product-info">
																				<div>
																					Price: <span style="color: #D10024;font-weight: bolder;" class="value">&#8377;${cart.getpPrice()}</span>
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
																	<div class="col-md-8 quantity">
																		<label for="quantity">Quantity : </label><span style="color: #D10024 ">2</span>
																		<h6>Status :<span style="color: #D10024 ">Pending</span></h6>
																			
																	</div>
																	<div class="col-md-8 quantity">
																		<label for="quantity">Quantity : </label><span style="color: #D10024 ">4</span>
																		<h6>Status :<span style="color: #D10024 ">Pending</span></h6>
																			
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
                -->
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
        
        
        
        <script>
$(document).ready(function(){
	// Activate tooltip
	$('[data-toggle="tooltip"]').tooltip();
	
	// Select/Deselect checkboxes
	var checkbox = $('table tbody input[type="checkbox"]');
	$("#selectAll").click(function(){
		if(this.checked){
			checkbox.each(function(){
				this.checked = true;                        
			});
		} else{
			checkbox.each(function(){
				this.checked = false;                        
			});
		} 
	});
	checkbox.click(function(){
		if(!this.checked){
			$("#selectAll").prop("checked", false);
		}
	});
});
</script>
  

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