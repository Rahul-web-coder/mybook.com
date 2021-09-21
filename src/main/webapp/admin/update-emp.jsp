<%@ include file="conn.jsp" %>
<%
PreparedStatement ps = cn.prepareStatement("update staff set staffName=?, staffEmail=?, staffContact=?, staffAddress=?, staffPassword=? where staffId=?");
ps.setString(1,request.getParameter("name"));
ps.setString(2,request.getParameter("email"));
ps.setString(3,request.getParameter("contact"));
ps.setString(4,request.getParameter("address"));
ps.setString(5,request.getParameter("password"));
ps.setString(6,request.getParameter("eid"));
ps.executeUpdate();
response.sendRedirect("emp-list.jsp");
%>