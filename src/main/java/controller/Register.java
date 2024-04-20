package controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.Registration;

@SuppressWarnings({ "serial", "serial" })
@WebServlet(name="signup" ,urlPatterns="/register",loadOnStartup=1)

public class Register extends HttpServlet {
	protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
	HttpSession session = request.getSession();
		
	Registration signup = new Registration(session);
		
		try {
		if(request.getParameter("register")!=null)
		{
			String name = request.getParameter("username");
			String password = request.getParameter("password");
			String cpassword = request.getParameter("cpassword");
			String email = request.getParameter("email");
			String phone = request.getParameter("phone");
			
	
			
			if(password.equals(cpassword))
			{
				String status = signup.SignUp(name, cpassword, email, phone);
				if(status.equals("exists"))
				{
					request.setAttribute("status", "Account already exists!");
					RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
					rd.forward(request,response);
				}
				else if(status.equals("success"))
				{
					request.setAttribute("status", "Account created Successfully!");

					RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
					rd.forward(request,response);
				}
				else if(status.equals("failure"))
				{
					request.setAttribute("status", "Sign up failed!");
					RequestDispatcher rd = request.getRequestDispatcher("signup.jsp");
					rd.forward(request,response);
				}
			}
			
		}
		else if (request.getParameter("login") != null) {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            
            
            String status = signup.login(email,password);
            if (status.equals("success")) {
                RequestDispatcher rd1 = request.getRequestDispatcher("Categories.jsp");
                rd1.forward(request, response);
            }	
            else if (status.equals("failure")) {
                request.setAttribute("status", "Login failed");
                RequestDispatcher rd1 = request.getRequestDispatcher("login.jsp");
                rd1.forward(request, response);
            }    
	} 
		 else if (request.getParameter("logout") != null) {
             session.invalidate();
             RequestDispatcher rd1 = request.getRequestDispatcher("login.jsp");
             rd1.forward(request, response);
         } 
		 else if(request.getParameter("update")!=null)
		 {
			 	String name = request.getParameter("username");
				String email = request.getParameter("email");
				String phone = request.getParameter("phone"); 
				
				System.out.println("controller : "+ name);
				System.out.println("controller : "+email);
				System.out.println("controller : "+phone);
				Registration s = new Registration(session);
				RequestDispatcher rd ;
				String status = s.update( name, phone, email);
				if(status.equals("success"))
				{
					request.setAttribute("status", "Account updated successfully!");
			        RequestDispatcher rd1 = request.getRequestDispatcher("login.jsp");
			        rd1.forward(request, response);
				}
				else
				{
					request.setAttribute("status","Account update failed!");
					rd= request.getRequestDispatcher("Edituser.jsp");
					rd.forward(request, response);
				}
		 }
		 else  if(request.getParameter("delete")!=null && session.getAttribute("username")!=null)
		 {
			 System.out.println(request.getParameter("email"));
			 String status = signup.delete(request.getParameter("email"));
			 if(status.equals("success"))
			 {
				 request.setAttribute("status", "Account deleted Successfully!");
				 //user must log out
		         response.setHeader("Refresh", "0.3; URL= http://localhost:8080/Event/register?logout=yes");
//		          response.setHeader("Refresh", "10; URL=http://localhost:9090/J2EE_Exercise/index.html");
				 request.getRequestDispatcher("login.jsp").forward(request,response);
			 }
		else
			{
				request.setAttribute("status", "Account not deleted!");
				request.getRequestDispatcher("Edituser.jsp").forward(request,response);
			}
	}
		 else if (request.getParameter("reset") != null) {
				String email = (String) session.getAttribute("useremail");
				String newPass = request.getParameter("newPassword");
				String confirmPass = request.getParameter("cPassword");
				System.out.println("email: "+email);
				System.out.println("confirmPass:" + confirmPass);
				if(newPass.equals(confirmPass)) {
					boolean check=signup.updatePassword(email, confirmPass);
					if(check) {
						System.out.println("Password Update successfully!!");
						request.setAttribute("status", "Password Update successfully!!");
						RequestDispatcher rd1 = request.getRequestDispatcher("login.jsp");
						rd1.forward(request, response);
					}else {
						System.out.println("Password Update failed");
						request.setAttribute("status", "Password Update failed !!");
						RequestDispatcher rd1 = request.getRequestDispatcher("ResetPassword.jsp");
						rd1.forward(request, response);
					}
				}
			}
}catch (Exception e) {
            e.printStackTrace();
        }
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		 processRequest(request, response);
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
	}
}
