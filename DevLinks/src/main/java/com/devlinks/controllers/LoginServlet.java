package com.devlinks.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.devlinks.model.User;
import com.devlinks.services.AuthServices;

@WebServlet("/UserLogin")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("login-email");
		String password = request.getParameter("login-password");

		AuthServices authServices = new AuthServices();
		User user = authServices.login(email, password);
		

		if (user != null) {
			String flag = null;
			if (authServices.checkAdminLogin(email, password) == true) {
				flag = "AdminLoginSuccessfull";
				request.getSession().setAttribute("admin", flag);
				request.getRequestDispatcher("/WEB-INF/admin/views/new-language-details.jsp").forward(request, response);
			} else {
				request.getSession().setAttribute("user", user);
				request.getRequestDispatcher("home.jsp").forward(request, response);
			}
		} else {
			request.setAttribute("error", "Invalid credentials");
			request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);

		}
	}

}
