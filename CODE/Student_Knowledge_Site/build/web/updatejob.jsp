<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%
  String doc_id = request.getQueryString();
  Class.forName("com.mysql.jdbc.Driver");
  Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sknowledge","root","root");
   Statement stt=con.createStatement();    
  String query = "select * from jobs where job_code='"+doc_id+"'";
  ResultSet rs = stt.executeQuery(query);
  while(rs.next())
  {
      String  job_code=rs.getString("job_code");
      String  job_name=rs.getString("job_name");
      String  quali_req=rs.getString("quali_req");
       String  skill_req=rs.getString("skill_req"); 
        String  resp_req=rs.getString("resp_req");
        String  exp_req=rs.getString("exp_req");
        String  vac_open=rs.getString("vac_open");
        String  createdby=rs.getString("createdby");  
        String createdon=rs.getString("createdon");
        String  lastdate=rs.getString("lastdate");
        String  location=rs.getString("location");
        String  salary=rs.getString("salary");  
        String  status1=rs.getString("status1");
       
       
       
       session.setAttribute("job_code", job_code);
       session.setAttribute("job_name", job_name);
       session.setAttribute("quali_req", quali_req);
       session.setAttribute("skill_req", skill_req);
       
       session.setAttribute("resp_req", resp_req);
       session.setAttribute("exp_req", exp_req);
       session.setAttribute("vac_open", vac_open);
       session.setAttribute("createdby", createdby);
       
       session.setAttribute("createdon", createdon);
       session.setAttribute("lastdate", lastdate);
       session.setAttribute("location", location);
       session.setAttribute("salary", salary);
        session.setAttribute("status1", status1);
       response.sendRedirect("admin_home.jsp#updatedetails");
       
  }
  
 
  // close the connection object.. 
  
%>