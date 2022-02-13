<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 
<%
		//Need to get session object for checking my email is null or not
		
		HttpSession hs = request.getSession(false);
	    String email = (String)hs.getAttribute("m");
				
	    if(email == null){
	    	RequestDispatcher rd= request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
	    }

%>