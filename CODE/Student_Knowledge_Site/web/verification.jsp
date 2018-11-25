<%@page import="pack.Dbconnection"%>
<%@ page  import="java.sql.*"%>
<%
String a = request.getParameter("name");
String b= request.getParameter("pass");


try
{

String name=null;

Connection con= Dbconnection.getConn();
Statement st = con.createStatement();

String sss = "select * from students where name='"+a+"' && password='"+b+"' ";
String ownerkey=null;String emailid=null;
ResultSet rs=st.executeQuery(sss);

if(rs.next())
{
name=rs.getString("name");
ownerkey=rs.getString("id");
emailid=rs.getString("email");
response.sendRedirect("student_home.jsp");
session.setAttribute("sname",name);
session.setAttribute("id",ownerkey);
session.setAttribute("email",emailid);
session.setAttribute("userid",a);
   
}
else
{
   
        if(a.equals("admin") && b.equals("admin"))
    {
       session.setAttribute("admin",a);
       response.sendRedirect("admin_home.jsp");
    }
        else{
            response.sendRedirect("index.jsp?status1='fail'#testimonial");
        }
        response.sendRedirect("index.jsp?status1='fail'#testimonial");
}

}

catch(Exception e1)
{
out.println(e1.getMessage());
}

%>