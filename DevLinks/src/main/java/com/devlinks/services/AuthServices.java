package com.devlinks.services;

import com.devlinks.dao.UserDAO;
import com.devlinks.model.User;

public class AuthServices {
	
	private UserDAO userDAO = new UserDAO();
	
	public User login(String email, String password) {
		return userDAO.getUserEmailAndPasswordFromDB(email, password);
	}
	
	public void signup(User user) {
		userDAO.addNewUser(user);
	}
	
	public boolean checkAdminLogin(String email, String password) {
	    return "devlinksadmin567@gmail.com".equals(email) && "09876".equals(password);
	}

}
