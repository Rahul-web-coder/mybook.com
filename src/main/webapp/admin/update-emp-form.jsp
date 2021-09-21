<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="conn.jsp" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Update Employee</title>
	<link href='css1/bootstrap.min.css' rel='stylesheet'>
	<link href="css/style.css" type="text/css" rel="stylesheet">
<link href="css/grid.css" type="text/css" rel="stylesheet">
	<script type="text/javascript">
	  function validateUser()
	  {
		  
		  var d2=document.getElementById("name");
		  var d3=document.getElementById("email");
		  var d4=document.getElementById("conatct");
		  var d5=document.getElementById("password");
		  
		  var e2= document.getElementById("error2");
		  var e3= document.getElementById("error3");
		  var e4= document.getElementById("error4");
		  var e5= document.getElementById("error5");
		 
		  e2.innerHTML="";
		  e3.innerHTML="";
		  e4.innerHTML="";
		  e5.innerHTML="";
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
		  return ret_value;
	  }
	
	</script>
	</head>
	<body>
	<%
		PreparedStatement ps = cn.prepareStatement("select * from staff where staffId=?");
		ps.setString(1,request.getParameter("eid"));
		ResultSet rst = ps.executeQuery();
		rst.next();
	%>
	
	<%@
		include file="navbar.jsp"
	%>
		<div class='container my-4'>
		<h3>Update Employee</h3>
		 <div class='card'>
		  <div class='card-body'>
		   <form action='update-emp.jsp' method="post">
		   <div class='row col-md-12'>
		    <div class='form-group col-md-10'>
		     <label for='eid' class='col-form-label'>Staff Id</label>
		     <input type='text' class='form-control' id='eid' name='eid' value="<%=rst.getString(1) %>" placeholder='Enter Employee Id' readonly>
		    </div>
		    <div class='form-group col-md-10'>
		     <label for='fn' class='col-form-label'>Name</label>
		     <input type='text' class='form-control' id='name' name='name' value="<%=rst.getString(2) %>" placeholder='Enter First Name'>
		     <span style='color:red' id='error2'></span>
		    </div>
		    <div class='form-group col-md-10'>
		     <label for='ln' class='col-form-label'>Email</label>
		     <input type='text' class='form-control' id='email' name='email' value="<%=rst.getString(3) %>" placeholder='Enter Last Name'>
		     <span style='color:red' id='error3'></span>
		    </div>
		    <div class='form-group col-md-10'>
		     <label for='dept' class='col-form-label'>Contact</label>
		     <input type='text' class='form-control' id='contact' name='contact' value="<%=rst.getString(5) %>" placeholder='Enter Department'>
		     <span style='color:red' id='error4'></span>
		    </div>
		    <div class='form-group col-md-10'>
		     <label for='email' class='col-form-label'>Address</label>
		     <input type='text' class='form-control' id='address' name='address' value="<%=rst.getString(4) %>" placeholder='Enter Email'>
		     <span style='color:red' id='error5'></span>
		    </div>
		    <div class='form-group col-md-10'>
		     <label for='password' class='col-form-label'>Password</label>
		     <input type='password' class='form-control' id='password' name='password' value="<%=rst.getString(6) %>" placeholder='Enter Password'>
		     <span style='color:red' id='error6'></span>
		    </div>
		    <div class='form-group col-md-10' style="margin:20px">
		     <input type='submit' value='Submit' class='btn btn-danger' onclick='return validateUser()'>
		    </div>
		   </div>
		   </form>
		  </div>
		 </div>
		</div>
	</body>
</html>