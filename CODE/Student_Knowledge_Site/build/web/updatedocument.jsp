
<%@page import="java.sql.*"%>
<html>
    <head>
	<title></title>
    </head>
    <body>

<hr>
	<form name="del"><font size="4">
			
		
	<% 
                	String pname=request.getParameter("textfield6");
                        
                        
                        String ptype=request.getParameter("textfield1");
                        String p_name=request.getParameter("textfield2");
                        
	String subject=request.getParameter("textfield5");
			
	Connection con=null;
	Statement st=null;
	ResultSet rs=null;
			
         try      
	{
	   Class.forName("com.mysql.jdbc.Driver");	
	   con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sknowledge","root","root");
		//Connection con = databasecon.getconnection();
	    st=con.createStatement();
	   String sql="update documents set subjectn='"+subject+"',FileName='"+p_name+"',type='"+ptype+"' where Doc_id='"+pname+"'";
 	   st.executeUpdate(sql);
		
                            
                            
		response.sendRedirect("admin_home.jsp?mds=success#testimonialx");
		
	}
	catch(Exception e1)	{ System.out.println("Database error"+e1.getMessage()); e1.printStackTrace();}

	
            %>
			
             </form>
       </body> 	
</html>