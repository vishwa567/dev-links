package com.devlinks.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	
	public static Connection getConnection() throws SQLException {

		String localhost = "jdbc:mysql://localhost:3306/dev_links";
		String username = "root";
		String password = "1855";
		 
		return DriverManager.getConnection(localhost, username, password);
	}
	
}
