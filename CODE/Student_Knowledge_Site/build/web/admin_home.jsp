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
    <script type="text/javascript">

function valid()
{
var re = document.s.textfield1.value;
if(re=="")
{
alert("Enter Job code");
document.s.textfield1.focus();
return false;
}
if(isNaN(re))
{
alert("Enter Job_Code in Numbers");
document.s.textfield1.focus();
return false;
}
var k = document.s.textfield6.value;
if(k=="")
{
alert("Enter Required Experience");
document.s.textfield6.focus();
return false;
}
if(isNaN(k))
{
alert("Enter Experience in Numbers");
document.s.textfield6.focus();
return false;
}
var r = document.s.textfield7.value;
if(r=="")
{
alert("Enter Number of Vacancies");
document.s.textfield7.focus();
return false;
}
if(isNaN(r))
{
alert("Enter Vacancies in Numbers");
document.s.textfield7.focus();
return false;
}

}
</script>
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
    </div>
        <div class="section" id="servicesx"> 
            <h1>Campus Placement Info.</h1>
            
            <div class="half left">
                
            
		<form name="s" action="jobproadd1.jsp" method="post" onsubmit="return valid()">
		
              <table  align="center" height="300">
               
                <tr> 
                  <td colspan="2"><strong><em><font color="#CC3300" size="+1"> 
                    Job Registration</font></em></strong></td>
                </tr>
                    <tr> 
                  <td colspan="2"></td>
                </tr>  <tr> 
                  <td colspan="2"></td>
                </tr>
				<tr> 
                  <td><font  color="blue"><strong>Job Code:</strong></font></td>
                  <td><input type="text" name="textfield1" placeholder="only in integers"></td>
                </tr>
                <tr> 
                  <td><font  color="blue"><strong>Job Name:</strong></font></td>
                  <td><input type="text" name="textfield2"></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Responsibilities:</strong></font></td>
                  <td><input type="text" name="textfield5"></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Req. 
                Experience:</strong></font></td>
                  <td><input type="text" name="textfield6" placeholder="only in integers"></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Qualification:</strong></font></td>
                  <td><input type="text" name="textfield3"></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Vacancies:</strong></font></td>
                  <td><input type="text" name="textfield7" placeholder="only in integers"></td>
                </tr>
                
                    
                   <tr> 
                  <td><font color="blue"><strong>Required Skills:</strong></font></td>
                  <td><input type="text" name="textfield4"></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Company:</strong></font></td>
                  <td><input type="text" name="textfield8"></td>
                </tr>
                    
                    <tr> 
                  <td><font color="blue"><strong>Opening Date:</strong></font></td>
                  <td><input type="date" name="textfield9"></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Closing Date:</strong></font></td>
                  <td><input type="date" name="textfield10"></td>
                </tr>
                   <tr> 
                  <td><font color="blue"><strong>Location:</strong></font></td>
                  <td><input type="text" name="textfield11"></td>
                </tr> 
                <tr> 
                  <td><font color="blue"><strong>Salary:</strong></font></td>
                  <td><input type="text" name="salary"></td>
                </tr> 
                 <tr> 
                  <td><font color="blue"><strong>Status:</strong></font></td>
                  <td> <select name="status" size="1">
              <option selected value="permenent">permenent</option>
              <option value="temporary">temporary</option>
              <option value="contract">Contract</option>
            </select></td>
                </tr>
                
                
                 <tr> 
                  <td colspan="2"></td>
                </tr>  <tr> 
                  <td colspan="2"></td>
                </tr>
                 
                <tr> 
                  <td><input type="submit" value="New Job Registration" style="background-color: orange;color: #ffffff" ></td>
                  
                </tr>
              </table>
			   
            </form>
		
		
		</table>
            </div>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#updatejobs"><img src="images/cooltext199763124010410.png" style="margin-top: 350px;height:50px;"></a>
                  
            <a href="#home" class="home_btn">home</a> 
        </div> 
        
       
        
         <%
     
