package com.devlinks.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.devlinks.model.Video;
import com.devlinks.util.DBUtil;

public class VideoDAO {
	
	public List<Video> getVideoData(int langId) {
		List<Video> list = new ArrayList<>();
		String query = "SELECT * FROM lang_video_links WHERE video_id = ?";
		
		try(Connection conn = DBUtil.getConnection(); PreparedStatement stmt = conn.prepareStatement(query);) {
			stmt.setInt(1, langId);
			ResultSet rs = stmt.executeQuery();
			if(rs.next()) {
				list.add(new Video(rs.getInt("video_id"), rs.getString("video_name"), rs.getString("video_links")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
