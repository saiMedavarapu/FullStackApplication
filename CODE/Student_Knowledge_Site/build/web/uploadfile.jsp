<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.io.File"%>
<%@page import="pack.Dbconnection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.FileInputStream"%>
<%
String rtempfile = File.createTempFile("temp","1").getParent(); 

// get the file from the previous page form           
// save the file in temporary directory of server
// specify the max size = 15MB
MultipartRequest multi = new MultipartRequest(request,rtempfile, 15*1024*1024);

Enumeration files = multi.getFileNames();
 Calendar currentDate = Calendar.getInstance();
    SimpleDateFormat formatter =
            new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    String dateNow = formatter.format(currentDate.getTime());
    String subjectname=request.getParameter("subject");

String st="insert into documents(filename, type,content, upload_by,upload_time,subjectn) values (?,?,?,?,'"+dateNow+"','"+subjectname+"')";

// get the connection object from another class MyConnection's method getConnection();
// and create the prepareStatement
PreparedStatement psmt=Dbconnection.getConn().prepareStatement(st);

         
String name="";
String fileExtesion="";
File ff =null;
FileInputStream fin =null;

while (files.hasMoreElements())
{
   name=(String)files.nextElement();                                        
   ff = multi.getFile(name);
   fileExtesion = ff.getName().substring(ff.getName().lastIndexOf("."));
   
   // check user has select the correct file or not
   boolean fileAllowed = fileExtesion.equalsIgnoreCase(".txt")||
                         fileExtesion.equalsIgnoreCase(".pdf")||
                         fileExtesion.equalsIgnoreCase(".doc")||
                         fileExtesion.equalsIgnoreCase(".docx")||
                         fileExtesion.equalsIgnoreCase(".xls")||
                         fileExtesion.equalsIgnoreCase(".xlsx");
   
   if((ff!=null)&&fileAllowed)
   {
     
     try
     {
       fin=new FileInputStream(ff);
       psmt.setString(1, ff.getName());
       session.setAttribute("file_name", ff.getName());
       psmt.setString(2, fileExtesion);
         session.setAttribute("file_type", fileExtesion);
       psmt.setBinaryStream(3,(InputStream)fin, (int)(ff.length()));
       psmt.setString(4, "ADMIN");        // pass the user name or id 
       boolean sss = psmt.execute();
       response.sendRedirect("admin_home.jsp#testm");
     
     }
     
     catch(Exception e)
     {
       out.print("Failed due to " + e);
     }
     
     finally
     {
      // next statement is must otherwise file will not be deleted from the temp as fin using f.
      // its necessary to put outside otherwise at the time of exception file will not be closed.
           fin.close();
           ff.delete();
     }
   }
   else
   {
         out.print("Please select the correct file...");
   }// end of if and else
}// end of while

     // close the connection
%>