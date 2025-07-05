package com.devlinks.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.devlinks.model.Language;
import com.devlinks.services.LanguageServices;

@WebServlet("/LanguageServlet")
public class LanguageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Language> language = new LanguageServices().getAllLanguages();
		request.setAttribute("allLanguages", language);
		request.getRequestDispatcher("/home.jsp").forward(request, response);
	}

}
