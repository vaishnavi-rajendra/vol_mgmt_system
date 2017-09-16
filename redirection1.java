import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

/**
 * Servlet implementation class redirection1
 */
@WebServlet("/redirection1")
public class redirection1 extends HttpServlet {
	//private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  //TODO Auto-generated method stub
		
		 response.setContentType("text/html");  
         PrintWriter pw = response.getWriter(); 
         //String connectionURL = "jdbc:mysql://127.0.0.1:3306/newData";// newData is the database  
         //Connection connection;  
         java.sql.Connection conn=null;
         String url="jdbc:mysql://localhost:3306/";
         String dbName="vregister";
         String driver="com.mysql.jdbc.Driver";
     //String dbUserName="root";
     //String dbPassword="root";
         
         String Fname = request.getParameter("firstname");    
         String Lname = request.getParameter("lastname");  
         String Mobno = request.getParameter("phno");  
         String Address = request.getParameter("addr");  
         String Emailid = request.getParameter("email");  
         
         System.out.println("hgfyikff");
     try{  
       
         

       Class.forName(driver).newInstance();  
       System.out.println("1");
       conn = DriverManager.getConnection(url+dbName,"root", "root");
       System.out.println("2");
       PreparedStatement pst =(PreparedStatement) conn.prepareStatement("insert into volunteerreg values(?,?,?,?,?)");//try2 is the name of the table  

       pst.setString(1,Fname);  
       pst.setString(2,Lname);
       pst.setString(3,Mobno);
       pst.setString(4,Address);
       pst.setString(5,Emailid);
              


       int i = pst.executeUpdate();
     //  conn.commit(); 
       String msg=" ";
       if(i!=0){  
         msg="Record has been inserted";
         pw.println("<font size='6' color=blue>" + msg + "</font>");  


       }  
       else{  
         msg="failed to insert the data";
         pw.println("<font size='6' color=blue>" + msg + "</font>");
        }  
       pst.close();
     }  
     catch (Exception e){  
       pw.println(e);  
     }  

}
}


