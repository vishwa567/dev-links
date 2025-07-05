package com.devlinks.model;

public class Video {
	private int videoId;
	private String videoName;
	private String videoLink;

	public Video(int videoId, String videoName, String videoLink) {
		super();
		this.videoId = videoId;
		this.videoName = videoName;
		this.videoLink = videoLink;
	}

	public int getVideoId() {
		return videoId;
	}

	public String getVideoName() {
		return videoName;
	}

	public String getVideoLink() {
		return videoLink;
	}
}
