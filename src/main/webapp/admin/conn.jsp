<%@ page import="java.sql.*" %>
<%
Connection cn = null;
try{
	Class.forName("com.mysql.jdbc.Driver");
	cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mybook.com","root","");
}
catch(Exception ex){
	System.out.println(ex);
}


%>