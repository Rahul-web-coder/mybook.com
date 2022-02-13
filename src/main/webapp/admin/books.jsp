
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	HttpSession se = request.getSession(false);

	String Email=(String)session.getAttribute("Session_Email");
	String name1[] = new String[5];
	name1[0] = "Login";
	if(Email != null){
    	name1 =Email.split("@",-1);
	}
	
	
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
   	<title>mybook.com | Books </title>
   	<%@ include file="../titleLogo.jsp" %>
		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="css/home.css"/>
    <link rel="stylesheet" href="style.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
     <!-- CSS only -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/26985e21e7.js" crossorigin="anonymous"></script>
	
</head>
<body>


		

	<div class="sidebar">
    <div class="logo-details">
      <img style="border-radius: 20%;margin-left: 10px" alt=""  src="../images/favicon_io/favicon-32x32.png">
      <span class="logo_name">mybook.com</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="home.jsp" class="active">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Dashboard</span>
          </a>
        </li>
        <li>
          <a href="books.jsp">
            <i class='bx bx-box' ></i>
            <span class="links_name">Books</span>
          </a>
        </li>
        <li>
          <a href="users.jsp">
            <i class='bx bx-box' ></i>
            <span class="links_name">Users</span>
          </a>
        </li>
        <li>
          <a href="all_orders.jsp">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">Order list</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-pie-chart-alt-2' ></i>
            <span class="links_name">Analytics</span>
          </a>
        </li>
       

        <li>
          <a href="teams.jsp">
            <i class='bx bx-user' ></i>
            <span class="links_name">Team</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-message' ></i>
            <span class="links_name">Messages</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-heart' ></i>
            <span class="links_name">Notification</span>
          </a>
        </li>
        <li>
          <a href="#">
            <i class='bx bx-cog' ></i>
            <span class="links_name">Setting</span>
          </a>
        </li>
        <li class="log_out">
          <a href="#">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
  </div>
  <section class="home-section">
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Dashboard</span>
      </div>
      <div class="search-box">
        <input type="text" placeholder="Search...">
        <i class='bx bx-search' ></i>
      </div>
      <div class="profile-details">
        <!-- <img src="images/profile.jpg" alt=""> -->
        <span class="admin_name"><%= name1[0].toUpperCase() %></span>
        <i class='bx bx-chevron-down' ></i>
      </div>
    </nav>
