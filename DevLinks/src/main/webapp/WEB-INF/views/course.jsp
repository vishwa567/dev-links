<%@page import="com.devlinks.services.LanguageServices"%>
<%@ page import="java.util.List" %>
<%@ page import="com.devlinks.model.Language" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="public/styles/course.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
	integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Sora:wght@100..800&display=swap')
	;
</style>
<title>DevLinks-Course</title>

</head>

<body>

	<nav>
		<div class="logo">
			<i class="fa-solid fa-code"></i><a href="home.jsp"
				class="logo">Dev-Links</a>
		</div>
		<ul>
			<li class="list"><i class="fa-solid nav-icons fa-house"></i><a
				class="nav-achor" href="home.jsp">Home</a></li>
			
		</ul>
	</nav>

	<main>
		<h2>Select the Language</h2>
		<p>get both YouTube link and also roadmap</p>
		<form action="LanguageDispatcher" method="GET" class="form">
			<h4 class="lang-heading">Programming Languages</h4>
			<ul class="lang-ul">
					<%
						List<Language> langs = new LanguageServices().getAllLanguages();
						if(langs != null) {
							for(Language lang : langs) {
					%>
					<li><button class="lang-box" name="lang-btn" value="<%=lang.getLangId()%>"><%=lang.getLangName()%></button></li>
					<%
							}
						}
					%>
				</ul>
			
		</form>
	</main>
</body>
</html>









