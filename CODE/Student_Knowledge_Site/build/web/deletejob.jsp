
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
            int i = st2.executeUpdate("delete from jobs where job_code='"+data+"'");
            if (i != 0) {
                response.sendRedirect("admin_home.jsp?deletejob=registered#updatejobs");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }

%>