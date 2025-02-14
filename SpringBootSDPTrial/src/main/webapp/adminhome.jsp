<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Home</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(45deg, #D8A7CA, #F8BBD0, #F0E68C); /* Lavender, Light Pink, Gold Gradient */
            background-size: cover; /* Ensure background covers the entire body */
            color: #333;
            margin: 0;
            padding: 20px;
            line-height: 1.6;
        }

        /* Navbar Styles */
        .navbar {
            display: flex;
            justify-content: center;
            background: linear-gradient(90deg, #007bff, #00c6ff); /* Gradient background */
            padding: 15px 0;
            border-radius: 5px;
            margin-bottom: 20px;
        }

        .navbar a {
            text-decoration: none;
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s, transform 0.3s;
        }

        .navbar a:hover {
            background-color: rgba(255, 255, 255, 0.2);
            transform: scale(1.05);
        }

        /* Transparent Container Styles */
        .transparent-container {
            background: rgba(255, 255, 255, 0.2); /* Light transparent white background */
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Slight shadow effect */
            backdrop-filter: blur(10px); /* Blurring the background behind the container */
        }

        /* List Styles (numbers removed) */
        ol {
            list-style-type: none; /* Remove the numbers */
            text-align: center;
        }

        ol li {
            margin-bottom: 10px;
            font-size: 1.2rem;
            color: #333; /* Dark color for list text to make it visible */
        }

        h2 {
            text-align: center;
            color: #333; /* Dark color for heading */
        }
    </style>
</head>
<body>
    <%@ include file="adminnavbar.jsp" %>
    
    <div class="transparent-container">
        <h2>Spring Boot MVC Layers</h2>
        <ol>
            <li>Controller Layer will access Service Layer</li>
            <li>Service Layer will access Repository Layer</li>
            <li>Repository Layer contains Database Logic</li>
            <li>Total employees= <c:out value="$(count)"></c:out></li>
        </ol>
    </div>
</body>
</html>
