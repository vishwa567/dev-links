package com.devlinks.controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.devlinks.util.DBUtil;

@WebServlet("/DownloadPdfFile")
public class DownlaodPdfFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int fileId = Integer.parseInt(request.getParameter("file-id"));
		String query = "SELECT * FROM lang_files WHERE file_id = ?";

		try (Connection conn = DBUtil.getConnection(); PreparedStatement stmt = conn.prepareStatement(query);) {
			stmt.setInt(1, fileId);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				String pdfName = rs.getString("file_name");
				byte[] pdfData = rs.getBytes("pdf_file");

				response.setContentType("application/pdf");
				response.setHeader("Content-Disposition", "attachment; filename=\"" + pdfName + "\"");

				ServletOutputStream os = response.getOutputStream();
				os.write(pdfData);
				os.flush();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
