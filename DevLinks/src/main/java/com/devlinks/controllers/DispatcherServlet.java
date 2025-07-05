package com.devlinks.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.devlinks.model.File;
import com.devlinks.model.Video;
import com.devlinks.services.FileServices;
import com.devlinks.services.VideoServices;

@WebServlet("/LanguageDispatcher")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int langId = Integer.parseInt(request.getParameter("lang-btn"));
		List<Video> videoData= new VideoServices().fetchVideoData(langId);
		request.setAttribute("videoData", videoData);
		
		List<File> fileData = new FileServices().fetchFileData(langId);
		request.setAttribute("fileData", fileData);

		request.getRequestDispatcher("WEB-INF/views/content.jsp").forward(request, response);
	}

}
