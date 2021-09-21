<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<link href="css/style.css" type="text/css" rel="stylesheet">
	<link href="css/grid.css" type="text/css" rel="stylesheet">
	<link rel="stylesheet" href="css/signUp.css">
<script type="text/javascript">
 function validateUser(){
	 
	 var d1=document.getElementById("uid");
	 var d2=document.getElementById("email");
	 var d3=document.getElementById("contact");
	 var d4=document.getElementById("address");
	 var d5=document.getElementById("pass");
	 
	 var e1= document.getElementById("error1");
	 var e2= document.getElementById("error2");
	 var e3= document.getElementById("error3");
	 var e4= document.getElementById("error4");
	 var e5= document.getElementById("error5");
	 
	 e1.innerHTML="";
	 e2.innerHTML="";
	 e3.innerHTML="";
	 e4.innerHTML="";
	 e5.innerHTML="";
	 
	 ret_value=true; 
	 var x=document.getElementById("email").value; 
	 var atposition=x.indexOf("@");  
	 var dotposition=x.lastIndexOf(".");  
	 if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
		 e2.innerHTML="Please enter a valid e-mail address";  
	   ret_value=false;  
	   }  
	   
	 
		  var pw = document.getElementById("pass").value;
		 //minimum password length validation
		  if(pw.length < 8) {
		     e5.innerHTML = "**Password length must be atleast 8 characters";
		     ret_value=false;
		  }

		//maximum length of password validation
		  if(pw.length > 15) {
		     e5.innerHTML = "**Password length must not exceed 15 characters";
		     ret_value=false;
		  }
	  

	 if(d1.value.trim()==""||d1.value.trim()==null){
		 //alert("User id must be entered...");
		 e1.innerHTML="*This field is required";
		 ret_value=false;
	 }
	 if(d2.value.trim()==""||d2.value.trim()==null){
		 //alert("Password must be entered...");
		 e2.innerHTML="*This field is required";
		 ret_value=false;
	 }
	 if(d3.value.trim()==""||d3.value.trim()==null){
	 //alert("Password must be entered...");
	 e3.innerHTML="*This field is required";
	 ret_value=false;
 	}
 	if(d4.value.trim()==""||d4.value.trim()==null){
	 //alert("Password must be entered...");
	 e4.innerHTML="*This field is required";
	 ret_value=false;
	}

	if(d5.value.trim()==""||d5.value.trim()==null){
	 //alert("Password must be entered...");
	 e5.innerHTML="*This field is required";
	 ret_value=false;
	}
	
	return ret_value;
}
 

</script>
<title>mybook.com | Sign Up</title>
</head>
<body>
<main>
		<%@
		include file="navbar.jsp"
    	 %>

<div class="image-1">
      <img src="images/book.png" alt="book">
    </div>
<form action="emailCheck" class="login-box" method="post" >
  <div class="left">
    <h1>Sign up</h1>
    
   <div> <input type="text" name="username" id="uid" placeholder="Username" />
    <span style='color:red' id='error1'></span></div>
   <div> <input type="text" name="email" id="email" placeholder="E-mail" />
    <span style='color:red' id='error2'></span></div>
    <div>
    <input type="text" name="contact" id="contact" placeholder="Contact" />
     <span style='color:red' id='error3'></span>
    </div>
    <div>
    <input type="text" name="address" id="address" placeholder="Address" />
    <span style='color:red' id='error4'></span>
    </div>
    <div>
    <input type="password" name="password" id="pass" placeholder="Password" />
    <span style='color:red' id='error5'></span>
    </div>
    
    <input class="left c" type="submit" name="signup_submit" value="Sign up" onclick='return validateUser()' />
  </div>
  <h1>${requestScope['mseg']}</h1>
  <div class="right">
    <h1>Sign in with<br />social network</h1>
    
    <button class="social-signin facebook"><i style="font-size: 20px" class="fab fa-facebook"></i>&nbsp;Sign in with facebook</button>
    <button class="social-signin twitter"><i style="font-size: 20px" class="fab fa-twitter"></i> &nbsp;Sign in with Twitter</button>
    <button class="social-signin google"><i style="font-size: 20px" class="fab fa-google-plus"></i> &nbsp;Sign in with Google+</button>
  </div>
  <div class="or">OR</div>
</form>
	<div class="image-2">
      <img src="images/image-2.png" alt="signUp">
    </div>
 </main>
 
 
 
 
 <script src="https://kit.fontawesome.com/26985e21e7.js" crossorigin="anonymous"></script>
</body>
</html>