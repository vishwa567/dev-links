package com.devlinks.model;

public class File {

	private int fileId;
	private String fileName;

	public File(int fileId, String fileName) {
		super();
		this.fileId = fileId;
		this.fileName = fileName;
	}

	public int getFileId() {
		return fileId;
	}

	public String getFileName() {
		return fileName;
	}

}
