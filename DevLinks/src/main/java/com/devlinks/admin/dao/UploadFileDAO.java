package com.devlinks.admin.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.Part;

import com.devlinks.admin.model.UploadFile;
import com.devlinks.util.DBUtil;

public class UploadFileDAO {

	public boolean uploadFileToDB(UploadFile fileDetails) {

		return (insertLangData(fileDetails.getLangName())
				&& insertVideoData(fileDetails.getVideoTitle(), fileDetails.getVideoLink())
				&& insertFileData(fileDetails.getPdfFile()));
	}

	private boolean insertLangData(String langTitle) {
		String query = "INSERT INTO lang_data (lang_title) VALUES (?)";
		try (Connection conn = DBUtil.getConnection(); PreparedStatement stmt = conn.prepareStatement(query)) {
			stmt.setString(1, langTitle);
			int rows = stmt.executeUpdate();
			System.out.println("lang = " + rows);
			return rows > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	private boolean insertFileData(Part pdfPart) {

		try {
			Part filePart = pdfPart;
			InputStream fileContent = filePart.getInputStream();
			String fileName = filePart.getSubmittedFileName();

			Connection conn = DBUtil.getConnection();
			String query = "INSERT INTO lang_files (file_name, pdf_file) VALUES (?, ?)";

			PreparedStatement stmt = conn.prepareStatement(query);
			stmt.setString(1, fileName);
			stmt.setBlob(2, fileContent);

			int rows = stmt.executeUpdate();
			conn.close();
			fileContent.close();
			System.out.println("file = " + rows);

			return rows > 0;
		} catch (Exception e) {
			e.printStackTrace();

		}
		return false;

	}

	private boolean insertVideoData(String videoName, String videoLink) {
		String query = "INSERT INTO LANG_VIDEO_LINKS(video_links, video_name) VALUES (?, ?)";
		try (Connection conn = DBUtil.getConnection(); PreparedStatement stmt = conn.prepareStatement(query)) {
			stmt.setString(1, videoLink);
			stmt.setString(2, videoName);
			int rows = stmt.executeUpdate();
			System.out.println("video = " + rows);
			return rows > 0;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

}
