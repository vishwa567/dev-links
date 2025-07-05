package com.devlinks.admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.devlinks.admin.model.UploadFile;
import com.devlinks.admin.services.UploadFileServices;

@WebServlet("/UploadNewLanguageDetails")
@MultipartConfig
public class UploadNewLanguageDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String langName = request.getParameter("lang-name");
		String videoTitle = request.getParameter("video-title");
		String videoLink = request.getParameter("video-link");
		String fileName = request.getParameter("file-name");
		Part pdfFile = request.getPart("pdf-file");
		
		boolean success = new UploadFileServices()
				.uploadDetailsToDB(new UploadFile(langName, videoTitle, videoLink, pdfFile));
		System.out.println("All files uploaded successfully? " + success);
		request.setAttribute("success", success);
		request.getRequestDispatcher("WEB-INF/admin/views/new-language-details.jsp").forward(request, response);

	}

}



