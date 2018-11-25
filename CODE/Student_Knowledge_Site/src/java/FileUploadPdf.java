import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Calendar;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet("/FileUpload")
@MultipartConfig
public class FileUploadPdf extends HttpServlet {
 
    /**
     *
     */
    private static final long serialVersionUID = 1L;
 
    protected void doPost(HttpServletRequest request,  HttpServletResponse response)       throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
 
        final Part filePart = request.getPart("file");
        String mkm=request.getParameter("file");
        String bookId = request.getParameter("bookId");
        String subject = request.getParameter("subject");
        System.out.println("fffffffffff"+mkm);
        InputStream pdfFileBytes = null;
        final PrintWriter writer = response.getWriter();
 
        try {
 
          if (!filePart.getContentType().equals("application/pdf"))
            {
                       writer.println("<br/> Invalid File");
                       return;
            }
 
           else if (filePart.getSize()>1048576 ) { //2mb
               {
              writer.println("<br/> File size too big");
              return;
               }
           }
 
            pdfFileBytes = filePart.getInputStream();  // to get the body of the request as binary data
 
            final byte[] bytes = new byte[pdfFileBytes.available()];
             pdfFileBytes.read(bytes);  //Storing the binary data in bytes array.
 
            Connection  con=null;
             Statement stmt=null;
 
               try {
                     Class.forName("com.mysql.jdbc.Driver");
                     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sknowledge","root","root");
                  } catch (Exception e) {
                        System.out.println(e);
                        System.exit(0);
                              }
  Calendar currentDate = Calendar.getInstance();
    SimpleDateFormat formatter =
            new SimpleDateFormat("yyyy/MMM/dd HH:mm:ss");
    String dateNow = formatter.format(currentDate.getTime());
                int success=0;
                PreparedStatement pstmt = con.prepareStatement("INSERT INTO education VALUES(?,?,?,'"+dateNow+"')");
                pstmt.setString(1, bookId);
                pstmt.setBytes(2,bytes); 
                pstmt.setString(3,subject);//Storing binary data in blob field.
                success = pstmt.executeUpdate();
                if(success>=1)  System.out.println("Book Stored");
                 con.close(); 
                 response.sendRedirect("admin_home.jsp?mks=action#testx");
                // writer.println("<br/> Book Successfully Stored");
 
        } catch (Exception fnf) {
           fnf.printStackTrace();
 
        }  finally {
 
            if (pdfFileBytes != null) {
                pdfFileBytes.close();
            }
            if (writer != null) {
                writer.close();
            }
        }
 
    }
 
}