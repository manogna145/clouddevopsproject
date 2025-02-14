<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>

    <!-- Add Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat&display=swap" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(45deg, #FFC0CB, #E6E6FA, #FFD700);
            background-attachment: fixed;
            height: 100vh;
            font-family: 'Montserrat', sans-serif;
            margin: 0;
            background-size: cover;
            position: relative;
        }

        /* Center the heading at the top of the page */
        h3 {
            text-align: center;
            margin-top: 50px;
            font-size: 28px;
            font-weight: bold;
            color: black;
        }

        /* Navbar styling */
        nav {
            background: rgba(0, 0, 0, 0.5);
            padding: 10px;
            text-align: center;
        }

        nav a {
            text-decoration: none;
            color: #fff;
            padding: 10px 20px;
            margin: 0 10px;
            font-size: 16px;
        }

        nav a:hover {
            background-color: rgba(255, 255, 255, 0.2);
        }

        .form-container {
            margin-top: 30px;
            display: flex;
            justify-content: center;
            margin-left: 20%; /* Move the container to the right */
        }

        .form-container {
            background: rgba(255, 255, 255, 0.3);
            padding: 2em;
            border-radius: 20px;
            border-left: 1px solid rgba(255, 255, 255, 0.3);
            border-top: 1px solid rgba(255, 255, 255, 0.3);
            backdrop-filter: blur(10px);
            box-shadow: 20px 20px 40px -6px rgba(0,0,0,0.2);
            text-align: center;
            position: relative;
            transition: all 0.2s ease-in-out;
            width: 80%;
            max-width: 600px;
        }

        form {
            margin: 0 auto;
            text-align: center;
        }

        table {
            margin: 0 auto;
        }

        td {
            padding: 10px;
            text-align: center;
        }

        input:not([type="radio"]), select {
            background: transparent;
            width: 200px;
            padding: 1em;
            margin-bottom: 2em;
            border: none;
            border-left: 1px solid rgba(255, 255, 255, 0.3);
            border-top: 1px solid rgba(255, 255, 255, 0.3);
            border-radius: 5000px;
            backdrop-filter: blur(5px);
            box-shadow: 4px 4px 60px rgba(0,0,0,0.2);
            color: #000;
            font-family: 'Montserrat', sans-serif;
            font-weight: 500;
            transition: all 0.2s ease-in-out;
        }

        input:hover:not([type="radio"]), select:hover {
            background: rgba(255,255,255,0.1);
            box-shadow: 4px 4px 60px rgba(0,0,0,0.2);
        }

        /* Black Button Styling */
        input[type="submit"], input[type="reset"] {
            display: inline-block;
            margin-top: 10px;
            width: 150px;
            padding: 10px;
            background-color: black;
            color: white;
            border-radius: 5000px;
            border: none;
            transition: background-color .2s ease-in-out;
        }

        input[type="submit"]:hover, input[type="reset"]:hover {
            background-color: rgba(255,255,255,0.2);
        }

        ::placeholder {
            color: #000;
            opacity: 0.7;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.4);
        }

        a {
            text-decoration: none;
            color: #ddd;
            font-size: 12px;
        }

        input:focus, select:focus, textarea:focus, button:hover {
            outline: none;
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>

    <h3><u>Admin Login</u></h3>

    <div class="form-container">
        <form method="post" action="checkadminlogin">
            <table>
                <tr>
                    <td><label for="auname">Enter Username</label></td>
                    <td><input type="text" id="auname" name="auname" required/></td>
                </tr>
                <tr>
                    <td><label for="apwd">Enter Password</label></td>
                    <td><input type="password" id="apwd" name="apwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                        <input type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
