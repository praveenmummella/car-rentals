<%@ page import="java.sql.*" %>
<%
    HttpSession session = request.getSession();
    String username = (String) session.getAttribute("username");

    if (username != null) {
        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_db", "root", "password")) {
            String query = "SELECT * FROM bookings WHERE user_id = (SELECT id FROM users WHERE username = ?)";
            try (PreparedStatement stmt = conn.prepareStatement(query)) {
                stmt.setString(1, username);
                ResultSet rs = stmt.executeQuery();

                out.println("<h3>Your Bookings:</h3>");
                while (rs.next()) {
                    out.println("<p>Car Model: " + rs.getString("car_model") + "<br>Location: " + rs.getString("location") + "<br>Pick-Up Date: " + rs.getString("pick_up_date") + "</p>");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    } else {
        out.println("Please log in to view your bookings.");
    }
%>
