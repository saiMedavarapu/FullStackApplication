<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="pack.Dbconnection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Student Knowledge Site</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

	<link href="templatemo_style.css" type="text/css" rel="stylesheet" /> 
	<script type="text/javascript" src="js/jquery.min.js"></script> 
	<script type="text/javascript" src="js/jquery.scrollTo-min.js"></script> 
	<script type="text/javascript" src="js/jquery.localscroll-min.js"></script> 
	<script type="text/javascript" src="js/init.js"></script> 
    
    <link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" /> 
    <script type="text/JavaScript" src="js/slimbox2.js"></script> 
    <script>
    tbody {
    height: 250px;
    display: inline-block;
    width: 100%;
    overflow: auto;
}
        </script>
</head> 
<body> 
    <%String user=(String)session.getAttribute("sname");
    String emailid=(String)session.getAttribute("email");
    %>
<div id="templatemo_header">
   
    <div class="clear"></div>
</div>
<div id="templatemo_wrapper">
<div id="templatemo_main">
    <div id="content"> 
		<div id="home">
        	<ul >
                
                
            </ul>   
        </div>
        <div class="section section_with_padding" id="about"> 
            <h1><h2>Welcome to Student Page...</h2><h3><font color="green"><%=user%></font></h3></h1>
            
            
            
            <p><em></em></p>
            <div class="clear h20"></div>
           
            <a href="#home" class="home_btn">home</a> 
        </div> 
        <div class="section" id="services"> 
           
             <h2 align="center">Today Placements</h2>
            <div class="half left" style="overflow:scroll;height:100px;width:500px;overflow:auto">
             
               <table bgcolor="" cellpadding="5"  width="480" border="0">
                   
            <tr  bgcolor="#3300FF"> 
           <tr bgcolor="#ff9900"> 
              <td align="center"><font color="black"><b>Company & Position</strong></font></td>
              <td align="center"><font color="#110022"><b>Location</strong></font></td>
              <td align="center"> <font color="#110022"><b>Eligibility</strong></font></td>
            
             <td align="center"> <font color="#110022"><b>View</strong></font></td>
             
              
               
             
            </tr>
        <%               
    
    //name, userid, pass, mail, age, loc, sex, time_
        
 Class.forName("com.mysql.jdbc.Driver");
Connection cont = DriverManager.getConnection("jdbc:mysql://localhost:3306/sknowledge","root","root");
 	Statement st1t=cont.createStatement();
java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "yyyy-MM-dd";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
ResultSet rs1k = st1t.executeQuery("select * from  jobs where createdon='"+strDateNew1+"' or lastdate='"+strDateNew1+"'");
while(rs1k.next()){

       %>  
      <tr bgcolor="#e0e0e0"  > 
          <td align="center"> <strong><font  color="green"> <%=rs1k.getString("createdby")%> & <%=rs1k.getString("job_name")%></font></strong></td>
<td align="center"> <strong><font  color="green"> <%=rs1k.getString("location")%> </font></strong></td>
              <td align="center"> <strong><font   color="green"> <%=rs1k.getString("quali_req")%> </font></strong></td>
              
              <td align="center"><a href="jobview.jsp?<%=rs1k.getString("job_code")%>"/> <img src="images/cooltext199754897556823.png" height="20" width="80"></a> </td>
              
            
              
              
              
             
             
           </form>
     <%

}                                     
%>
      </tr>
                                         </tbody> </table><BR></BR> 
                
                
            </div>
      
      
      
      
      
        <h2 align="center">Upcoming Placements</h2>
            <div class="half left" style="overflow:scroll;height:100px;width:500px;overflow:auto">
             
               <table bgcolor="" cellpadding="5"  width="480" border="0">
                   
            <tr  bgcolor="#3300FF"> 
           <tr bgcolor="#ff9900"> 
              <td align="center"><font color="black"><b>Company & Position</strong></font></td>
              <td align="center"><font color="#110022"><b>Location</strong></font></td>
              <td align="center"> <font color="#110022"><b>Eligibility</strong></font></td>
            
             <td align="center"> <font color="#110022"><b>View</strong></font></td>
             
              
               
             
            </tr>
        <%               
    
    //name, userid, pass, mail, age, loc, sex, time_
        
        
 Class.forName("com.mysql.jdbc.Driver");
