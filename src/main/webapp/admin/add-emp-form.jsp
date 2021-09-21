<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Add Employee</title>
	<link href='css1/bootstrap.min.css' rel='stylesheet'>
	<link href="css/style.css" type="text/css" rel="stylesheet">
<link href="css/grid.css" type="text/css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	
	<script type="text/javascript">
	  function validateUser()
	  {
		  
		  var d2=document.getElementById("username");
		  var d3=document.getElementById("email");
		  var d4=document.getElementById("contact");
		  var d5=document.getElementById("address");
		  var d6=document.getElementById("password");
		  var e1= document.getElementById("error1");
		  var e2= document.getElementById("error2");
		  var e3= document.getElementById("error3");
		  var e4= document.getElementById("error4");
		  var e5= document.getElementById("error5");
		  var e6= document.getElementById("error6");
		  
		  e2.innerHTML="";
		  e3.innerHTML="";
		  e4.innerHTML="";
		  e5.innerHTML="";
		  e6.innerHTML="";
		  ret_value=true;
		  
		  if(d2.value.trim()==""||d2.value.trim()==null)
		     {
				 //alert("User id must be entered...");
				 e2.innerHTML="*This field is required";
				 ret_value=false;
			 }
		  if(d3.value.trim()==""||d3.value.trim()==null)
		     {
				 //alert("User id must be entered...");
				 e3.innerHTML="*This field is required";
				 ret_value=false;
			 }
		  if(d4.value.trim()==""||d4.value.trim()==null)
		     {
				 //alert("User id must be entered...");
				 e4.innerHTML="*This field is required";
				 ret_value=false;
			 }
		  if(d5.value.trim()==""||d5.value.trim()==null)
		     {
				 //alert("User id must be entered...");
				 e5.innerHTML="*This field is required";
				 ret_value=false;
			 }
		  if(d6.value.trim()==""||d6.value.trim()==null)
		     {
				 //alert("User id must be entered...");
				 e6.innerHTML="*This field is required";
				 ret_value=false;
			 }
		  return ret_value;
	  }
	
	  
	
	
	
	
	</script>
	</head>
	<body>
	
	<%@
		include file="navbar.jsp"
	%>
		<div class='container my-4'>
		<h3>Add Staff</h3>
		 <div class='card'>
		  <div class='card-body'>
		   <form action='../add-form'  method="post">
		   <div class='row col-md-12'>
		    <div class='form-group col-md-10'>
		     <label for='username' class='col-form-label'>Name</label>
		     <input type='text' class='form-control' id='username' name='username' placeholder='Enter Name'>
		     <span style='color:red' id='error2'></span>
		    </div>
		    <div class='form-group col-md-10'>
		     <label for='email' class='col-form-label'>Email</label>
		     <input type='text' class='form-control' id='email' name='email' placeholder='Enter Email'>
		     <span style='color:red' id='error3'></span>
		    </div>
		    <div class='form-group col-md-10'>
		     <label for='contact' class='col-form-label'>Contact</label>
		     <input type='text' class='form-control' id='contact' name='contact' placeholder='Enter Contact'>
		     <span style='color:red' id='error4'></span>
		    </div>
		    <div class='form-group col-md-10'>
		     <label for='address' class='col-form-label'>Address</label>
		     <input type='text' class='form-control' id='address' name='address' placeholder='Enter Address'>
		     <span style='color:red' id='error5'></span>
		    </div>
		    <div class='form-group col-md-10'>
		     <label for='password' class='col-form-label'>Password</label>
		     <input type='password' class='form-control' id='password' name='password' placeholder='Enter Password'>
		     <span style='color:red' id='error6'></span>
		    </div>
		    <div class='form-group col-md-10' style="margin:20px">
		     
		      <input type='submit' value='Submit' class='btn btn-danger' onclick='return validateUser()' >

		    </div>
		   </div>
		   </form>
		  </div>
		 </div>
		</div>
	</body>
</html>