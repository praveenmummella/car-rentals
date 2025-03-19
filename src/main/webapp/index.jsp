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
        </ul>

        <!-- Car Search Form -->
        <div class="form-container">
            <h2>Search for Cars</h2>
            <form id="searchForm">
                <label for="location">Pick-Up Location:</label>
                <input type="text" id="location" name="location" placeholder="Enter location">
                <label for="date">Pick-Up Date:</label>
                <input type="date" id="date" name="date">
                <button type="submit">Search Cars</button>
            </form>
        </div>

        <!-- Display Available Cars -->
        <h2>Available Cars</h2>
        <ul id="carList" class="car-list">
            <!-- Car Listings will appear here -->
        </ul>

        <!-- About Us and Contact Information -->
        <h3>Our Services Include:</h3>
        <p>At Praveen Car Rentals, we offer a wide range of cars at competitive prices for your convenience.</p>
        
        <h3>Contact Us:</h3>
        <p>Feel free to reach out to our support team at: <strong>support@praveencarrentals.com</strong></p>
    </div>

    <footer>
        <p>&copy; 2025 Praveen Car Rentals - All Rights Reserved</p>
    </footer>

    <script>
        // Simple JavaScript to handle form submission and display results
        document.getElementById("searchForm").addEventListener("submit", function(event) {
            event.preventDefault();

            const location = document.getElementById("location").value;
            const date = document.getElementById("date").value;
            const carList = document.getElementById("carList");

            // Clear previous results
            carList.innerHTML = '';

            // Dummy car data (replace with dynamic content if needed)
            const cars = [
                { model: 'Toyota Corolla', location: 'New York', availableFrom: '2025-04-01' },
                { model: 'Honda Civic', location: 'Los Angeles', availableFrom: '2025-04-05' }
            ];

            // Filter cars based on search
            const filteredCars = cars.filter(car => {
                return car.location.toLowerCase().includes(location.toLowerCase()) && (car.availableFrom >= date);
            });

            // Display results
            if (filteredCars.length > 0) {
                filteredCars.forEach(car => {
                    const li = document.createElement('li');
                    li.innerHTML = `<strong>Car Model:</strong> ${car.model}<br><strong>Location:</strong> ${car.location}<br><strong>Available From:</strong> ${car.availableFrom}`;
                    carList.appendChild(li);
                });
            } else {
                carList.innerHTML = '<li>No cars found matching your criteria.</li>';
            }
        });
    </script>

</body>
</html>
