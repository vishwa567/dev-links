package com.devlinks.admin.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.devlinks.util.DBUtil;

public class DeleteLanguageDAO {
	public boolean deleteLang(int langId) {
		String query = "DELETE FROM lang_data WHERE lang_id = ?";
		
		try(Connection conn = DBUtil.getConnection(); PreparedStatement stmt = conn.prepareStatement(query)) {
			stmt.setInt(1, langId);
			int rows =  stmt.executeUpdate();
			return rows > 0;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
