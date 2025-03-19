import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/BookCarServlet")
public class BookCarServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String carModel = request.getParameter("car_model");
        String location = request.getParameter("location");
        String pickUpDate = request.getParameter("pick_up_date");

        HttpSession session = request.getSession();
        String username = (String) session.getAttribute("username");

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/your_db", "root", "password")) {
            String userQuery = "SELECT id FROM users WHERE username = ?";
            try (PreparedStatement userStmt = conn.prepareStatement(userQuery)) {
                userStmt.setString(1, username);
                ResultSet userRs = userStmt.executeQuery();
                if (userRs.next()) {
                    int userId = userRs.getInt("id");

                    String bookingQuery = "INSERT INTO bookings (user_id, car_model, location, pick_up_date) VALUES (?, ?, ?, ?)";
                    try (PreparedStatement stmt = conn.prepareStatement(bookingQuery)) {
                        stmt.setInt(1, userId);
                        stmt.setString(2, carModel);
                        stmt.setString(3, location);
                        stmt.setString(4, pickUpDate);
                        stmt.executeUpdate();
                    }
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        response.sendRedirect("dashboard.jsp");
    }
}
