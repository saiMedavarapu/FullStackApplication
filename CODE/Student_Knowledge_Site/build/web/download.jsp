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
  String query = "select filename, type, content from Documents where doc_id = " + doc_id;
  ResultSet rs = stt.executeQuery(query);
  rs.next();
  
  // clear the response header information.
  response.reset();                        
  // check the file type and set the header contentType accordingly..   
  if(rs.getString(2)==".txt")
  {
      response.setContentType("application/octet-stream");
  }
  else if(rs.getString(2)==".pdf")
  {
      response.setContentType("application/pdf");
  }
  else if((rs.getString(2)==".doc")||rs.getString(2)==".docx")
  {
      response.setContentType("application/msword");
  }
  else if((rs.getString(2)==".xls")||(rs.getString(2)==".xlsx"))
  {
      response.setContentType("application/vnd.ms-excel");
  }
  // add header information to response object
  response.addHeader("Content-Disposition","attachment; filename="+rs.getString(1));
  // create the byte array from Blob
  Blob blb = rs.getBlob(3);
  byte[] bdata = blb.getBytes(1, (int) blb.length());
  
  // get the response Output stream object to write the content of the file into header
  OutputStream output =  response.getOutputStream();
  output.write(bdata);
  output.close();
  // close the obejct of ResultSet
  rs.close();
  
  // close the connection object.. 
  
%>