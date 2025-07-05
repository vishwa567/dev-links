package com.devlinks.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.devlinks.model.File;
import com.devlinks.util.DBUtil;

public class FileDAO {

	public List<File> getFileData(int langId) {
		List<File> list = new ArrayList<>();
		String query = "SELECT * FROM lang_files WHERE file_id = ?";

		try (Connection conn = DBUtil.getConnection(); PreparedStatement stmt = conn.prepareStatement(query)) {
			stmt.setInt(1, langId);
			ResultSet rs = stmt.executeQuery();

			if (rs.next()) {
				list.add(new File(rs.getInt("file_id"), rs.getString("file_name")));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;
	}

}
