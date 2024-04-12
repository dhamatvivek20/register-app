<!DOCTYPE html>
<html>
<head>
    <title>DevOps Learning Registration</title>
</head>
<body>
    <div class="container">
        <h1>New User Registration</h1>
        <p>Please fill in this form to create an account.</p>
        <hr>
        <form action="action_page.php">
            <label for="Name"><b>Enter Name:</b></label><br>
            <input type="text" placeholder="Enter Full Name" name="Name" id="Name" required><br><br>
            
            <label for="mobile"><b>Enter Mobile:</b></label><br>
            <input type="text" placeholder="Enter Mobile Number" name="mobile" id="mobile" required><br><br>

            <label for="email"><b>Enter Email:</b></label><br>
            <input type="text" placeholder="Enter Email" name="email" id="email" required><br><br>

            <label for="psw"><b>Password:</b></label><br>
            <input type="password" placeholder="Enter Password" name="psw" id="psw" required><br><br>

            <label for="psw-repeat"><b>Repeat Password:</b></label><br>
            <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required><br><br>

            <hr>
            <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
            
            <button type="submit" class="registerbtn">Register</button>
        </form>
        
        <div class="signin">
            <p>Already have an account? <a href="#">Sign in</a>.</p>
        </div>

        <h1>Thank You</h1>
        <h1>Happy Learning. See You Again Vivek.</h1>
    </div>
</body>
</html>
