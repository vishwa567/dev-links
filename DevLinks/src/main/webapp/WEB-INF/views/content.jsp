<%@ page import="java.util.List"%>
<%@ page import="com.devlinks.model.Video"%>
<%@ page import="com.devlinks.model.File"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="public/styles/content.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
	integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Sora:wght@100..800&display=swap')
	;
</style>
<title>DevLinks-Content</title>

</head>

<body>
	<nav>
		<div class="logo">
			<i class="fa-solid fa-code"></i><a href="home.jsp" class="logo">Dev-Links</a>
		</div>
		<ul>
			<li class="list"><i class="fa-solid nav-icons fa-house"></i><a
				class="nav-achor" href="home.jsp">Home</a></li>
		</ul>
	</nav>

	<main>
		<div class="container">
			<div class="video-frame">
				<%
				List<Video> videoList = (List<Video>) request.getAttribute("videoData");
				if (videoList != null) {
					for (Video video : videoList) {
				%>
				<iframe width="560" height="315" src="<%=video.getVideoLink()%>"
					allow="accelerometer; autoplay;" frameborder="0"
					referrerpolicy="strict-origin-when-cross-origin" allowfullscreen>
				</iframe>

				<p class="video-title"><%=video.getVideoName()%></p>
				<%
				}
				}
				%>
			</div>

			<%
			List<File> fileList = (List<File>) request.getAttribute("fileData");
			if (fileList != null) {
				for (File file : fileList) {
			%>
			<form action="DownloadPdfFile" method="GET">
				<button class="file-frame-btn" name="file-id" value="<%= file.getFileId() %>">
					<i class="fa-solid fa-file-arrow-down"></i> Download
				</button>
			</form>
			<p class="file-name"><%=file.getFileName()%></p>

			<%
			}
			}
			%>
		</div>
	</main>
</body>

</html>