if(request.getParameter("status1")!=null){
    out.println("<script>alert('Invalid Username/Password')</script>");
}

%>




 <div class="section" id="updatejobs"> 
            <h1>Placement Details</h1> 
            <div class="half left">
                
                <div id="contact_form">
               
            <div class="half left" style="overflow:scroll;height:380px;width:500px;overflow:auto">
             
               <table bgcolor="" cellpadding="5"  width="480" border="0">
                   
            <tr  bgcolor="#3300FF"> 
           <tr bgcolor="#ff9900"> 
              <td align="center"><font color="black"><b>Company & Position</strong></font></td>
              <td align="center"><font color="#110022"><b>Location</strong></font></td>
              <td align="center"> <font color="#110022"><b>Eligibility</strong></font></td>
            
             <td align="center"> <font color="#110022"><b>Update</strong></font></td>
             <td align="center"> <font color="#110022"><b>Delete</strong></font></td>
             
              
               
             
            </tr>
        <%               
    
    //name, userid, pass, mail, age, loc, sex, time_
        
        
 Class.forName("com.mysql.jdbc.Driver");
Connection cont11 = DriverManager.getConnection("jdbc:mysql://localhost:3306/sknowledge","root","root");
 	Statement st1t11=cont11.createStatement();

ResultSet rs1k11 = st1t11.executeQuery("select * from  jobs ");
while(rs1k11.next()){

       %>  
      <tr bgcolor="#e0e0e0"  > 
          <td align="center"> <strong><font  color="green"> <%=rs1k11.getString("createdby")%> & <%=rs1k11.getString("job_name")%></font></strong></td>
<td align="center"> <strong><font  color="green"> <%=rs1k11.getString("location")%> </font></strong></td>
              <td align="center"> <strong><font   color="green"> <%=rs1k11.getString("quali_req")%> </font></strong></td>
              
              
              <td align="center"><a href="updatejob.jsp?<%=rs1k11.getString("job_code")%>"/> <img src="images/cooltext199609626230550.png" height="30" width="80"></a> </td>
              
            
               <td align="center"><a href="deletejob.jsp?<%=rs1k11.getString("job_code")%>"/> <img src="images/cooltext199612804583225.png" height="30" width="80"></a> </td>
              
              
              
             
          
     <%

}                                     
%>
      </tr>
                                          </table><BR></BR> 
                
                
            </div>
                
                
                
                </div>
            </div>
            
            <div class="half right">
                
                
               
            </div>
            <a href="#home" class="home_btn">home</a> 
        </div> 


      
        
       <div class="section" id="updatedetails"> 
            <h1>Placement Information</h1> 
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
                <form name="form" action="updatejob1.jsp" method="post" onsubmit="return validation()">
		
                 <table  align="center" height="300" width="500">
               
                <tr> 
                  <td colspan="2"><strong><em><font color="#CC3300" size="+1"> 
                   Update Job Information</font></em></strong></td>
                </tr>
                    <tr> 
                  <td colspan="2"></td>
                </tr>  <tr> 
                  <td colspan="2"></td>
                </tr>
				<tr> 
                  <td><font  color="blue"><strong>Job Code:</strong></font></td>
                  <td><input type="text" name="textfield1" value="<%=job_code%>"></td>
                </tr>
                <tr> 
                  <td><font  color="blue"><strong>Job Name:</strong></font></td>
                  <td><input type="text" name="textfield2" value="<%=job_name%>"></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Responsibilities:</strong></font></td>
                  <td><input type="text" name="textfield5" value="<%=resp_req%>"></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Req. 
                Experience:</strong></font></td>
                  <td><input type="text" name="textfield6" value="<%=exp_req%>"></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Qualification:</strong></font></td>
                  <td><input type="text" name="textfield3" value="<%=quali_req%>"></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Vacancies:</strong></font></td>
                  <td><input type="text" name="textfield7" value="<%=vac_open%>"></td>
                </tr>
                
                    
                   <tr> 
                  <td><font color="blue"><strong>Required Skills:</strong></font></td>
                  <td><input type="text" name="textfield4" value="<%=skill_req%>"></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Company:</strong></font></td>
                  <td><input type="text" name="textfield8" value="<%=createdby%>"></td>
                </tr>
                    
                    <tr> 
                  <td><font color="blue"><strong>Opening Date:</strong></font></td>
                  <td><input type="date" name="textfield9" value="<%=createdon%>"></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Closing Date:</strong></font></td>
                  <td><input type="date" name="textfield10" value="<%=lastdate%>"></td>
                </tr>
                   <tr> 
                  <td><font color="blue"><strong>Location:</strong></font></td>
                  <td><input type="text" name="textfield11" value="<%=location%>"></td>
                </tr> 
                <tr> 
                  <td><font color="blue"><strong>Salary:</strong></font></td>
                  <td><input type="text" name="salary" value="<%=salary%>"></td>
                </tr> 
                 <tr> 
                  <td><font color="blue"><strong>Status:</strong></font></td>
                  <td><input type="text" name="status" value="<%=status1%>"></td>
                </tr>
                
                
                 <tr> 
                  <td colspan="2"></td>
                </tr>  <tr> 
                  <td colspan="2"></td>
                </tr>
                <tr> 
                  <td><input type="submit" value="Update Placement" style="background-color: blue;color: #ffffff" ></td>
                  
                </tr>
              </table>
                
                </form>
                
                
                
                
                
                </div>
            </div>
            
            <div class="half right">
                
                
               
            </div>
            <a href="#home" class="home_btn">home</a> 
        </div> 
      
      
      
      
      















        
       <div class="section" id="testimonialx"> 
            <h1>Educational Sites</h1> 
            <div class="half left">
                
                <div id="contact_form">
                    <h2 align="center">   <a href="#testx"> <img src="images/education.png" height="400" width="400"></a></h2>
               	</div>
            </div>
            
            <div class="half right">
                
                
               
            </div>
            <a href="#home" class="home_btn">home</a> 
        </div> 
        
         <div class="section" id="testx"> 
            <h1>Add Files</h1> 
            <div >
                
                <div >
                   
                
         <form enctype="multipart/form-data" action="uploadfile.jsp" method="post" >      
