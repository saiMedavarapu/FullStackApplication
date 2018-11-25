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
  String query = "select * from Documents where doc_id = " + doc_id;
  ResultSet rs = stt.executeQuery(query);
  while(rs.next())
  {
      String  id=rs.getString(1);
      String  file_name=rs.getString(2);
      String  file_type=rs.getString(3);
       String  file_subject=rs.getString(7);
       session.setAttribute("id", id);
       session.setAttribute("file_name", file_name);
       session.setAttribute("file_type", file_type);
       session.setAttribute("file_subject", file_subject);
       response.sendRedirect("admin_home.jsp#updatex");
  }
  
 
  // close the connection object.. 
  
%>