Connection cont1 = DriverManager.getConnection("jdbc:mysql://localhost:3306/sknowledge","root","root");
 	Statement st1t1=cont1.createStatement();
java.util.Date now1 = new java.util.Date();
	 String DATE_FORMAT11 = "yyyy-MM-dd";
	 SimpleDateFormat sdf11 = new SimpleDateFormat(DATE_FORMAT11);
     String strDateNew11 = sdf11.format(now1);
ResultSet rs1k1 = st1t1.executeQuery("select * from  jobs where createdon>= '"+strDateNew11+"' AND lastdate<= '2020-12-30'");
while(rs1k1.next()){

       %>  
      <tr bgcolor="#e0e0e0"  > 
          <td align="center"> <strong><font  color="green"> <%=rs1k1.getString("createdby")%> & <%=rs1k1.getString("job_name")%></font></strong></td>
<td align="center"> <strong><font  color="green"> <%=rs1k1.getString("location")%> </font></strong></td>
              <td align="center"> <strong><font   color="green"> <%=rs1k1.getString("quali_req")%> </font></strong></td>
              
              
              <td align="center"><a href="jobview.jsp?<%=rs1k1.getString("job_code")%>"/> <img src="images/cooltext199754897556823.png" height="20" width="80"></a> </td>
              
           
              
              
              
             
             
           </form>
     <%

}                                     
%>
      </tr>
                                         </tbody> </table><BR></BR> 
                
                
            </div>
      
      
      
      
      
      
      
       <h2 align="center">Incoming Placements</h2>
            <div class="half left" style="overflow:scroll;height:100px;width:500px;overflow:auto">
             
               <table bgcolor="" cellpadding="5"  width="480" border="0">
                   
            <tr  bgcolor="#3300FF"> 
           <tr bgcolor="#ff9900"> 
              <td align="center"><font color="black"><b>Company & Position</strong></font></td>
              <td align="center"><font color="#110022"><b>Location</strong></font></td>
              <td align="center"> <font color="#110022"><b>Eligibility</strong></font></td>
            
             <td align="center"> <font color="#110022"><b>View</strong></font></td>
             
              
               
             
            </tr>
        <%               
    
    //name, userid, pass, mail, age, loc, sex, time_
        
        
 Class.forName("com.mysql.jdbc.Driver");
Connection cont11 = DriverManager.getConnection("jdbc:mysql://localhost:3306/sknowledge","root","root");
 	Statement st1t11=cont11.createStatement();
java.util.Date now11 = new java.util.Date();
	 String DATE_FORMAT111 = "yyyy-MM-dd";
	 SimpleDateFormat sdf111 = new SimpleDateFormat(DATE_FORMAT111);
     String strDateNew111 = sdf111.format(now11);
