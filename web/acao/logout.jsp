<%-- 
    Document   : logout
    Created on : 06/06/2012, 16:39:15
    Author     : fernando_mota
--%>

<%
session.invalidate();
response.sendRedirect("../index.jsp?situacao=logout_sucesso");
%>
