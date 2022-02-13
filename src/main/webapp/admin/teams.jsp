
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
   	<title>mybook.com | Team</title>
   	<%@ include file="../titleLogo.jsp" %>
		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="css/home.css"/>
    <link rel="stylesheet" href="style.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        <!--<img src="images/profile.jpg" alt="">-->
        <span class="admin_name">Firdaus Ahmed Siddiqui</span>
        <i class='bx bx-chevron-down' ></i>
      </div>
    </nav>

    <div class="home-content">
    <!-- 
      <div class="overview-boxes">
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Total Order</div>
            <div class="number">40,876</div>
            <div class="indicator">
              <i class='bx bx-up-arrow-alt'></i>
              <span class="text">Up from yesterday</span>
            </div>
          </div>
          <i class='bx bx-cart-alt cart'></i>
        </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Total Sales</div>
            <div class="number">38,876</div>
            <div class="indicator">
              <i class='bx bx-up-arrow-alt'></i>
              <span class="text">Up from yesterday</span>
            </div>
          </div>
          <i class='bx bxs-cart-add cart two' ></i>
        </div>
        <div class="box">
          <div class="right-side">
            <div class="box-topic">Total Profit</div>
            <div class="number">$12,876</div>
            <div class="indicator">
              <i class='bx bx-up-arrow-alt'></i>
              <span class="text">Up from yesterday</span>
            </div>
          </div>
          <i class='bx bx-cart cart three' ></i>
        </div>
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
      -->

      <div class="sales-boxes">
       
             <div class="top-sales box">
          <div class="title">Rahul Mahato</div>
          <img alt="" height="200px" style="text-align: center;border-radius: 20px" src="https://media-exp1.licdn.com/dms/image/C5603AQFB74o-CXVeLQ/profile-displayphoto-shrink_400_400/0/1635774046036?e=1641427200&v=beta&t=G4bfPnv-YRtR9PyB5ages4OEPOdRUfUnmxzadioeQk4">
          <ul class="top-sales-details">
          
            <li>
            <a href="#">
              <!--<img src="images/sunglasses.jpg" alt="">-->
              <span class="product">Software Enginner @ Cloudkaptan Consultancy Services</span>
            </a>
            <!-- <span class="price">$1107</span> -->
          </li>
         
          
          </ul>
        </div>
        
        
        
            
        <div class="top-sales box">
          <div class="title">Safa Marium</div>
          <img alt="" height="200px" style="text-align: center;border-radius: 20px" src="https://scontent.fccu3-1.fna.fbcdn.net/v/t1.6435-9/137213554_2825467771114442_781129285094865780_n.jpg?_nc_cat=100&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=35haNc-AM1YAX_4o-Y2&_nc_ht=scontent.fccu3-1.fna&oh=75e7900cc7a88fa64b4eda46fb2b2cb9&oe=61A7E09E">
          <ul class="top-sales-details">
          
            <li>
            <a href="#">
              <!--<img src="images/sunglasses.jpg" alt="">-->
              <span class="product">Software Enginner </span>
            </a>
            <!-- <span class="price">$1107</span> -->
          </li>
         
          
          </ul>
        </div>
        
        <div class="top-sales box">
          <div class="title">Firdaus Siddiqui</div>
          <img alt="" height="200px" style="text-align: center;border-radius: 20px" src="https://scontent.fccu3-1.fna.fbcdn.net/v/t1.6435-9/69264027_1099780416877088_5384372822778839040_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=e3f864&_nc_ohc=yfMvH-cquKIAX-5lvge&_nc_ht=scontent.fccu3-1.fna&oh=760324800f323135126e1d9744e4270b&oe=61A7325E">
          <ul class="top-sales-details">
          
            <li>
            <a href="#">
              <!--<img src="images/sunglasses.jpg" alt="">-->
              <span class="product">Software Enginner @ Cloudkaptan Consultancy Services</span>
            </a>
            <!-- <span class="price">$1107</span> -->
          </li>
         
          
          </ul>
        </div>
        
        
    
        
        
        
        <div class="top-sales box">
          <div class="title">Anup Sir</div>
          <img alt="" height="200px" style="text-align: center;border-radius: 20px" src="https://scontent.fccu3-1.fna.fbcdn.net/v/t1.6435-9/173405868_1867028740121785_5085967100899876779_n.jpg?_nc_cat=105&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=JPkWmL8RZIwAX9ZJP8z&_nc_ht=scontent.fccu3-1.fna&oh=3308925a0710949e3ccb85a63f427d67&oe=61A8CD4B">
          <ul class="top-sales-details">
          
            <li>
            <a href="#">
              <!--<img src="images/sunglasses.jpg" alt="">-->
              <span class="product">Senior Software Enginner </span>
            </a>
            <!-- <span class="price">$1107</span> -->
          </li>
         
          
          </ul>
        </div>
        
        
    
        
      
      </div>
    </div>
  </section>

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


</body>
</html>