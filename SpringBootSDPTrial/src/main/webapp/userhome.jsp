<%@page import="com.klef.jfsd.springbootdemo.model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
   User u= (User)session.getAttribute("user");
   if(u==null)
   {
	   response.sendRedirect("usersessionfail");
	   return;
   }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Home</title>

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

        .home-wrap {
            width: 100%;
            margin: auto;
            max-width: 525px;
            min-height: 300px; /* Adjust as necessary */
            position: relative;
            background: rgba(255, 255, 255, 0.5);
            box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .24), 0 17px 50px 0 rgba(0, 0, 0, .19);
            border-radius: 15px;
            backdrop-filter: blur(10px);
            padding: 20px;
            text-align: center; /* Center text inside the container */
        }

        h1 {
            color: black; /* Heading color */
            margin-bottom: 20px; /* Space below heading */
        }
    </style>
</head>
<body>
    <%@ include file="usernavbar.jsp" %>

    <div class="home-wrap">
        <h1>Welcome, <%= u.getName() %></h1>
        <p>You have successfully logged in to your account.</p>
        <!-- Add more user-specific content here -->
    </div>
</body>
</html>
