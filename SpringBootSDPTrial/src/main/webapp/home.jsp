<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Home Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-color: #4EA685;
            --secondary-color: #57B894;
            --white: #ffffff;
            --gray: #efefef;
            --gray-2: #757575;
        }

        * {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        html, body {
            height: 100vh;
            overflow: hidden;
            position: relative;
        }

        #container {
            position: relative;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background-image: linear-gradient(-45deg, var(--primary-color) 0%, var(--secondary-color) 100%);
            color: var(--white);
            transition: background 1s ease-in-out;
        }

        .row {
            display: flex;
            width: 100%;
            transform: scale(0);
            transition: transform 0.5s ease-in-out;
            opacity: 0;
            transition-delay: 0.5s; /* Delay the appearance */
        }

        .content-wrapper {
            max-width: 30rem;
            padding: 2rem;
            background-color: var(--white);
            border-radius: 1.5rem;
            box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
            opacity: 0;
            transform: translateY(20px);
            transition: opacity 0.5s ease, transform 0.5s ease;
        }

        .row.show {
            transform: scale(1);
            opacity: 1;
        }

        .content-wrapper.show {
            opacity: 1;
            transform: translateY(0);
        }

        .col {
            width: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: transform 0.5s ease;
        }

        .img img {
            width: 80%;
            max-width: 400px;
            transition: transform 0.3s ease;
        }

        button {
            padding: .6rem 2rem;
            border: none;
            border-radius: .5rem;
            background-color: var(--primary-color);
            color: var(--white);
            font-size: 1.2rem;
            cursor: pointer;
            transition: background 0.3s ease, transform 0.3s ease;
        }

        button:hover {
            background-color: var(--secondary-color);
            transform: translateY(-2px);
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
<%--     <%@ include file="mainnavbar.jsp" %> <!-- Include your main navigation bar -->
 --%>    
 
    <div id="container">
         <h2>Spring Boot SDP Project Trial</h2>
    
        <div class="row" id="contentRow">
            <div class="col">
                <div class="content-wrapper" id="contentWrapper">
                    <h1 style="font-size: 2.5rem; margin-bottom: 1rem;">Welcome to Our Platform</h1>
                    <p style="margin-bottom: 2rem; font-size: 1rem; color: var(--gray-2);">Your journey begins. Join us for an amazing experience!</p>
                    <button onclick="window.location.href='userreg.jsp'">Get Started</button>
                </div>
            </div>
            <div class="col">
                <div class="img">
                    <img src="welcome-image.jpg" alt="Welcome Image" />
                </div>
            </div>
        </div>
    </div>

    <script>
        // Add the class to trigger the transition effects
        window.onload = function() {
            document.getElementById('contentRow').classList.add('show');
            document.getElementById('contentWrapper').classList.add('show');
        };
    </script>
</body>
</html>