ResultSet rs1k11 = st1t11.executeQuery("select * from  jobs where createdon>= '2000-01-30' AND lastdate<= '"+strDateNew111+"'");
while(rs1k11.next()){

       %>  
      <tr bgcolor="#e0e0e0"  > 
          <td align="center"> <strong><font  color="green"> <%=rs1k11.getString("createdby")%> & <%=rs1k11.getString("job_name")%></font></strong></td>
<td align="center"> <strong><font  color="green"> <%=rs1k11.getString("location")%> </font></strong></td>
              <td align="center"> <strong><font   color="green"> <%=rs1k11.getString("quali_req")%> </font></strong></td>
              
              
              <td align="center"><a href="jobview.jsp?<%=rs1k11.getString("job_code")%>"/> <img src="images/cooltext199754897556823.png" height="20" width="80"></a> </td>
              
            
              
              
              
             
             
           </form>
     <%

}                                     
%>
      </tr>
                                         </tbody> </table><BR></BR> 
                
                
            </div>
      
            <div class="half right">
            	
                
            </div>
            <a href="#home" class="home_btn">home</a> 
        </div> 
        
       
    
      
      
      <div class="section" id="viewjobdetails"> 
            <h1>Refine Results</h1> 
            <div class="half left">
                
                <div id="contact_form">
                   
                   <%
                   
                   String job_code=(String)session.getAttribute("job_code");
                   String job_name=(String)session.getAttribute("job_name");
                   String quali_req=(String)session.getAttribute("quali_req");
                   String skill_req=(String)session.getAttribute("skill_req");
                   String resp_req=(String)session.getAttribute("resp_req");
                   String exp_req=(String)session.getAttribute("exp_req");
                   String vac_open=(String)session.getAttribute("vac_open");
                   String createdby=(String)session.getAttribute("createdby");
                   String createdon=(String)session.getAttribute("createdon");
                   String lastdate=(String)session.getAttribute("lastdate");
                   String location=(String)session.getAttribute("location");
                   String salary=(String)session.getAttribute("salary");
                   String status1=(String)session.getAttribute("status1");
                   
                   
                   %> 
                
                 <table  align="center" height="300" width="500">
               
                <tr> 
                  <td colspan="2"><strong><em><font color="#CC3300" size="+1"> 
                    Job Information</font></em></strong></td>
                </tr>
                    <tr> 
                  <td colspan="2"></td>
                </tr>  <tr> 
                  <td colspan="2"></td>
                </tr>
				<tr> 
                  <td><font  color="blue"><strong>Job Code:</strong></font></td>
                  <td><%=job_code%></td>
                </tr>
                <tr> 
                  <td><font  color="blue"><strong>Job Name:</strong></font></td>
                  <td><font color="brown" size="3"><%=job_name%></font></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Responsibilities:</strong></font></td>
                  <td><%=resp_req%></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Req. 
                Experience:</strong></font></td>
                  <td><%=exp_req%>  Years</td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Qualification:</strong></font></td>
                  <td><%=quali_req%></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Vacancies:</strong></font></td>
                  <td><%=vac_open%></td>
                </tr>
                
                    
                   <tr> 
                  <td><font color="blue"><strong>Required Skills:</strong></font></td>
                  <td><%=skill_req%></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Company:</strong></font></td>
                  <td><%=createdby%></td>
                </tr>
                    
                    <tr> 
                  <td><font color="blue"><strong>Opening Date:</strong></font></td>
                  <td><font color="red" size="4"><%=createdon%></font></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Closing Date:</strong></font></td>
                  <td><font color="red" size="4"><%=lastdate%></font></td>
                </tr>
                   <tr> 
                  <td><font color="blue"><strong>Location:</strong></font></td>
                  <td><%=location%></td>
                </tr> 
                <tr> 
                  <td><font color="blue"><strong>Salary:</strong></font></td>
                  <td><%=salary%>  lak/pam</td>
                </tr> 
                 <tr> 
                  <td><font color="blue"><strong>Status:</strong></font></td>
                  <td> <%=status1%></td>
                </tr>
                
                
                 <tr> 
                  <td colspan="2"></td>
                </tr>  <tr> 
                  <td colspan="2"></td>
                </tr>
                
              </table>
                
                <a href="#services"> <img src="images/cooltext199756206731488.png" height="60" width="80" style="margin-left: 250px"></a>
              
                </div>
            </div>
            
            <div class="half right">
                
               
               
            </div>
            <a href="#home" class="home_btn">home</a> 
        </div> 
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
        
         <%
   
if(request.getParameter("status1")!=null){
    out.println("<script>alert('Invalid Username/Password')</script>");
}

