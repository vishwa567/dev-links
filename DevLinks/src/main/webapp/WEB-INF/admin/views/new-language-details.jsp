<%@page import="com.devlinks.services.LanguageServices"%>
<%@ page import="java.util.List"%>
<%@ page import="com.devlinks.model.Language"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>DevLinks - Admin - New Language details</title>
<link rel="stylesheet"
	href="admin/public/styles/new-language-details.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
	integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
@import
	url("https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Sora:wght@100..800&display=swap")
	;
</style>
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
		<div class="form-div">
			<form action="UploadNewLanguageDetails" method="post"
				enctype="multipart/form-data">
				<h1 class="heading">New Language details</h1>
				<div class="input-container">
					<label for="lang-name">language name:</label> <input type="text"
						name="lang-name" id="lang-name" autocomplete="off" autofocus
						required />
				</div>
				<div class="input-container">
					<label for="video-title">video title:</label> <input type="text"
						name="video-title" id="video-title" autocomplete="off" autofocus
						required />
				</div>
				<div class="input-container">
					<label for="video-link">video link:</label> <input type="text"
						name="video-link" id="video-link" autocomplete="off" autofocus
						required />
				</div>
				<div class="input-container upload-container">
					<label for="pdf-file">Upload file:</label> <label for="pdf-file"
						class="upload-file">Choose file</label> <input type="file"
						name="pdf-file" id="pdf-file" accept="application/pdf"
						autocomplete="off" autofocus required />
					<p id="file-feedback" class=""></p>
				</div>

				<button class="form-submit-btn" type="submit">upload</button>
				<%
				Boolean successAttr = (Boolean) request.getAttribute("success");
				if (successAttr != null && successAttr) {
				%>
				<h2 class="upload-feedback">New language uploaded Successfully</h2>
				<%
				}
				%>
			</form>
			<form action="DeleteLanguage" method="POST" class="delete-lang">
				<h1 class="heading">Delete existing language</h1>
				<div class="input-container">
					<label for="lang-id-to-delete">Language Id:</label> <input
						type="number" min="101" max="200" maxlength="3"
						name="lang-id-to-delete" id="lang-id-to-delete" autocomplete="off"
						autofocus required />
				</div>
				<button class="form-submit-btn" type="submit">delete</button>
				<%
				Boolean deleted = (Boolean) request.getAttribute("deleted");
				if (deleted != null && deleted) {
				%>
				<h2 class="upload-feedback">language deleted Successfully</h2>
				<%
				}
				%>
			</form>
		</div>
		<div class="display-langs">
			<h3 class="heading"> Available Languages</h3>
			<div class="lang-heading-div">
				<p class="show-lang-data-p">Id</p>
				<p class="show-lang-data-p">Name</p>
			</div>
			<%
			List<Language> langs = new LanguageServices().getAllLanguages();
			if (langs != null) {
				for (Language lang : langs) {
			%>
			<div class="lang-id-name-div">
				<p class="show-lang-data-p"><%=lang.getLangId() %></p>
				<p class="show-lang-data-p"><%=lang.getLangName()%></p>
			</div>
			<%
			}
			}
			%>
		</div>
	</main>
	<script>
		document.addEventListener("DOMContentLoaded", function() {
			const fileInput = document.getElementById("pdf-file");
			const feedback = document.getElementById("file-feedback");
			const maxLength = 20;

			fileInput.addEventListener("change", function() {
				const file = fileInput.files[0];

				if (!file) {
					feedback.className = "feedback-error";
					feedback.textContent = "No file selected";
				} else if (file.type !== "application/pdf") {
					feedback.className = "feedback-error";
					feedback.textContent = "Invalid file type";
					fileInput.value = "";
				} else {
					let displayName = file.name;
					console.log("Raw filename:", file.name); // double-check this

					if (displayName.length > maxLength) {
						displayName = displayName.substring(0, maxLength - 3)
								+ "...";
					}

					console.log("Trimmed name:", displayName); // verify trimming
					feedback.className = "feedback-success";
					feedback.innerText = displayName;
				}
			});
		});
	</script>


</body>
</html>
