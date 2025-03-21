import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Registartion")
public class Registartion extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String email = request.getParameter("email");
        String name = request.getParameter("name");
        String qualification = request.getParameter("qua");
        String dob = request.getParameter("dob");
        String address = request.getParameter("addr");
        String gender = request.getParameter("gender");
        String state = request.getParameter("state");
        String city = request.getParameter("city");
        String pin = request.getParameter("pin");
        String mobile = request.getParameter("mobile");
        String password = request.getParameter("password");

        // Database connection parameters
        String jdbcUrl = "jdbc:mysql://localhost:3306/mysql";
        String jdbcUser = "root";
        String jdbcPassword = "reddy";

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            // Establish the connection
            Connection con = DriverManager.getConnection(jdbcUrl, jdbcUser, jdbcPassword);

            // Prepare the SQL statement
            String sql = "INSERT INTO registration (email, name, qualification, dob, address, gender, state, city, pin, mobile, password) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pst = con.prepareStatement(sql);
            pst.setString(1, email);
            pst.setString(2, name);
            pst.setString(3, qualification);
            pst.setString(4, dob);
            pst.setString(5, address);
            pst.setString(6, gender);
            pst.setString(7, state);
            pst.setString(8, city);
            pst.setString(9, pin);
            pst.setString(10, mobile);
            pst.setString(11, password);

            // Execute the statement
            int row = pst.executeUpdate();
            if (row > 0) {
                out.println("<h3>Registration successful!</h3>");
            } else {
                out.println("<h3>Registration failed, please try again.</h3>");
            }

            // Close the resources
            pst.close();
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            out.println("<h3>Registration failed, please try again.</h3>");
        } finally {
            out.close();
        }
    }
}
