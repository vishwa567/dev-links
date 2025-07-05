package com.devlinks.admin.services;

import com.devlinks.admin.dao.DeleteLanguageDAO;

public class DeleteLanguageServices {
	private DeleteLanguageDAO dao = new DeleteLanguageDAO();
	
	public boolean deleteLang(int langId) {
		return dao.deleteLang(langId);
	}
}
