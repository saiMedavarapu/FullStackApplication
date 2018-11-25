
<%@page import="pack.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String data = request.getQueryString();
    if (data != null) {
        try {
            Connection con2 = null;
            Statement st2 = null;
            
 con2= Dbconnection.getConn();
            st2 = con2.createStatement();
            int i = st2.executeUpdate("delete from compose where id='" + data+ "'");
            if (i != 0) {
                response.sendRedirect("student_home.jsp?delete='registered'#viewmails");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

%>