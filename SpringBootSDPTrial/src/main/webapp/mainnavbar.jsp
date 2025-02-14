<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Spring Boot SDP Project Trial</title>
    <style>
        /* General Styles */
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8; /* Light background color */
            margin: 0;
            padding: 0;
        }

        /* Navbar Styles */
        .navbar {
            display: flex; /* Use flexbox for layout */
            justify-content: center; /* Center the navbar items */
            background: rgba(255, 255, 255, 0.3);  /* Gradient background */
            padding: 15px 0; /* Padding for the navbar */
        }

        .navbar a {
            text-decoration: none; /* Remove underline from links */
            color: black; /* White text color */
            padding: 10px 20px; /* Padding for buttons */
            border-radius: 5px; /* Rounded corners */
            transition: background-color 0.3s, transform 0.3s; /* Smooth transition effects */
        }

        .navbar a:hover {
            background-color: rgba(255, 255, 255, 0.2); /* Light background on hover */
            transform: scale(1.05); /* Slightly scale up on hover */
        }

        /* Heading Styles */
        h2 {
            color: #333; /* Dark gray color for headings */
            text-align: center; /* Center align heading */
        }

        /* Container Styles */
        .container {
            margin-top: 20px;
            padding: 20px;
        }
    </style>
</head>
<body>
    <h2>Spring Boot SDP Project Trial</h2>
    <div class="navbar">
        <a href="/">Home</a>
        <a href="userreg">User Registration</a>
        <a href="userlogin">User Login</a>
        <a href="adminlogin">Admin Login</a>
    </div>
    <div class="container">
        <!-- Your content here -->
    </div>
</body>
</html>