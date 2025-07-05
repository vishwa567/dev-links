package com.devlinks.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.devlinks.model.Language;
import com.devlinks.util.DBUtil;

public class LanguageDAO {
	public List<Language> getAllLanguages() {
		List<Language> list = new ArrayList<>();
		String query = "SELECT * FROM lang_data ORDER BY lang_id ASC";
		try (Connection conn = DBUtil.getConnection(); Statement stmt = conn.createStatement();ResultSet rs = stmt.executeQuery(query)) {
			while(rs.next()) {
				list.add(new Language(rs.getInt("lang_id"), rs.getString("lang_title")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
}	
