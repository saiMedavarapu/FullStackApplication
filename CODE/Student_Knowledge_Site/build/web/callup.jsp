<%@page import="cloud.Upload"%>
<%
    String pubk = request.getParameter("publickey");
    new Upload().con(pubk);
    response.sendRedirect("admin_home.jsp?msg=action#testx");
%>
