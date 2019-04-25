package p1;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet("/fee1_reg")
public class fee1_reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	 response.setContentType("text/html");
    	 PrintWriter out=response.getWriter();
    	 String str1 = request.getParameter("Student_ID");
 		 int Student_ID = Integer.parseInt(str1);
		
		String Student_name = request.getParameter("Student_name");
		
		String Stream = request.getParameter("Stream");
		
		
		String str2 = request.getParameter("Fees_Fine");
		int Fees_Fine = Integer.parseInt(str2);
		
		
		String str3= request.getParameter("Total_Fees");
		int Total_Fees = Integer.parseInt(str3);
		
		Admin1 obj=new Admin1();
		obj.setStudent_ID(Student_ID);
		obj.setStudent_name(Student_name);
		
		obj.setStream(Stream);
		obj.setFees_Fine(Fees_Fine);
		obj.setTotal_Fees(Total_Fees);
		
		int n=FeeDao.save(obj);
		
		if(Student_ID==0 || Student_name.isEmpty() || 
			Stream.isEmpty() || Fees_Fine==0 || Total_Fees==0)
		{
			out.print("<p>Updation Error!!please fill all the fields</p>");
			RequestDispatcher req = request.getRequestDispatcher("fee1.jsp");
			req.forward(request, response);
		}
		else
		{
			RequestDispatcher req = request.getRequestDispatcher("Fee2.jsp");
			req.forward(request, response);
		}
	}
 
}
