<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%
  String doc_id = request.getParameter("Doc_id"); 
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sknowledge","root","root");
   Statement stt=con.createStatement();    
  String query = "delete from Documents where doc_id = " + doc_id;
  int respo=stt.executeUpdate(query);
       response.sendRedirect("admin_home.jsp?mcs=action#deletedocs");
  
 
  // close the connection object.. 
  
%>