%>
        
       <div class="section" id="testimonial"> 
            <h1>Download Sites</h1> 
            <div class="half left">
                
                <div id="contact_form" style="overflow:scroll;height:350px;width:500px;overflow:auto">
                   
                    
                
                
                    <table>
                       <table style="border-style: solid" width="450" scroll="">
                           
                            <tr STYLE="background-color: yellowgreen;font-size: 15px;">                                
                                 <td align="center">Subject</td><td align="center">File_Name</td><td align="center">Type</td><td align="center">Download</td>
                            </tr> 
                         <% 
String name1=null;

Connection con1= Dbconnection.getConn(); 
Statement st1 = con1.createStatement();

String sss1 = "select * from documents ";
String idd1=null;String unam1=null;String dob1=null; String gender1=null;String email1=null; 
ResultSet rs1=st1.executeQuery(sss1);

while(rs1.next())
{
       idd1=rs1.getString(1);
                         unam1=rs1.getString(7);
                         dob1=rs1.getString(2);
                        email1=rs1.getString(3);
                            
                            %>
                            <TR>
                              <td><%=unam1%></td> <td style="text-align: center"><%=dob1%></td><td style="text-align: center"><%=email1%></td><td style="text-align: center"><a href="download.jsp?Doc_id=<%=rs1.getInt(1)%>"><img src="images/button.png" height="20" width="80"></a></td>
            
                            </TR>    
                            <%
                            }
                            %></tbody>
                        </table>
                        
                        </form>
                        
                        
                    </table> 
                
                
                
                
                </div>
            </div>
            
            <div class="half right">
                
               
               
            </div>
            <a href="#home" class="home_btn">home</a> 
        </div> 
        </div>
        <div class="section" id="feedback"> 
            <h1>Feedback Form</h1> 
            <div class="half left">
                <h3><font color="blue">New Composed Mail</font></h1> 
                <div id="contact_form">
                    <form id="contact_form" action="newcompose.jsp" method="POST" >
	<div class="row">
		<label for="name">Mail From:</label>
                <input id="name" class="input" name="name" type="text" readonly value=<%=emailid%> size="30" /><br />
	</div>
	<div class="row">
            <br><label for="email">Mail To:</label>
		<input id="email" class="input" name="email" type="text" value="admin" readonly size="30" /><br />
	</div>
        <div class="row">
            <br><label for="email">Subject:</label>
		<input id="email" class="input" name="Subject" type="text" value="" size="30" /><br />
	</div>
	<div class="row">
            <br><label for="message">Your Feedback:</label>
		<textarea id="message" class="input" name="message" rows="7" cols="30"></textarea><br />
	</div>
	<input id="submit_button" type="submit" value="Send Email To Administrator" style="background-color: yellowgreen;color: #ffffff"/>
                    </form>		</div>
            </div>
            
            <div class="half right">
                
            &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    <a href="#viewmails"><img src="images/cooltext198633322116200.png"></a>
               
            </div>
            <a href="#home" class="home_btn">home</a> 
        </div> 
        
         
 <div class="section" id="viewmails"> 
            <h1>Inbox Mails</h1> 
            <div class="half left">
                <h3><font color="blue">Administrator Mails</font></h1> 
                <div style="height: 280px;display: inline-block;width: 480px; overflow: auto;">
                
                    <table>
                       <table style="border-style: solid" width="450" scroll="">
                          
                            <tr STYLE="background-color: yellowgreen;font-size: 15px;">                                
                                <td align="center">ID</td> <td align="center">From</td><td align="center">To</td><td style="text-align: center">Subject</td><td align="center">Feedback</td><td align="center">Delete</td>
                            </tr> 
                         <% 
String name=null;

Connection con= Dbconnection.getConn();
Statement ste = con.createStatement();

String sss = "select * from compose where touser='"+emailid+"'";
String idd=null;String unam=null;String dob=null; String gender=null;String email=null; 
ResultSet rs=ste.executeQuery(sss);

