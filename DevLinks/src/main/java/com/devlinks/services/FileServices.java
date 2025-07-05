package com.devlinks.services;

import java.util.List;

import com.devlinks.dao.FileDAO;
import com.devlinks.model.File;

public class FileServices {
	private FileDAO dao = new FileDAO();

	public List<File> fetchFileData(int langId) {
		return dao.getFileData(langId);
	}
}
