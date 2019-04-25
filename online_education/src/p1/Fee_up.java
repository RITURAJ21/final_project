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
@WebServlet("/Fee_up")
public class Fee_up extends HttpServlet 
{
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		int Student_ID = Integer.parseInt(request.getParameter("Student_ID"));
		
		
		
		
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
		ResultSet rs = FeeDao.login(Student_ID);
		
		
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
						pr.println("alert('Incorrect Student ID!!not present here')");
						pr.println("window.location= 'Fee2.jsp'");
						pr.println("</script>");
						pr.println("</body>");
						pr.println("</html>");
				
			}
			else{
			request.setAttribute("results", rs);
			RequestDispatcher req = request.getRequestDispatcher("Fee2.jsp");
			req.forward(request, response);
			}
			
				
				
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
 
}