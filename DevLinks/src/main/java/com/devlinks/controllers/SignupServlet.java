package com.devlinks.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.devlinks.model.User;
import com.devlinks.services.AuthServices;

@WebServlet("/UserSignup")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("signup-username");
		String email = request.getParameter("signup-email");
		String password = request.getParameter("signup-password");
		
		AuthServices authServices = new AuthServices();
		User user = new User(username, email, password);
		
		authServices.signup(user);
		
		request.getRequestDispatcher("/WEB-INF/views/login.jsp").forward(request, response);
	}

}