<table border='1'>
<tr>
   <td align="center">   
       <font color="red"> Remember you can upload only MS-word, MS-Excel, txt and PDF files.max size = 15mb       
       </font> </td>
</tr> 
<tr>
   <td >
      <input type="file" name="filename" id="filename"
      accept=".txt,
           application/pdf,
           application/vnd.openxmlformats-officedocument.spreadsheetml.sheet,
           application/vnd.ms-excel,
           application/vnd.openxmlformats-officedocument.wordprocessingml.document,
           application/msword"/>                                                            
   </td>
</tr>
<tr>
   <td align="center">
      <input type="submit" value="Save File" />
   </td>
</tr>
</table>
</form><br></br>     
<a href="#updatedocs"><h2 style="margin-left: 250px"><img src="images/cooltext199608967199767.png">      </h2></a>
<br>    
<a href="#deletedocs"><h2 style="margin-left: 250px"><img src="images/cooltext199612071398131.png">      </h2></a>
                </div>
            </div>
            
            <div class="half right">
                
                
               
            </div>
            <a href="#home" class="home_btn">home</a> 
        </div> 
        
          







 <div class="section" id="updatedocs"> 
            <h1>Update Files</h1> 
            <div >
                
                <div style="overflow:scroll;height:350px;width:500px;overflow:auto">
             
                  
                
                    <table>
                       <table style="border-style: solid" width="450" scroll="">
                        
                            <tr STYLE="background-color: yellowgreen;font-size: 15px;">                                
                                 <td align="center">Subject</td><td align="center">File_Name</td><td align="center">Type</td><td align="center">Update</td>
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
                              <td><%=unam1%></td> <td style="text-align: center"><%=dob1%></td><td style="text-align: center"><%=email1%></td><td style="text-align: center"><a href="update.jsp?Doc_id=<%=rs1.getInt(1)%>"><img src="images/cooltext199609626230550.png" height="30" width="80"></a></td>
            
                            </TR>    
                            <%
                            }
                            %>
                        </table>
                        
                      
                        
                        
                    </table> 
                
                  
                    
                    
                    
                    
                    
                 </div>
            </div>
            
            <div class="half right">
                
                
               
            </div>
            <a href="#home" class="home_btn">home</a> 
        </div> 
        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
              



 <div class="section" id="deletedocs"> 
            <h1>Remove Files</h1> 
            <div >
                
                <div style="overflow:scroll;height:350px;width:500px;overflow:auto">
             
                  
                
                    <table>
                       <table style="border-style: solid" width="450" scroll="">
                        
                            <tr STYLE="background-color: yellowgreen;font-size: 15px;">                                
                                 <td align="center">Subject</td><td align="center">File_Name</td><td align="center">Type</td><td align="center">Delete</td>
                            </tr> 
                         <% 
