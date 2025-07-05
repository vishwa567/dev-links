<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>DevLinks - signup</title>
        <link rel="stylesheet" href="public/styles/signup.css" />
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
                <i class="fa-solid fa-code"></i
                ><a href="home.jsp" class="logo">Dev-Links</a>
            </div>
            <ul>
                <li class="list">
                    <i class="fa-solid nav-icons fa-house"></i
                    ><a class="nav-achor" href="home.jsp">Home</a>
                </li>
            </ul>
        </nav>
        <main>
            <div class="form">
                <h2>SIGNUP</h2>
                <form action="UserSignup" method="POST" autocomplete="off">
                    <div class="input-container">
                        <label for="signup-username">username</label>
                        <input
                            type="username"
                            id="signup-username"
                            name="signup-username"
                            placeholder="username"
                            autocomplete="off"
                            autofocus
                            required
                        />
                    </div>
                    <div class="input-container">
                        <label for="signup-email">Email</label>
                        <input
                            type="email"
                            id="signup-email"
                            name="signup-email"
                            placeholder="email"
                            autocomplete="off"
                            required
                        />
                    </div>
                    <div class="input-container">
                        <label for="signup-password">Password</label>
                        <input
                            type="password"
                            id="signup-password"
                            name="signup-password"
                            placeholder="password"
                            autocomplete="off"
                            required
                        />
                    </div>
                    <button>submit</button>
                </form>
                <h6>already have an account <a href="login">login</a></h6>
            </div>
        </main>
    </body>
</html>
