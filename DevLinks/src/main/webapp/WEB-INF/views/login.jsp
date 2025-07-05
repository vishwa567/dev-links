<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>DevLinks - login</title>
        <link rel="stylesheet" href="public/styles/login.css" />
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
            integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
        />
        <style>
            @import url("https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Sora:wght@100..800&display=swap");
        </style>
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
            <div class="form">
                <h2>LOGIN</h2>
                <form action="UserLogin" method="POST" autocomplete="off">
                    <div class="input-container">
                        <label for="login-email">Email</label>
                        <input
                            type="email"
                            id="login-email"
                            name="login-email"
                            placeholder="email"
                            autocomplete="off"
							autofocus
                            required
                        />
                    </div>
                    <div class="input-container">
                        <label for="login-password">Password</label>
                        <input
                            type="password"
                            id="login-password"
                            name="login-password"
                            placeholder="password"
                            autocomplete="off"
                            required
                        />	
                    </div>
                    <button>submit</button>
                </form>
                <h6>don't have an account? <a href="signup">signup</a></h6>
            </div>
        </main>
    </body>
</html>