String name1t=null;

Connection con1t= Dbconnection.getConn();
Statement st1t = con1t.createStatement();

String sss1t = "select * from documents ";
String idd1t=null;String unam1t=null;String dob1t=null; String gender1t=null;String email1t=null; 
ResultSet rs1t=st1t.executeQuery(sss1t);

while(rs1t.next())
{
       idd1t=rs1t.getString(1);
                         unam1t=rs1t.getString(7);
                         dob1t=rs1t.getString(2);
                        email1t=rs1t.getString(3);
                            
                            %>
                            <TR>
                              <td><%=unam1t%></td> <td style="text-align: center"><%=dob1t%></td><td style="text-align: center"><%=email1t%></td><td style="text-align: center"><a href="drop.jsp?Doc_id=<%=rs1t.getInt(1)%>"><img src="images/cooltext199612804583225.png" height="30" width="80"></a></td>
            
                            </TR>    
                            <%
                            }
                            %>
                        </table>
                        
                       
                        
                        
                    </table> 
                
                  
                    
                    
                    
                    
                    
                 </div>
            </div>
            
            <div class="half right">
                
                
               
            </div>
            <a href="#home" class="home_btn">home</a> 
        </div> 
                  
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
          


          <div class="section" id="updatex"> 
           
            <div >
              <%String fid1=(String)session.getAttribute("id");
              String file_name1=(String)session.getAttribute("file_name");
              String file_type1=(String)session.getAttribute("file_type");
              String file_subject1=(String)session.getAttribute("file_subject");
              
              
              %>
                
                 <form name="form" action="updatedocument.jsp" method="post" onsubmit="return validation()">
		
              <table  align="center" height="300">
                <tr> 
                  <td colspan="2" align="center"><font size="2"><b> 
                    <%
                                                       String message11=request.getParameter("messagex");
                                                       if(message11!=null && message11.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='red'><blink>File is Added Successfully !</blink></font>");
                                                       }
                                               %>
                    </b></font></td>
                </tr>
                <tr> 
                  <td colspan="2"><strong><em><font color="#CC3300" size="+1"> 
                    Update Document</font></em></strong></td>
                </tr>
                    <tr> 
                  <td colspan="2"></td>
                </tr>  <tr> 
                  <td colspan="2"></td>
                </tr>
                <tr> 
                  <td><font  color="blue"><strong>File Id:</strong></font></td>
                  <td><input type="text" name="textfield6" value="<%=fid1%>" readonly></td>
                </tr>
                
                
				<tr> 
                  <td><font  color="blue"><strong>File Type:</strong></font></td>
                  <td><input type="text" name="textfield1" value="<%=file_type1%>" readonly></td>
                </tr>
                <tr> 
                  <td><font  color="blue"><strong>File Name:</strong></font></td>
                  <td><input type="text" name="textfield2" value="<%=file_name1%>" ></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Subject:</strong></font></td>
                  <td><input type="text" name="textfield5" value="<%=file_subject1%>"></td>
                </tr>
               
                 <tr> 
                  <td colspan="2"></td>
                </tr>  <tr> 
                  <td colspan="2"></td>
                </tr>
                 
                <tr> 
                  <td><input type="submit" value="Update Document" style="background-color: blue;color: #ffffff" ></td>
                  
                </tr>
              </table>
			   
            </form>
		
		
		</table>
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                <div >
             </div>
            </div>
            
            <div class="half right">
                
                
               
            </div>
            <a href="#home" class="home_btn">home</a> 
        </div> 
                       
                        
                        
                        
                        
                        
                        
                        







    

 <div class="section" id="testm"> 
            <h1>Add Configuration</h1> 
            <div >
                
                <div >
                   
                <%String file_name=(String)session.getAttribute("file_name");
                
                String file_type=(String)session.getAttribute("file_type");
                
                %>
           
                
                
                
                <form name="s" action="adddocument.jsp" method="post"  onsubmit="return valid()">
		
              <table  align="center" height="300">
                <tr> 
                  <td colspan="2" align="center"><font size="2"><b> 
                    <%
                                                       String message1=request.getParameter("messagex");
                                                       if(message1!=null && message1.equalsIgnoreCase("success"))
                                                       {
                                                               out.println("<font color='red'><blink>File is Added Successfully !</blink></font>");
                                                       }
                                               %>
                    </b></font></td>
                </tr>
                <tr> 
                  <td colspan="2"><strong><em><font color="#CC3300" size="+1"> 
                    Document Registration</font></em></strong></td>
                </tr>
                    <tr> 
                  <td colspan="2"></td>
                </tr>  <tr> 
                  <td colspan="2"></td>
                </tr>
				<tr> 
                  <td><font  color="blue"><strong>File Type:</strong></font></td>
                  <td><input type="text" name="textfield1" value="<%=file_type%>" readonly></td>
                </tr>
                <tr> 
                  <td><font  color="blue"><strong>File Name:</strong></font></td>
                  <td><input type="text" name="textfield2" value="<%=file_name%>" readonly></td>
                </tr>
                <tr> 
                  <td><font color="blue"><strong>Subject:</strong></font></td>
                  <td><input type="text" name="textfield5"></td>
                </tr>
               
                 <tr> 
                  <td colspan="2"></td>
                </tr>  <tr> 
                  <td colspan="2"></td>
                </tr>
                 
                <tr> 
                  <td><input type="submit" value="Upload File" style="background-color: orange;color: #ffffff" ></td>
                  
                </tr>
              </table>
			   
            </form>
		
		
		</table>
                
                
                
                
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
if(request.getParameter("mupdate")!=null){
    out.println("<script>alert('Job Details Are Updated')</script>");
}
if(request.getParameter("mes")!=null){
    out.println("<script>alert('Job is Added Successfully..!!')</script>");
} 
if(request.getParameter("mcs")!=null){
    out.println("<script>alert('File is Deleted')</script>");
} 
if(request.getParameter("mds")!=null){
    out.println("<script>alert('Update Success')</script>");
} 
if(request.getParameter("mks")!=null){
    out.println("<script>alert('File is Added Successfully..!')</script>");
} 
if(request.getParameter("status")!=null){
    out.println("<script>alert('Feedback Failure')</script>");
}
if(request.getParameter("delete")!=null){
    out.println("<script>alert('Message Deleted')</script>");
}
if(request.getParameter("deletejob")!=null){
    out.println("<script>alert('Placement is Deleted')</script>");
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
                <div style="height: 280px;display: inline-block;width: 480px; overflow: auto;">
                
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
                
                            
            </div>
                    
                </div>
                 <br><Br> &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    &nbsp;    <a href="#feedback1"><img src="images/cooltext198771289987259.png"></a>
               
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