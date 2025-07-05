package com.devlinks.model;

public class Language {
	private int langId;
	private String langName;

	public Language(int langId, String langName) {
		super();
		this.langId = langId;
		this.langName = langName;
	}

	public int getLangId() {
		return langId;
	}

	public String getLangName() {
		return langName;
	}

}
