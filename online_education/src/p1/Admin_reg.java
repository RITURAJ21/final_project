package p1;

import java.io.IOException;
 
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
@WebServlet("/Admin_reg")
public class Admin_reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
     protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String first_name = request.getParameter("first_name");
		String last_name = request.getParameter("last_name");
		
		String str1 = request.getParameter("age");
		int age = Integer.parseInt(str1);
		String gender= request.getParameter("gender");
		
		String contact = request.getParameter("contact");
		
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		
		String str3= request.getParameter("associate_id");
		int associate_id = Integer.parseInt(str3);
		
		Admin obj=new Admin();
		obj.setFirst_name(first_name);
		obj.setLast_name(last_name);
		obj.setAge(age);
		obj.setGender(gender);
		obj.setContact(contact);
		obj.setEmail(email);
		obj.setPassword(password);
		obj.setAssociate_id(associate_id);
		int n=AdminDao.save(obj);
		
		/*if(first_name.isEmpty() || last_name.isEmpty() || age==0 || 
			gender.isEmpty() || contact==0 || email.isEmpty() || password.isEmpty() || associate_id==0)
		{
			RequestDispatcher req = request.getRequestDispatcher("Register_1.jsp");
			req.forward(request, response);
		}
		else*/
		{
			RequestDispatcher req = request.getRequestDispatcher("register_show.jsp");
			req.forward(request, response);
		}
	}
 
}