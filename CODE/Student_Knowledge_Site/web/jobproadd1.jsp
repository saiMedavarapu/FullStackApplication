<%@page import="java.sql.PreparedStatement"%>
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
    
</head> 
<body> 
    <%String user=(String)session.getAttribute("admin");%>
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
            <h1><h2>Welcome to <font color="red"><%=user%></font> Page...</h2></h1>
            
            
            
            <p><em></em></p>
            <div class="clear h20"></div>
           
            <a href="#home" class="home_btn">home</a> 
        </div> 
        <div class="section" id="servicesx"> 
            <h1>Campus Placement Info.</h1>
            
            <div class="half left">
                
            
		<%
                    int it1=Integer.parseInt(request.getParameter("textfield1")); 
        System.out.println(it1);
	String st2=request.getParameter("textfield2");
	String st3=request.getParameter("textfield3");	
	String st4=request.getParameter("textfield4");
	
	String st5=request.getParameter("textfield5");
        System.out.println(it1);
	double dt6=Double.parseDouble(request.getParameter("textfield6"));
        System.out.println(it1);
	int it7=Integer.parseInt(request.getParameter("textfield7"));
        System.out.println(it1);
	String st8=request.getParameter("textfield8");
	
		String salary=request.getParameter("salary");	
	String status=request.getParameter("status");
	
	String st9=request.getParameter("textfield9");	
	String st10=request.getParameter("textfield10");	
	String st11=request.getParameter("textfield11");
	String st12=request.getParameter("textfield12");	
         PreparedStatement ps=null;   
         Connection con1= Dbconnection.getConn();
                  ps=con1.prepareStatement("insert into jobs values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

	ps.setInt(1,it1);

	ps.setString(2,st2);
	ps.setString(3,st3);
	ps.setString(4,st4);
	ps.setString(5,st5);

	ps.setDouble(6,dt6);
	ps.setInt(7,it7);

	ps.setString(8,st8);
	ps.setString(9,st9);
	ps.setString(10,st10);
	ps.setString(11,"******");
        ps.setString(12,st11);
        
	
        
       ps.setString(13,salary);
       ps.setString(14,status);
	int j=ps.executeUpdate();
		if (j != 0) {
    // assume it was sent
       
      response.sendRedirect("admin_home.jsp?mes=success#servicesx");
    
}else
{     
response.sendRedirect("admin_home.jsp?messagex=success#servicesx");

}  %>
		
		
		
            </div>
            <a href="#home" class="home_btn">home</a> 
        </div> 
        
       
        
         <%
     
if(request.getParameter("status1")!=null){
    out.println("<script>alert('Invalid Username/Password')</script>");
}

%>
        
       <div class="section" id="testimonialx"> 
            <h1>Educational Sites</h1> 
            <div class="half left">
                
                <div id="contact_form">
                    <h2 align="center">   <a href="viewpapers.jsp"> <img src="images/education.png" height="400" width="400"></a></h2>
               	</div>
            </div>
            
            <div class="half right">
                
                
               
            </div>
            <a href="#home" class="home_btn">home</a> 
        </div> 
        
        
        
          
    
    <%
if(request.getParameter("message")!=null){
    out.println("<script>alert('Feddback is Sended to Student')</script>");
}    
if(request.getParameter("status")!=null){
    out.println("<script>alert('Feedback Failure')</script>");
}
if(request.getParameter("delete")!=null){
    out.println("<script>alert('Message Deleted')</script>");
}

%>
        
        
        <div class="section" id="feedback1"> 
            <h1>Feedback Form</h1> 
            <div class="half left">
                <h3><font color="blue">New Composed Mail</font></h1> 
                <div id="contact_form">
                    <form id="contact_form" action="newcompose1.jsp" method="POST" >
	<div class="row">
		<label for="name">Mail From:</label>
                <input id="name" class="input" name="name" type="text" readonly value="admin" size="30" /><br />
	</div>
	<div class="row">
            <br><label for="email">Mail To:</label>
		<input id="email" class="input" name="email" type="text"  size="30" /><br />
	</div>
        <div class="row">
            <br><label for="email">Subject:</label>
		<input id="email" class="input" name="Subject" type="text" value="" size="30" /><br />
	</div>
	<div class="row">
            <br><label for="message">Your Feedback:</label>
		<textarea id="message" class="input" name="message" rows="7" cols="30"></textarea><br />
	</div>
	<input id="submit_button" type="submit" value="Send Email To Student" style="background-color: yellowgreen;color: #ffffff"/>
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
                <h3><font color="blue">Student Mails</font></h1> 
                <div>
                
                    <table>
                       <table style="border-style: solid" width="450">
                            
                            <tr STYLE="background-color: yellowgreen;font-size: 15px;">                                
                                <td align="center">ID</td> <td align="center">From</td><td align="center">To</td><td style="text-align: center">Subject</td><td align="center">Feedback</td><td align="center">Delete</td>
                            </tr> 
                         <% 
String name=null;

Connection con= Dbconnection.getConn();
Statement st = con.createStatement();

String sss = "select * from compose where touser='admin'";
String idd=null;String unam=null;String dob=null; String gender=null;String email=null; 
ResultSet rs=st.executeQuery(sss);

while(rs.next())
{
       idd=rs.getString(1);
                         unam=rs.getString(2);
                         dob=rs.getString(3);
                         gender=rs.getString(4);
                         email=rs.getString(5);
                            
                            %>
                            <TR>
                                <td><%=idd%></td> <td><%=unam%></td> <td style="text-align: center"><%=dob%></td> <td><%=gender%></td><td style="text-align: center"><%=email%></td><td style="text-align: center"><a href="delete1.jsp?<%=idd%>">Delete</a></td>
            
                            </TR>    
                            <%
                            }
                            %>
                        </table>
                        
                        </form>
                        
                        
                    </table> 
                         <div class="half right">
                
                             <br><Br><br>  &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    <a href="#feedback1"><img src="images/cooltext198771289987259.png"></a>
               
            </div>
                    
                </div>
            </div>
            
            
            <a href="#home" class="home_btn">home</a> 
        </div> 



        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
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
	<div class="sidebar_box"><a href="admin_home.jsp">
    	<span class="about"></span>
    	<span class="menu_title">HOME</span>
        <span class="menu_desc">Administrator</span>
        </a>
    </div>
    <div class="sidebar_box"><a href="#servicesx">
	    <span class="Placements12"></span>
    	<span class="menu_title">Placements</span>
        <span class="menu_desc">Import Job details</span>
        </a>
    </div>
    <div class="sidebar_box"><a href="#testimonialx">
		<span class="EDUCATION1"></span>    
    	<span class="menu_title">Education</span>
        <span class="menu_desc">Import File Details.</span>
        </a>
    </div>
     <div class="sidebar_box"><a href="#feedback1">
	    <span class="logout11"></span>
    	<span class="menu_title">Feedbacks</span>
        <span class="menu_desc">Send Review?</span>
        </a>
    </div>
    <div class="sidebar_box"><a href="index.jsp">
	    <span class="logout11"></span>
    	<span class="menu_title">LOGOUT</span>
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