<form action="BookCarServlet" method="POST">
    <label for="car_model">Car Model:</label>
    <input type="text" id="car_model" name="car_model" required><br>

    <label for="location">Pick-Up Location:</label>
    <input type="text" id="location" name="location" required><br>

    <label for="pick_up_date">Pick-Up Date:</label>
    <input type="date" id="pick_up_date" name="pick_up_date" required><br>

    <button type="submit">Book Car</button>
</form>
