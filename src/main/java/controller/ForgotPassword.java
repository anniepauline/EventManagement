package controller;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import forgotpassword.SendEmail;
import model.User;

@WebServlet("/forgot")
public class ForgotPassword  extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String username = req.getParameter("username");
		String useremail = req.getParameter("useremail");
		System.out.println(username + "forgotpwd");
		System.out.println(useremail);
		HttpSession session = req.getSession();

		SendEmail s = new SendEmail();
		String code = s.getRandom();

		User user = new User(username, useremail, code);

		boolean check = s.sendEmail(user);
		if (check) {
			session.setAttribute("useremail", user.getUseremail());
			session.setAttribute("otp", user.getUsercode());
			resp.sendRedirect("Verify.jsp");
		} else {
			System.out.println("Otp failed!!!");
		}
	}

}