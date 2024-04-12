<!DOCTYPE html>
<html>
<head>
    <title>Register Form</title>
    <style>
        /* CSS for form container */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }

        /* CSS for form elements */
        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        /* CSS for buttons */
        .registerbtn {
            background-color: #4CAF50;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 4px;
            width: 100%;
            cursor: pointer;
        }

        .registerbtn:hover {
            background-color: #45a049;
        }

        /* CSS for links */
        a {
            color: dodgerblue;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        /* CSS for labels */
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        /* CSS for headings */
        h1, h2 {
            text-align: center;
            color: #333;
        }

        /* CSS for HR */
        hr {
            border: 0;
            height: 1px;
            background-color: #ccc;
            margin-bottom: 15px;
        }

        /* CSS for additional container */
        .signin {
            text-align: center;
        }
    </style>
</head>
<body>
    <form action="action_page.php">
        <div class="container">
            <h1>New User Registration</h1>
            <p>Please fill in this form to create an account.</p>
            <hr>
            
            <label for="Name"><b>Enter Name</b></label>
            <input type="text" placeholder="Enter Full Name" name="Name" id="Name" required>

            <label for="mobile"><b>Enter Mobile</b></label>
            <input type="text" placeholder="Enter Mobile Number" name="mobile" id="mobile" required>

            <label for="email"><b>Enter Email</b></label>
            <input type="text" placeholder="Enter Email" name="email" id="email" required>

            <label for="psw"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

            <label for="psw-repeat"><b>Repeat Password</b></label>
            <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>

            <hr>

            <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
            <button type="submit" class="registerbtn">Register</button>
        </div>

        <div class="container signin">
            <p>Already have an account? <a href="#">Sign in</a>.</p>
        </div>

        <h2>Thank You</h2>
        <h2>Happy Learning. See You Again.</h2>
    </form>
</body>
</html>
