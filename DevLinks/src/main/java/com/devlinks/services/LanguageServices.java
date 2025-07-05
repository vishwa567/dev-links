package com.devlinks.services;

import java.util.List;

import com.devlinks.dao.LanguageDAO;
import com.devlinks.model.Language;

public class LanguageServices {
	private LanguageDAO dao = new LanguageDAO();
	
	public List<Language> getAllLanguages() {
		return dao.getAllLanguages();
	}
}
