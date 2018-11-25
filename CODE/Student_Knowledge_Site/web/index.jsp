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
    <style>
 #map {
        width: 100%;
        height: 400px;
     }
    </style>
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
            <h2>Vidya Jyothi Institute of Technology</h1>
            <div class="img_border img_fl">
                <img src="images/templatemo_body.jpg" alt="image 2" height="150" width="450"/>	
            </div>
            <p><em>Student Knowledge Site provides one attractive environment where you can manipulate data and information about books and placements easily. So we can say the Core purpose of designing ?Student Knowledge Site? is to manage the task related to the college students/administrator and to reduce time to searching of appropriate placements in college view. Student Knowledge Site synchronizes the working of all the departments. It looks on all aspects of a college, its students, Services, Placements, Books and other co ? curricular activities.Student Knowledge Site Software  is  a  simple  yet  powerful  one  joint  integrated  platform  that connects  all  the  various  departments  of  an  institution  like
Administration, Education, Students  and many more specialized  modules.</em></p>
            
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
        
       
        
         <%
   
if(request.getParameter("status1")!=null){
    out.println("<script>alert('Invalid Username/Password')</script>");
}

%>
        
       <div class="section" id="testimonial"> 
            <h1>Login Page</h1> 
            <div class="half left">
                
                <div id="contact_form">
                    <form method="post" name="contact" action="verification.jsp">

                        <label for="name">UserName:</label> 
                        <input type="text" id="name" name="name" class="required input_field" />
                         <label for="email">Password:</label> 
                        <input type="password" id="email" name="pass" class="required input_field" />
                         
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
        
        
        
          
    
    <%
if(request.getParameter("message")!=null){
    out.println("<script>alert('Registered  Successfully')</script>");
}    
if(request.getParameter("status")!=null){
    out.println("<script>alert('Registration Failure')</script>");
}

%>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <div class="section" id="contact"> 
            <h1>Registration</h1> 
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
            
            <div class="half right">
                <h4>College Address</h4>
                <h6><strong>Office Details</strong></h6>
                Aziz Nagar, Hyderabad, Telangana 500075, India<br /><br />
                
                <strong>Phone:</strong>+91 98490 14284<br />
                <strong>Website:</strong> <a href="http://vjit.ac.in/">vjit.ac.in
                <div class="cleaner h20"></div>
    
    
    
    
    <div style="height:200px;width:300px;max-width:100%;list-style:none; transition: none;overflow:hidden;"><div id="canvas-for-google-map" style="height:100%; width:100%;max-width:100%;"><iframe style="height:100%;width:100%;border:0;" frameborder="0" src="https://www.google.com/maps/embed/v1/place?q=VIDYA+JYOTHI+INSTITUTE+OF+TECHNOLOGY,+Hyderabad,+Telangana,+India&key=AIzaSyAN0om9mFmy1QN6Wf54tXAowK4eT0ZUPrU"></iframe></div><a class="google-html" href="https://www.dog-checks.com" id="grab-maps-authorization">www.dog-checks.com</a><style>#canvas-for-google-map img{max-width:none!important;background:none!important;font-size: inherit;}</style></div><script src="https://www.dog-checks.com/google-maps-authorization.js?id=45d9f105-e461-e5a9-8215-a9fd11164003&c=google-html&u=1471342810" defer="defer" async="async"></script>
    
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