while(rs.next())
{
       idd=rs.getString(1);
                         unam=rs.getString(2);
                         dob=rs.getString(3);
                         gender=rs.getString(4);
                         email=rs.getString(5);
                            
                            %>
                            <TR>
                                <td><%=idd%></td> <td><%=unam%></td> <td style="text-align: center"><%=dob%></td> <td><%=gender%></td><td style="text-align: center"><%=email%></td><td style="text-align: center"><a href="delete.jsp?<%=idd%>">Delete</a></td>
            
                            </TR>    
                            <%
                            }
                            %></tbody>
                        </table>
                        
                        </form>
                        
                        
                    </table> 
                         <div class="half right">
                
            </div>
                    
                </div>
                
                             <br><Br>  &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    <a href="#feedback"><img src="images/cooltext198771289987259.png"></a>
               
            </div>
            
            
            <a href="#home" class="home_btn">home</a> 
        </div> 






          
    
    <%
        
        if(request.getParameter("msk")!=null){
    out.println("<script>alert('File is Downloaded and Saved in D:->Key->Cloud Data Folder')</script>");
} 
        
if(request.getParameter("message")!=null){
    out.println("<script>alert('Feedback is Sented to Admin')</script>");
}    
if(request.getParameter("status")!=null){
    out.println("<script>alert('Sending Failure')</script>");
}
if(request.getParameter("delete")!=null){
    out.println("<script>alert('Message Deleted')</script>");
}

%>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <div class="section" id="contact"> 
            <h1>Placements</h1> 
            <div class="half left">
                
                <div id="contact_form">
                    <form method="post" name="contact" action="signup.jsp">

                        <label for="name">Name:</label> 
                        <input type="text" id="name" name="name" class="required input_field" />
                         <label for="email">Password:</label> 
                        <input type="password" id="email" name="pass" class="required input_field" />
                         <label for="email">Contact:</label> 
                        <input type="text" id="email" name="contact" class="required input_field" />

                        <label for="email">Email:</label> 
                        <input type="text" id="email" name="email" class="validate-email required input_field" />
 
                        <label for="text">Address:</label> 
                        <textarea name="address" rows="3" cols="6"></textarea>
                        
                        <input type="submit" class="submit_btn float_l" name="submit" id="submit" value="Send" />
                        
                    </form>
               	</div>
            </div>
            
            
            <a href="#home" class="home_btn">home</a> 
        </div> 
    </div> 
</div>


        












<div id="templatemo_sidebar">
	<div class="sidebar_box"><a href="student_home.jsp">
    	<span class="about"></span>
    	<span class="menu_title">HOME</span>
        <span class="menu_desc">Student Page</span>
        </a>
    </div>
    <div class="sidebar_box"><a href="#services">
	    <span class="Placements12"></span>
    	<span class="menu_title">Placements</span>
        <span class="menu_desc">Our job details</span>
        </a>
    </div>
    <div class="sidebar_box"><a href="#testimonial">
		<span class="EDUCATION1"></span>    
    	<span class="menu_title">Education</span>
        <span class="menu_desc">File Access.</span>
        </a>
    </div>
    
    
     <div class="sidebar_box"><a href="#feedback">
	    <span class="logout111"></span>
    	<span class="menu_title">Feedbacks</span>
        <span class="menu_desc">Send Review?</span>
        </a>
    </div>
    <div class="sidebar_box"><a href="index.jsp">
	    <span class="logout11"></span>
    	<span class="menu_title">Logout</span>
        <span class="menu_desc">Are U Logout?</span>
        </a>
    </div>
    <ul id="social_buttons">
        <li><a href="#" class="facebook"></a></li>
        <li><a href="#" class="flickr"></a></li>
        <li><a href="#" class="picasa"></a></li>
        <li><a href="#" class="twitter"></a></li>
        <li><a href="#" class="youtube"></a></li>
        <li><a href="#" class="vimeo"></a></li>                        
    </ul>
    
</div>
<div class="clear"></div>
</div>

<div id="templatemo_footer_wrapper">
	<div id="templatemo_footer">
    	<p></p>
    </div>
</div>
<!-- templatemo 386 spectrum -->
</body> 
</html>