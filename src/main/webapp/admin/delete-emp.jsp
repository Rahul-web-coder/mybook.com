<%@ include file="conn.jsp" %>
<%
PreparedStatement ps = cn.prepareStatement("delete from staff where staffId=?");
ps.setString(1,request.getParameter("eid"));
ps.executeUpdate();
response.sendRedirect("emp-list.jsp");
%>