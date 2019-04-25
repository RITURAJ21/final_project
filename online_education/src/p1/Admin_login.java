
package p1;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
/**
 * Servlet implementation class guru_login
 */

@SuppressWarnings("serial")
@WebServlet("/Admin_login")
public class Admin_login extends HttpServlet 
{
	public static int associate_id=0;
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		associate_id = Integer.parseInt(request.getParameter("associate_id"));
		String password = request.getParameter("password");
		
		request.setAttribute("associate_id", associate_id);
		
		/*
		if(associate_id.isEmpty() || password.isEmpty() )
		{
			RequestDispatcher req = request.getRequestDispatcher("Register_3.jsp");
			req.include(request, response);
		}
		else
		{
			RequestDispatcher req = request.getRequestDispatcher("Register_4.jsp");
			req.forward(request, response);
		}
		*/
		
		PrintWriter pr = response.getWriter();
		ResultSet rs = AdminDao.login(associate_id, password);
		
		
		try{
			if(!rs.next())
			{
				
				
			/*pr.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'>");
				pr.println("<script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'>");
				pr.println("<script>");
				pr.println("$(document).ready(function(){");
				pr.println("swal('incorrect id or password!',' ','error');");
				pr.println("});");
				pr.println("</script>");*/
				
				        
				        //RequestDispatcher req = request.getRequestDispatcher("Register_3.jsp");
						//req.forward(request, response);
						pr.println("<html>");
						pr.println("<body>");
						
						
						pr.println("<script>");
						pr.println("alert('Incorrect Credentials!!Try again')");
						pr.println("window.location= 'Register_3.jsp'");
						pr.println("</script>");
						pr.println("</body>");
						pr.println("</html>");
				
			}
			else{
			request.setAttribute("results", rs);
			RequestDispatcher req = request.getRequestDispatcher("front1.jsp");
			req.forward(request, response);
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
 
}