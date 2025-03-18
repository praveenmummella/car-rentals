<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Praveen Car Rentals</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f9;
        }
        header {
            background-color: #0066cc;
            color: white;
            text-align: center;
            padding: 20px;
        }
        footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        .content {
            padding: 20px;
        }
        .container {
            width: 80%;
            margin: 0 auto;
        }
        .form-container {
            margin-bottom: 20px;
        }
        .form-container input, .form-container button {
            padding: 10px;
            margin: 5px 0;
            width: 100%;
        }
        .car-list {
            list-style-type: none;
            padding: 0;
        }
        .car-list li {
            background: #f9f9f9;
            padding: 10px;
            margin: 5px 0;
            border-radius: 5px;
        }
    </style>
</head>
<body>

    <header>
        <h1>Welcome to Praveen Car Rentals!</h1>
    </header>

    <div class="content container">
        <!-- Available Features -->
        <h2>Available Features:</h2>
        <ul>
            <li>Browse and Rent Cars</li>
            <li>View Car Details</li>
            <li>Book Car Rentals Online</li>
            <li>Manage Bookings</li>
        </ul>

        <!-- Car Search Form -->
        <div class="form-container">
            <h2>Search for Cars</h2>
            <form action="index.jsp" method="get">
                <label for="location">Pick-Up Location:</label>
                <input type="text" id="location" name="location" placeholder="Enter location">
                <label for="date">Pick-Up Date:</label>
                <input type="date" id="date" name="date">
                <button type="submit">Search Cars</button>
            </form>
        </div>

        <!-- Display Available Cars -->
        <h2>Available Cars</h2>
        <ul class="car-list">
            <li>
                <strong>Car Model:</strong> Toyota Corolla<br>
                <strong>Location:</strong> New York<br>
                <strong>Available From:</strong> 2025-04-01
            </li>
            <li>
                <strong>Car Model:</strong> Honda Civic<br>
                <strong>Location:</strong> Los Angeles<br>
                <strong>Available From:</strong> 2025-04-05
            </li>
        </ul>

        <!-- Show Search Results (dynamically generated) -->
        <%
            String location = request.getParameter("location");
            String date = request.getParameter("date");

            if (location != null && !location.isEmpty() && date != null && !date.isEmpty()) {
                out.println("<h3>Search Results for " + location + " on " + date + ":</h3>");
                out.println("<ul class='car-list'>");

                // For demonstration, hardcoded results. This can be replaced with database-driven dynamic content.
                out.println("<li><strong>Car Model:</strong> Toyota Corolla, <strong>Location:</strong> " + location + ", <strong>Available From:</strong> 2025-04-01</li>");
                out.println("<li><strong>Car Model:</strong> Honda Civic, <strong>Location:</strong> " + location + ", <strong>Available From:</strong> 2025-04-05</li>");

                out.println("</ul>");
            }
        %>

        <!-- About Us and Contact Information -->
        <h3>Our Services Include:</h3>
        <p>At Praveen Car Rentals, we offer a wide range of cars at competitive prices for your convenience. Whether you're looking for a compact car for city driving or a luxury car for a special occasion, we've got you covered.</p>
        
        <h3>Contact Us:</h3>
        <p>Feel free to reach out to our support team at: <strong>support@praveencarrentals.com</strong></p>
    </div>

    <footer>
        <p>&copy; 2025 Praveen Car Rentals - All Rights Reserved</p>
    </footer>

</body>
</html>
