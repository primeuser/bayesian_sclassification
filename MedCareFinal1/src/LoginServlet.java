import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class UserProfile
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
  private static final long serialVersionUID = 1L;
  public static String uname;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
  /**
   * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
    response.getWriter().append("Served at: ").append(request.getContextPath());
  }
  /**
   * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
   */
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    // TODO Auto-generated method stub
    doGet(request, response);
    PrintWriter out = response.getWriter();
    String email = request.getParameter("email");
    String upass = request.getParameter("password");
    
    
    
    try {
      Class.forName("com.mysql.jdbc.Driver");
      Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/heartdb","root","");
      PreparedStatement ps = con.prepareStatement("select * from user where email=? and pass=?");
		ps.setString(1, email);
		ps.setString(2, upass);
		ResultSet rs = ps.executeQuery();
      if(rs.next()) {
        response.sendRedirect("newinterface.jsp");
        //response.sendRedirect("newinterface.jsp?name="+rs.getString(uname)); //patient id anusar ko page code 
        HttpSession session = request.getSession();
        String name = (String) session.getAttribute("name");
        //session.setAttribute("uname", uname);
        request.setAttribute("uname1", request.getParameter(email));
        System.out.println("name:" + email);
        System.out.println("Session started with session name :" + session);
        out.print("Session started");
        
      }else {
        out.println("Wrong id and password");
        response.sendRedirect("enter.jsp");
      }
      
      
      
    } catch (ClassNotFoundException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    } catch (SQLException e) {
      // TODO Auto-generated catch block
      e.printStackTrace();
    }
    
    
    
  }
}