<%@ include file="conn.jsp" %>
<html>
 <head>
  <link href='css1/bootstrap.min.css' rel='stylesheet'>
  <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css">
  <link href="css/style.css" type="text/css" rel="stylesheet">
<link href="css/grid.css" type="text/css" rel="stylesheet">
  <script src="https://kit.fontawesome.com/26985e21e7.js" crossorigin="anonymous"></script>
  <body>
  <%
  Statement st = cn.createStatement();
  ResultSet rst = st.executeQuery("select * from staff");
  %>
  <%@
		include file="navbar.jsp"
	%>
   <div class="container my-2">
   	<div class='card'>
   	 <div class='card-body'>
   	  <div>
   	  <p class='my-3'>
   	   <a href='add-emp-form.jsp' class='btn btn-primary'><i class='fa fa-user-plus'></i>Add Staff</a>
   	  </p>
   	  <%
   	  if(!rst.next()){
   		  %>
   		  <h3>No record found...</h3>
   		  <%
   		  return;
   	  }
   	  rst.beforeFirst();
   	  %>
   	  <div class='table-responsive'>
   	  <table class='table table table-striped table-bordered'>
   	   <thead>
   	    <tr>
   	     <th>Staff Id</th>
   	     <th>Name</th>
   	     <th>Email</th>
   	     <th>Address</th>
   	     <th>Contact</th>
   	     <th>Edit</th>
   	     <th>Delete</th>
   	     <th>Status</th>
   	    </tr>
   	   </thead>
   	   <tbody>
   	   <%
   	   while(rst.next())
   	   {
   		  %>
   	   		<tr>
   	   		<td><%=rst.getString(1) %></td>
   	   		<td><%=rst.getString(2) %></td>
   	   		
   	   		<td><%=rst.getString(3) %></td>
   	   		<td><%=rst.getString(4) %></td>
   	  		<td><%=rst.getString(5) %></td>
   	   		<td><a href='update-emp-form.jsp?eid=<%=rst.getString(1) %>' class='btn btn-primary'><i class='fa fa-user-edit'></i></a></td>
   	   		<td><a href='delete-emp.jsp?eid=<%=rst.getString(1) %>' class='btn btn-danger' title='delete record'><i class='fa fa-trash'></i></a></td>
   	   		<% 
   	   			if(rst.getInt(7)==1){
   	   				%>
   	   		<td><a><i class="fa fa-thumbs-up" aria-hidden="true"></i></a></td>
   	   		
   	   		<% 
   	   		}
   	   		else{
   	   			%>
   	   		
   	   		<td><a href='update-emp-form1.jsp?eid=<%=rst.getString(1) %>' class='btn btn-success'><i class="fa fa-check" aria-hidden="true"></i></a></td>
   	   		<% 
   	   			}
   	   		%>
   	   		 </tr>
   		  <%
   		 
   	   }
   	   %>
   	  
   	   </tbody>
   	  </table>
   	  </div>
   	  </div>
   	 </div>
   	</div>
   </div>
  </body>
 </head>
</html>