<jsp:useBean id="order" class="userBean.my_order"></jsp:useBean>
<jsp:useBean id="cat" class="userBean.ProductCategory"></jsp:useBean>
<jsp:useBean id="product" class="userBean.Product"></jsp:useBean>

    <div class="home-content">
      <div class="overview-boxes">
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Total Book Sold</div>
            <div class="number">${order.totalBookSold() }</div>
            <div class="indicator">
              <i class='bx bx-up-arrow-alt'></i>
              <span class="text">Up from yesterday</span>
            </div>
          </div>
          <i class='bx bx-cart-alt cart'></i>
        </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Add Book Category</div>
            <div class="number">${cat.totalBookCategory() }</div>
            <div class="indicator">
              <i class='bx bx-up-arrow-alt'></i>
              <span class="text">Up from yesterday</span>
            </div>
             
          </div>
         <i style="cursor: pointer;" class='fas fa-plus-circle fa-3x' class="form-control post-1-buttons" data-toggle="modal" data-target="#bookCategory" >
       	 
          </i> 
            
        </div>
        
        
          <!--  ADD Book Category Modal -->
	<div class="modal fade" id="bookCategory" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">ADD NEW PRODUCT CATEGORY</h5>
					<h1 style=" margin-left:15px; background-image: url('../images/favicon_io/favicon.ico'); width: 50px; height: 50px;"></h1>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="../addCategory" method="post">
						<div class="container">
							<div class="row">
							<!-- 
								<div class="col-sm">
									<div class="form-group">
										<label for="recipient-name" class="col-form-label">Category
											Id</label> <input type="text" class="form-control"
											id="recipient-name">
									</div>
								</div>
								 -->

								<div class="col-sm">
									<div class="form-group">
										<label for="recipient-name" class="col-form-label">Category
											Name</label> <input type="text" name="category-name" class="form-control"
											id="recipient-name">
									</div>
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="message-text" class="col-form-label">Category
								Description</label>
							<textarea class="form-control" name="category-desc" id="message-text"></textarea>
						</div>
						<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button type="submit" class="btn btn-primary">Add Book Category</button>
				</div>
					</form>
				</div>
				
			</div>
		</div>
	</div>
        <!--  ADD Book Category Modal  -->
        
        
         <div class="box">
          <div class="right-side">
            <div class="box-topic">Add Book</div>
            <div class="number" style="text-align: center;">${product.totalBooks() }</div>
            <div class="indicator">
              <i class='bx bx-up-arrow-alt'></i>
              <span class="text">Up from yesterday</span>
            </div>
             
          </div>
         <i style="color: blue;cursor: pointer;" class='fas fa-plus-circle fa-3x' class="form-control post-1-buttons" data-toggle="modal" data-target="#books" >
       	 
          </i> 
            
        </div>
        
        
        
        
        
 
        
                  <!--  ADD Book  Modal -->

	<div class="modal fade" id="books" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">ADD NEW PRODUCT</h5>
					<h1 style=" margin-left:15px; background-image: url('../images/favicon_io/favicon.ico'); width: 50px; height: 50px;"></h1>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="../addBooks" method="post"  enctype="multipart/form-data">
						<div class="container">
							<div class="row">
							
							<!-- 
								<div class="col-sm">
									<div class="form-group">
										<label for="recipient-name" class="col-form-label">Product
											Id</label> <input type="text" class="form-control"
											id="recipient-name">
									</div>
								</div>

								
							 -->
							
							
							<div class="col-sm">
									<div class="form-group">
										<label for="recipient-name" class="col-form-label">Product
											Name</label> <input type="text" name="book-name" class="form-control"
											id="recipient-name">
									</div>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="recipient-name" class="col-form-label">Product
								Author</label> <input type="text" name="book-author" class="form-control"
								id="recipient-name">
						</div>
						<div class="form-group">
							<label for="message-text" class="col-form-label">Product
								Description</label>
							<textarea class="form-control" name="book-description" id="message-text"></textarea>
						</div>

						<div class="container">
							<div class="row">
								<div class="col-sm">
									<div class="form-group">
										<label for="recipient-name" class="col-form-label">Product
											Seller</label> <input type="text" name="book-seller" class="form-control"
											id="recipient-name">
									</div>
								</div>

								<div class="col-sm">
									<div class="form-group">
										<label for="recipient-name" class="col-form-label">Product
											Price</label> <input type="number" name="book-price" class="form-control"
											id="recipient-name">
									</div>
								</div>
							</div>
						</div>

						<div class="container">
							<div class="row">
								<div class="col-sm">
									<div class="form-group">
										<label for="recipient-name" class="col-form-label">Product
											Discount</label> <input type="number" name="book-discount" class="form-control"
											id="recipient-name">
									</div>
								</div>

								<div class="col-sm">
									<div class="form-group">
										<label for="recipient-name" class="col-form-label">Product
											Quantity</label> <input type="number" name="book-qty" class="form-control"
											id="recipient-name">
									</div>
								</div>
							</div>
						</div>
						
						<label for="recipient-name" class="col-form-label">Product
											Image</label>
						<div class="input-group mb-3">
							<div class="input-group-prepend">
								<span class="input-group-text">Upload</span>
								<div class="custom-file">
								<input type="file" name="book-image" class="custom-file-input" id="inputGroupFile01"> 
								<label class="custom-file-label" for="inputGroupFile01">
									Choose file
								</label>
							</div>
							</div>
							
						</div>

						<div class="form-group">
							
                  			<select class="form-control" name="book-CatId" required="required">
                    			<option selected="selected" disabled="disabled">
                      				---Select Book Category---
                   				</option>
                   			
                    			<c:forEach items="${cat.getAllProductCategoryID() }" var="category">
	                      			<option value="${category.getpCategoryId() }">
	 								    ${category.getpCategoryId() } => ${category.getpCategoryName() }
	                      			</option>
	                      			
                    			</c:forEach>
                  			</select>
                
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-primary">Add Product</button>
						</div>

					</form>
				</div>
				
			</div>
		</div>
	</div>
	
        <!--  ADD Book  Modal  -->
        
    
        
        
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Total Return</div>
            <div class="number">11,086</div>
            <div class="indicator">
              <i class='bx bx-down-arrow-alt down'></i>
              <span class="text">Down From Today</span>
            </div>
          </div>
          <i class='bx bxs-cart-download cart four' ></i>
        </div>
      </div>




		<!-- BOOKSS -->
      <div class="sales-boxes" >
        <div class="recent-sales box" id="profile-details">
          <div class="title" style="text-align: center;font-size: 30px;font-weight: bolder;color:  rgb(153, 40, 59)">Our Books</div>
          <div class="sales-details" >
          <jsp:useBean id="s" class="userBean.Product"></jsp:useBean>
		
            <table class="table">
  <thead>
    <tr>
      <th scope="col" style="text-align: center;">#</th>
      <th scope="col" style="text-align: center;">Product Name</th>
      <th scope="col" style="text-align: center;">Product<br>Price(&#8377;)</th>
      <th scope="col" style="text-align: center;">Product<br>Quantity</th>
      <th scope="col" style="text-align: center;">Category<br>Id</th>
      <th scope="col" style="text-align: center;">Action</th>
      
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${s.getAllProductsFromDB()}" var="pd1">
    <tr>
	      <th scope="row" style="text-align: center;">${pd1.getpId() }</th>
	      <td style="text-align: center;">${pd1.getpName()}</td>
	      <td style="text-align: center;">${pd1.getpPrice() - ( pd1.getpPrice() * pd1.getpDiscount())/100} </td>
	      <td style="text-align: center;">${pd1.getPqty() }</td>
	      <td style="text-align: center;">${pd1.getpCategoryId() }</td>
	      <td class="price" style="text-align: center;"><a class="btn btn-danger" href="../DeleteServlet?id=${pd1.getpId()}"><i style="color: white" class="fas fa-trash"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-primary"><i style="color: white" class="fas fa-edit"></i></button></td>
	      
      
	
    </tr>
   </c:forEach>
  </tbody>
</table>
          </div>
          <div class="button">
            <a href="#">See All</a>
          </div>
        </div>
        <!--BOOKSSS  EDIT -->
        <!-- 
           <div class="sales-boxes"  >  --> 
                <div class="recent-sales box" id="profile-edit"  style="display: none ;overflow: scroll"> 
          <div class="title" style="text-align: center;font-size: 30px;font-weight: bolder;color:  rgb(153, 40, 59)">Our Books</div> 
          <div class="sales-details" >

		
            <table class="table">
  <thead>
    <tr>
      <th scope="col" style="text-align: center;">#</th>
      <th scope="col" style="text-align: center;">Product Name</th>
      <th scope="col" style="text-align: center;">Product<br>Price(&#8377;)</th>
      <th scope="col" style="text-align: center;">Product<br>Quantity</th>
      <th scope="col" style="text-align: center;">Category<br>Id</th>
      <th scope="col" style="text-align: center;">Action</th>
      
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${s.getAllProductsFromDB()}" var="pd1">
    <tr>
	      <th scope="row" style="text-align: center;"><input value="${pd1.getpId() }"></th>
	      <td style="text-align: center;"> <input value="${pd1.getpName()}"> </td>
	      <td style="text-align: center;"> <input value="${pd1.getpPrice() - ( pd1.getpPrice() * pd1.getpDiscount())/100} "></td>
	      <td style="text-align: center;"><input value="${pd1.getPqty() }"></td>
	      <td style="text-align: center;"><input value="${pd1.getpCategoryId() }"></td>
	      <td class="price" style="text-align: center;">
	      
	      <a class="btn btn-primary" ><i style="color: white" class="fas fa-save"></i></a></td>
	      
      
	
    </tr>
   </c:forEach>
  </tbody>
</table>
          </div>
          <div class="button">
            <a href="#">See All</a>
          </div>
         
        </div>
        
           
              <!--
              </div>
               -->
              <!-- BOOKS EDIT -->
              
              
        <div class="top-sales box">
          <div class="title" style="text-align: center;font-size: 30px;font-weight: bolder;color:  rgb(153, 40, 59)">Our Book Categories</div>
            <b style="margin-left:30%;color:red">WARNING</b>
           <p style="color: red">If you delete a CATEGORY. All BOOKS related to that CATEGORY will be DELETED automatically.</p>
          <ul class="top-sales-details">
          			
            <jsp:useBean id="pc" class="userBean.ProductCategory"></jsp:useBean>
             <c:forEach items="${pc.getAllProductCategoryID()}" var="pc1">
	            <li>
	            	<a href="#">
		              <!--<img src="images/sunglasses.jpg" alt="">-->
		              <span class="product">${pc1.getpCategoryId()}</span>
		            </a>
	            	
		            <a href="#">
		              <!--<img src="images/sunglasses.jpg" alt="">-->
		              <span class="product">${pc1.getpCategoryName() }</span>
		            </a>
		           
		            <span class="price" style="text-align: center;"><a style="float: left; padding:10px;" class="btn btn-danger" href="../DeleteBookcategoryServlet?id=${pc1.getpCategoryId()}"><i style="color: white" class="fas fa-trash"></i></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-primary"><i style="color: white" class="fas fa-edit"></i></button></span>
	           </li>
            </c:forEach>
          
          </ul>
        </div>
      </div>
      
      
      
      
      
       
              
             <div class="modal-footer">
  
        		<button type="button" id="edit-profile-button" class="btn btn-primary"><i class="fas fa-user-edit"></i>Edit</button>
     		</div> 
              
              
    </div>
  </section>
  
   
 <!-- JQUERY & JAVASCRIPT -->
		<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
		<!-- JQUERY & JAVASCRIPT -->
  
  <script type="text/javascript">
  



  /* BOOKS TOGGLE*/
   $(document).ready(function (){
  	 let editStatus =false;
  	 $('#edit-profile-button').click(function(){
  		//alert("LOVE");
  		 if (editStatus == false) {
  			 $("#profile-details").hide();
  			 
  			 $("#profile-edit").show();
  			 editStatus =true;
  			//it will add html tag to it
  			// $(this).html("<b>Back</b>").hide();
  			//it will add css class to that  ta
  			
  			//$(this).addClass("fas fa-user");
  			
  		}
  		 else{
  			$("#profile-details").show();
  			 
  			 $("#profile-edit").hide();
  			 editStatus =false;
  			 //this is  targeting (#edit-profile-button)
  			 //it will add html tag to it
  			 $(this).html("<b>Edit</b>");
  			//it will add css class to that  ta
  			$(this).addClass("fas fa-user-edit");
  		 }
  		 
  	 })
  });
   
  </script>



  <script>
  
  
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}







 </script>
 
 

<!-- jQuery Plugins -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/slick.min.js"></script>
	<script src="js/nouislider.min.js"></script>
	<script src="js/jquery.zoom.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>