<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">

    <style>
        body {
            margin: 0;
            color: #6a6f8c;
            background: linear-gradient(45deg, rgba(0, 128, 0, 0.8), rgba(255, 255, 255, 0.8));
            font: 600 16px/18px 'Open Sans', sans-serif;
        }

        *,:after,:before {
            box-sizing: border-box;
        }

        .clearfix:after,.clearfix:before {
            content: '';
            display: table;
        }

        .clearfix:after {
            clear: both;
            display: block;
        }

        a {
            color: inherit;
            text-decoration: none;
        }

        .login-wrap {
            width: 100%;
            margin: auto;
            max-width: 525px;
            min-height: 400px; /* Adjust as necessary */
            position: relative;
            background: rgba(255, 255, 255, 0.5);
            box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .24), 0 17px 50px 0 rgba(0, 0, 0, .19);
            border-radius: 15px;
            backdrop-filter: blur(10px);
            padding: 20px;
        }

        .login-html {
            width: 100%;
            height: auto;
            position: absolute;
            padding: 20px;
            background: transparent;
            border-radius: 13px;
        }

        .login-form {
            min-height: 345px;
            position: relative;
            perspective: 1000px;
            transform-style: preserve-3d;
        }

        .login-form .group {
            margin-bottom: 15px;
        }

        .login-form .group .label,
        .login-form .group .input,
        .login-form .group .button {
            width: 100%;
            display: block;
        }

        .login-form .group .label {
            color: black; 
            font-size: 12px;
        }

        .login-form .group .input {
            border: none;
            padding: 10px 10px;
            border-radius: 25px;
            background: rgba(255, 255, 255, 0.1);
        }

        .login-form .group .button {
            background: #4CAF50; 
            border: none;
            padding: 10px 10px;
            border-radius: 25px;
            cursor: pointer;
        }

        .login-form .group .button:hover {
            background: #45a049;
        }

        .button-group {
            display: flex;
            justify-content: space-around;
            margin-top: 30px;
        }

        ::placeholder {
            color: #555;
            opacity: 0.8;
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>

    <div class="login-wrap">
        <div class="login-html">
            <h3 style="color: black; text-align: center;">User Login</h3>
            <form method="post" action="checkuserlogin" class="login-form">
                <div class="group">
                    <label for="uemail" class="label">Enter Email ID</label>
                    <input type="email" id="uemail" name="uemail" class="input" required placeholder="Email ID"/>
                </div>
                <div class="group">
                    <label for="upwd" class="label">Enter Password</label>
                    <input type="password" id="upwd" name="upwd" class="input" required placeholder="Password"/>
                </div>
                <div class="group button-group">
                    <input type="submit" class="button" value="Login" style="width: 42%;"/>
                    <input type="reset" class="button" value="Clear" style="width: 42%; margin-left: 2%;"/>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
