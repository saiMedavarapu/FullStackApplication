<%@page import="cloud.Down"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="pack.*"%>
<%@page import="java.sql.Connection"%>
<%
//String me = session.getAttribute("UNAME").toString();

String pubk = request.getQueryString();
//String aggk = request.getParameter("aggkey").trim();

System.out.println(pubk);
//id, userid, publickey_, aggrekey_, filename_
try{
    Connection con = Dbconnection.getConn();
    Statement st = con.createStatement();
    ResultSet rst = st.executeQuery("select * from education where  status_='"+pubk+"'");
        if(rst.next()){
            String name = rst.getString("name");
     new Down().don(name,pubk);
     response.sendRedirect("student_home.jsp?msk=action#testimonial");
    }else{
        out.print("Error Found Please Check Your Public Key or Aggregate Key or FileName");
    }
    }catch(Exception ex){
        out.print("Error Found Please Check Your Public Key or Aggregate Key or FileName");
        ex.printStackTrace();
    }
%>
