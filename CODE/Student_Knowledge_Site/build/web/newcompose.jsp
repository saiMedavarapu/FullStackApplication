<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="pack.Dbconnection"%>
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
<div id="templatemo_header">
   
    <div class="clear"></div>
</div>
<div id="templatemo_wrapper">
<div id="templatemo_main">
    <div id="content"> 
		<div id="home">
        	<ul >
                <li><a title="Gallery Image 1" href="images/cooltext198612581534711.png" rel="lightbox[gallery]">
                	<img src="images/cooltext198612581534711.png" alt="gallery image 1"  height="50" weight="300"/></a></li>
                
            </ul>   
        </div>
        <div class="section section_with_padding" id="about"> 
            <h1>Overview</h1>
            <div class="img_border img_fl">
                <img src="images/templatemo_image_02.jpg" alt="image 2" />	
            </div>
            <p><em>Student Knowledge Site provides one attractive environment where you can manipulate data and information about books and placements easily. So we can say the Core purpose of designing ?Student Knowledge Site? is to manage the task related to the college students/administrator and to reduce time to searching of appropriate placements in college view. Student Knowledge Site synchronizes the working of all the departments. It looks on all aspects of a college, its students, Services, Placements, Books and other co ? curricular activities.Student Knowledge Site Software  is  a  simple  yet  powerful  one  joint  integrated  platform  that connects  all  the  various  departments  of  an  institution  like
Administration, Education, Students  and many more specialized  modules.</em></p>
            <div class="clear h20"></div>
            <ul id="social_links">
                <li><a href="#" class="facebook">Facebook</a></li>
                <li><a href="#" class="flickr">Flickr</a></li>
                <li><a href="#" class="picasa">Picasa</a></li>
                <li><a href="#" class="twitter">Twitter</a></li>
                                  
            </ul>
            <a href="#home" class="home_btn">home</a> 
        </div> 
        <div class="section" id="services"> 
            <h1>Services</h1>
            
            <div class="half left">
                <div class="img_border img_nom">
                    <img src="images/placement.jpg" alt="image 4" height="100" width="208"/>	
                </div>
                
            	<p><em>The system will be updated by job postings by the Authority. Authority will be able to share information regarding the job, payment and selection procedure. A schedule for the recruiting drive will also be posted. Students who meet the criteria will be able to apply and will then be notified at each stage of the recruitment.</em></p>
                <p></p>
            </div>
            
            <div class="half right">
            	 <div class="img_border img_nom">
                    <img src="images/educa.PNG" alt="image 3" height="100" width="200"/>	
                </div>
                
                <p><em>It is an application where the students can view papers online. Through a web browser the students can search for a paper by its title or author .This application enables vendor to setup online book store, students to browse through the subjects, and a system administrator to add and remove  books and maintain lists of book categories.</p>
            	
                
            </div>
            <a href="#home" class="home_btn">home</a> 
        </div> 
        
       
        
        
       <div class="section" id="testimonial"> 
            <h1>Login Page</h1> 
            <div class="half left">
                
                <div id="contact_form">
                    <form method="post" name="contact" action="verification.jsp">

                        <label for="name">UserName:</label> 
                        <input type="text" id="name" name="name" class="required input_field" />
                         <label for="email">Password:</label> 
                        <input type="text" id="email" name="pass" class="required input_field" />
                         
                        <input type="submit" class="submit_btn float_l" name="submit" id="submit" value="Login" /> &nbsp;&nbsp;&nbsp;<input type="reset" class="submit_btn float_l" name="submit" id="submit" value="Reset" />
                        
                    </form>
               	</div>
            </div>
            
            <div class="half right">
                <h4></h4><br><br><br><br><br><br><br><br><br><br><br><br><br>
                <h6><strong><img src="images/login3.png"></strong></h6>
               
            </div>
            <a href="#home" class="home_btn">home</a> 
        </div> 
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <div class="section" id="contact"> 
            <h1>Registration</h1> 
            <div class="half left">
                
                <div id="contact_form">
                    <%
                     String username = request.getParameter("name");
    String dob = request.getParameter("email");
    String gender = request.getParameter("message");
   String role = request.getParameter("Subject");
  java.util.Date now = new java.util.Date();
	 String DATE_FORMAT1 = "dd/MM/yyyy";
	 SimpleDateFormat sdf1 = new SimpleDateFormat(DATE_FORMAT1);
     String strDateNew1 = sdf1.format(now);
    String ownerkey="Waiting";String nauth="Waiting";String status="Waiting";
          try {

Connection con= Dbconnection.getConn();
Statement st = con.createStatement();
    int i = st.executeUpdate("insert into compose(fromuser,touser,messages,subjects,statuss,dates) values('"+username+"','"+dob+"','"+gender+"','"+role+"','" +ownerkey+"','"+strDateNew1+"')");
    if (i != 0) {
    // assume it was sent
       
      response.sendRedirect("student_home.jsp?message='registered'#feedback");
    
}else
{     
response.sendRedirect("student_home.jsp?status='fail'#feedback");

}}
catch (Exception err) {
 err.printStackTrace();
}          
                    
                    
                    %>
               	</div>
            </div>
            
            <div class="half right">
                <h4>Mailing Address</h4>
                <h6><strong>Office One</strong></h6>
                100-110 Fusce nec ante at odio, <br />
                In vitae lacus in purus, 11070<br />
                Diam a mollis tempor<br /><br />
                
                <strong>Phone:</strong> 010-220-5300<br />
                <strong>Email:</strong> <a href="mailto:agent@company.com">agent@company.com</a> <br />
                
                <div class="cleaner h20"></div>
                
                <h6><strong>Office Two</strong></h6>
                200-220 Duis lacinia, <br />
                Ullamcorper mattis, 22080<br />
                Maecenas a diam, mollis magna<br /><br />
                
                <strong>Phone:</strong> 020-110-8300<br />
                <strong>Email:</strong> <a href="mailto:email@company.com">email@company.com</a> <br />
                
            </div>
            <a href="#home" class="home_btn">home</a> 
        </div> 
    </div> 
</div>

<div id="templatemo_sidebar">
	<div class="sidebar_box"><a href="#about">
    	<span class="about"></span>
    	<span class="menu_title">HOME</span>
        <span class="menu_desc">Welcome Page</span>
        </a>
    </div>
    <div class="sidebar_box"><a href="#services">
	    <span class="services"></span>
    	<span class="menu_title">Services</span>
        <span class="menu_desc">Our Goal of Work</span>
        </a>
    </div>
    <div class="sidebar_box"><a href="#testimonial">
		<span class="testimonial"></span>    
    	<span class="menu_title">Sign_In</span>
        <span class="menu_desc">Authorized Access.</span>
        </a>
    </div>
    <div class="sidebar_box"><a href="#contact">
	    <span class="contact"></span>
    	<span class="menu_title">Registration</span>
        <span class="menu_desc">New Student?</span>
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