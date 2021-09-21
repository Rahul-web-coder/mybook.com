<%@ include file="conn.jsp" %>
<%
PreparedStatement ps = cn.prepareStatement("update staff set status='1' where staffId=?");
ps.setString(1,request.getParameter("eid"));
ps.executeUpdate();
response.sendRedirect("emp-list.jsp");
%>