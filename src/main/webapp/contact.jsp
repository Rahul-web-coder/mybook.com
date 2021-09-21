<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>mybook.com | Contact</title>
	<link href="css/style.css" type="text/css" rel="stylesheet">
	<link href="css/grid.css" type="text/css" rel="stylesheet">
</head>
<body>
<main>

		<!-------------------- header ------------------->

		<%@ 
			include file="navbar.jsp" 
		%>
		
		
		<!-------------------- content ------------------->
		
		<section class="content-bg">
		<div class="container top">
		
		<div class="row">
		
		<div class="adjust-2">
		<div class="wrap-col">
		<h2>How to Find us</h2>
		
		<div class="map img-border">
		<iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d20131803.71631879!2d77.99556311308734!3d20.3271864738341!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1627992020102!5m2!1sen!2sin" width="572" height="235" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
		</div>
		
		<div class="right-1">
		<p class="p2 clr-1">Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitt accusam.</p>
<p>Aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero voluptua. est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat.</p>
		</div>
		
		</div>
		</div>
		
		<div class="adjust-3">
		<div class="wrap-col">
		<h2>Contact form</h2>
		<form id="form">
			<fieldset>
			<label><input type="text" placeholder="Enter Name:"></label>
			<label><input type="email" placeholder="Enter Email"></label>
			<label><input type="tel" placeholder="Enter number"></label>
			<label><input type="tel" placeholder="Enter address"></label>
		    <label><textarea rows="3" placeholder="Message"> </textarea></label>
			<div class="btns">
			<a href="#" class="button">clear</a>
			<a href="#" class="button">Send</a>
			</div>
			</fieldset>
		</form>
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