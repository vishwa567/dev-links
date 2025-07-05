package com.devlinks.admin.services;

import com.devlinks.admin.dao.UploadFileDAO;
import com.devlinks.admin.model.UploadFile;

public class UploadFileServices {
	
	private UploadFileDAO dao = new UploadFileDAO();
	
	public boolean uploadDetailsToDB(UploadFile fileDetails) {
		return dao.uploadFileToDB(fileDetails);
	}
}
