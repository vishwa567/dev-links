package com.devlinks.services;

import java.util.List;

import com.devlinks.dao.VideoDAO;
import com.devlinks.model.Video;

public class VideoServices {
	private VideoDAO dao = new VideoDAO();
	
	public List<Video> fetchVideoData(int langId) {
		return dao.getVideoData(langId);
	}
}
