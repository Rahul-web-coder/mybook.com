<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>mybook.com | Home</title>
	<link href="css/style.css" type="text/css" rel="stylesheet">
	<link href="css/grid.css" type="text/css" rel="stylesheet">
</head>
<body>
<main>

			<!-------------------- header ------------------->

			<%@ 
			include file="navbar.jsp" 
			%>
		
		<!-------------------- slider ------------------->
		
		
		<section class="slide">
		
		<div class="slider">
		<img style="width: 100%;"  src="images/book.jpeg">
		<div class="banner">
		
		<p class="text-1">We've Got <strong>an Idea!</strong></p>
		<p class="text-2" style=" color:white; font-style: italic; font-weight: bold;"> &#698;A room without books is like a body without a soul. &#698; </p>
		
		</div>
		</div>
		
		</section>
		
		<!-------------------- content ------------------->
		
		<section class="content-bg">
		<div class="container">
			
			<div class="row">
			
			<div class="adjust-1 box-1">
			<div class="wrap-col">
			<img src="images/page1-img1.png">
			<div class="extra-wrap">
			<h2>Who We Are</h2>
			<p><b>mybook.com</b> is one of <a href="#" class="link">fastest emerging</a> book website in the world. <a href="#" class="link">Our aim </a> is to provide quality books at <a href="#" class="link"> cheapest rates</a>. We value you, please try us once.</p>
			</div>
			</div>
			</div>
			
			<div class="adjust-1 box-1">
			<div class="wrap-col">
			<img src="images/page1-img2.png">
			<div class="extra-wrap">
			<h2>Starting Up....</h2>
			<p>Start-Up is one of <a href="#" class="link">free website templates</a> created by fahad chaudhry udemy instructor. <a href="#" class="link">Responsive Themes</a> by <a href="#" class="link">fahad ashfaq</a>. It’s optimized for any screen resolution.</p>
			</div>
			</div>
			</div>
			
			</div>
			
			<div class="row">
			<div class="adjust-0 box-2">
			<div class="wrap-col">
				<p class="text-3">Welcome to Our <span>Start-Up</span> Website!</p>
				<p class="text-4">So many books, so little time.</p>
			</div>
			</div>
			</div>
			
			<div class="row">
				<div class="adjust-2">
				<div class="wrap-col">
				<h2 class="top-1">Our Ideas</h2>
				<div class="box-3">
				
				<div>
				<img src="images/page1-img3.jpg" class="img-border">
				<a href="#" class="link-2">Nam liber tempor</a>
				<p>Uwisi eniminim veniam quis nostrud exerci tation ullamcorperex eacom</p>
				</div>
				
					<div>
				<img src="images/page1-img4.jpg" class="img-border">
				<a href="#" class="link-2">Nam liber tempor</a>
				<p>Uwisi eniminim veniam quis nostrud exerci tation ullamcorperex eacom</p>
				</div>
				
				<div class="last">
				<img src="images/page1-img5.jpg" class="img-border">
				<a href="#" class="link-2">Nam liber tempor</a>
				<p>Uwisi eniminim veniam quis nostrud exerci tation ullamcorperex eacom</p>
				</div>
				
				</div>
				<a href="#" class="button top-4">Read More</a>
				
				</div>
			</div>
			
			<div class="adjust-3">
			<div class="wrap-col">
			<h2 class="top-1">Latest Events</h2>
			
			<div class="top-2">
			<div class="date"><strong>17</strong><span>Oct,2021</span></div>
			<p><a href="#" class="link">Indias' Larget Book Fair</a><br>
			Sadipscing elitriam nonumy eirmod nonumy eirmod tempor invidunt labore.</p>
			</div>
			
				<div class="top-3">
			<div class="date"><strong>29</strong><span>Nov,2021</span></div>
			<p><a href="#" class="link">Asias' Largest Online Book Fair </a><br>
			Sadipscing elitriam nonumy eirmod nonumy eirmod tempor invidunt labore.</p>
			</div>
			<a href="#" class="button top-4">Read More</a>
			</div>
			</div>
			
			</div>
			
		</div>
		</section>
		
		<!-------------------- footer ------------------->
		
		<%@ 
			include file="footer.jsp" 
		%>
</main>

</body>
</html>