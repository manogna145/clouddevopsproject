<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Registration</title>

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

        .registration-wrap {
            width: 100%;
            margin: auto;
            max-width: 525px;
            min-height: 670px;
            position: relative;
            background: rgba(255, 255, 255, 0.5);
            box-shadow: 0 12px 15px 0 rgba(0, 0, 0, .24), 0 17px 50px 0 rgba(0, 0, 0, .19);
            border-radius: 15px;
            backdrop-filter: blur(10px);
            padding: 20px;
        }

        .registration-html {
            width: 100%;
            height: auto; /* Changed from 100% to auto */
            position: absolute;
            padding: 20px; /* Reduced padding */
            background: transparent; /* Changed to transparent */
            border-radius: 13px;
        }

        .registration-form {
            min-height: 345px;
            position: relative;
            perspective: 1000px;
            transform-style: preserve-3d;
        }

        .registration-form .group {
            margin-bottom: 15px;
        }

        .registration-form .group .label,
        .registration-form .group .input,
        .registration-form .group .button {
            width: 100%;
            display: block;
        }

        /* Change label color to black */
        .registration-form .group .label {
            color: black; /* Changed to black */
            font-size: 12px;
        }

        .registration-form .group .input,
        .registration-form .group .button {
            border: none;
            padding: 10px 10px; /* Reduced padding for buttons */
            border-radius: 25px;
            background: rgba(255, 255, 255, 0.1);
        }

        .registration-form .group .button {
            background: #4CAF50; /* Green color */
            width: 10px; /* Set width to auto for buttons */
        }

        .registration-form .group .button:hover {
            background: #45a049; /* Darker green */
        }

        .gender-group {
            display: flex; /* Use flexbox for horizontal alignment */
            gap: 20px; /* Space between options */
        }

        .registration-form .group input[data-type="password"] {
            text-security: circle;
            -webkit-text-security: circle;
        }

        ::placeholder {
            color: #555;
            opacity: 0.8;
        }

        .hr {
            height: 2px;
            margin: 60px 0 50px 0;
            background: rgba(255, 255, 255, .2);
        }

        .foot-lnk {
            text-align: center;
        }

        .button-group {
            display: flex; /* Use Flexbox for horizontal alignment */
            justify-content: space-around; /* Space between buttons */
            margin-top: 30px; /* Add some top margin */
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>

    <div class="registration-wrap">
        <div class="registration-html">
            <h3 style="color: black; text-align: center;">User Registration</h3>
            <form method="post" action="insertuser" class="registration-form">
                <div class="group">
                    <label for="uname" class="label">Enter Name</label>
                    <input type="text" id="uname" name="uname" class="input" placeholder="Name" required/>
                </div>
                <div class="group">
                    <label>Select Gender</label>
                    <div class="gender-group">
                        <div>
                            <input type="radio" id="male" name="ugender" value="MALE" required/>
                            <label for="male" class="label">Male</label>
                        </div>
                        <div>
                            <input type="radio" id="female" name="ugender" value="FEMALE" required/>
                            <label for="female" class="label">Female</label>
                        </div>
                        <div>
                            <input type="radio" id="others" name="ugender" value="OTHERS" required/>
                            <label for="others" class="label">Others</label>
                        </div>
                    </div>
                </div>
                <div class="group">
                    <label for="uage" class="label">Enter Age</label>
                    <input type="number" id="uage" name="uage" class="input" placeholder="Age" required/>
                </div>
                <div class="group">
                    <label for="uemail" class="label">Enter Email ID</label>
                    <input type="email" id="uemail" name="uemail" class="input" placeholder="Email" required/>
                </div>
                <div class="group">
                    <label for="upassword" class="label">Enter Password</label>
                    <input type="password" id="upassword" name="upassword" class="input" placeholder="Password" required/>
                </div>
                <div class="group">
                    <label for="ucontact" class="label">Enter Contact</label>
                    <input type="number" id="ucontact" name="ucontact" class="input" placeholder="Contact" required/>
                </div>
                <div class="group button-group">
                    <input type="submit" class="button" value="Register" style="width: 42%;"/>
                    <input type="reset" class="button" value="Clear" style="width: 42%; margin-left: 2%;"/>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
