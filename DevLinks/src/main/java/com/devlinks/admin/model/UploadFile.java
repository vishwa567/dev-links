package com.devlinks.admin.model;

import javax.servlet.http.Part;

public class UploadFile {

	private String langName;
	private String videoTitle;
	private String videoLink;
	private Part pdfFile;

	public UploadFile(String langName, String videoTitle, String videoLink,  Part pdfFile) {
		super();
		this.langName = langName;
		this.videoTitle = videoTitle;
		this.videoLink = videoLink;
		this.pdfFile = pdfFile;
	}

	public String getLangName() {
		return langName;
	}

	public String getVideoTitle() {
		return videoTitle;
	}

	public String getVideoLink() {
		return videoLink;
	}


	public Part getPdfFile() {
		return pdfFile;
	}

}
