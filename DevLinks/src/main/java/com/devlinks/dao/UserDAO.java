package com.devlinks.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.devlinks.model.User;
import com.devlinks.util.DBUtil;

public class UserDAO {

	public User getUserEmailAndPasswordFromDB(String email, String password) {
		User user = null;
		String query = "SELECT * FROM user_data WHERE email_id=? AND password=?";
		try (Connection conn = DBUtil.getConnection(); PreparedStatement stmt = conn.prepareStatement(query);) {
			stmt.setString(1, email);
			stmt.setString(2, password);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				user = new User(rs.getString("username"), rs.getString("email_id"), rs.getString("password"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return user;
	}

	public void addNewUser(User user) {
		String query = "INSERT INTO user_data (username, email_id, password) VALUES (?, ?, ?)";
		try (Connection conn = DBUtil.getConnection(); PreparedStatement stmt = conn.prepareStatement(query);) {
			stmt.setString(1, user.getUsername());
			stmt.setString(2, user.getEmail());
			stmt.setString(3, user.getPassword());
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

}
