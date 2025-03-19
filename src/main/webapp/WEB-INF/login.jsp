<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login - Car Rentals</title>
    <style>
        body { font-family: Arial, sans-serif; background-color: #f4f4f4; text-align: center; padding: 50px; }
        .container { background: white; padding: 20px; border-radius: 10px; display: inline-block; box-shadow: 0px 0px 10px #aaa; }
        input[type="text"], input[type="password"] { width: 80%; padding: 10px; margin: 10px 0; }
        input[type="submit"] { background: blue; color: white; padding: 10px 20px; border: none; cursor: pointer; }
        input[type="submit"]:hover { background: darkblue; }
    </style>
</head>
<body>
    <div class="container">
        <h2>Car Rentals - Login</h2>
        <form action="LoginServlet" method="post">
            <label for="username">Username:</label><br>
            <input type="text" id="username" name="username" required><br>
            
            <label for="password">Password:</label><br>
            <input type="password" id="password" name="password" required><br>
            
            <input type="submit" value="Login">
        </form>
        <p>Don't have an account? <a href="signup.jsp">Sign up here</a></p>
    </div>
</body>
</html>
