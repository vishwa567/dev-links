<%@page import="com.devlinks.services.LanguageServices"%>
<%@ page import="java.util.List" %>
<%@ page import="com.devlinks.model.Language" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="public/styles/home.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
	integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Sora:wght@100..800&display=swap')
	;
</style>
<title>DevLinks-Home</title>

</head>
<body>
	<nav>
		<div class="logo">
			<i class="fa-solid fa-code"></i><a href="home.jsp" class="logo">Dev-Links</a>
		</div>
		<ul>
			<li class="list"><i class="fa-solid nav-icons fa-house"></i><a
				class="nav-achor" href="home.jsp">Home</a></li>
			<%
			if (session.getAttribute("user") == null || session.getAttribute("admin") != null) {
			%>
			<li class="list"><i
				class="fa-solid fa-right-to-bracket nav-icons"></i> <a
				class="nav-achor" href="login">Login</a></li>
			<%
			}
			%>
		</ul>
	</nav>

	<main>
		<h4 class="quest">Are you beginner?</h4>
		<h1 class="mid-cont">
			Allow us to assist by providing course <br> links and roadmaps.
		</h1>
		<div class="btn-cls">
			<form action="course" method="GET">
				<button class="btn">
					<i class="fa-solid main-btn-icons fa-circle-down"></i>Let's get
					Start
				</button>
			</form>
		</div>
		<div class="how-it-work-div">
			<h3>Here is how Dev-Links website helps</h3>
			<div class="steps">
				<div class="step1 com-box">
					<i class="fa-solid fa-1"></i>
					<p>"Select the language you need for your learning journey."</p>
				</div>
				<div class="step1 com-box">
					<i class="fa-solid fa-2"></i>
					<p>"We'll share the best YouTube videos and roadmap links."</p>
				</div>
				<div class="step1 com-box">
					<i class="fa-solid fa-3"></i>
					<p>"Start your learning journey without spending a single
						rupee."</p>
				</div>
			</div>
		</div>

		<div class="lang">
			<div class="lang-block">
				<h4 class="lang-heading">
					These are the <span style="color: #ffd000;">languages</span> we are
					helping with
				</h4>
				<ul class="lang-ul">
					<%
						List<Language> langs = new LanguageServices().getAllLanguages();
						if(langs != null) {
							for(Language lang : langs) {
					%>
					<li class="lang-box" title="To start click on 'Lets get start' button"><%= lang.getLangName() %></li>
					<%
							}
						}
					%>
				</ul>
			</div>
		</div>
	</main>
	<footer class="copyright">&copy 2025 Dev-Links by Vishwas
		Patil & Team</footer>

</body>
</html>



