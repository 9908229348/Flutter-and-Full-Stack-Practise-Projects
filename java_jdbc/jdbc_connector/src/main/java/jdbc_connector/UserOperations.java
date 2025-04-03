package jdbc_connector;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserOperations {
    // Database credentials
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/bookmanagement";
    private static final String JDBC_USER = "root"; // Change to your DB username
    private static final String JDBC_PASSWORD = "Sravanthi@446"; // Change to your DB password

    public static void main(String[] args) {
        // Insert a new user
        insertUser("Ravi Doe", "Ravidoe@example.com", "India");

        // Update an existing user with ID 1 (Change ID as per your records)
        updateUser(1, "Updated Name", "updatedemail@example.com", "USA");

        // Delete a user with ID 1 (Change ID as per your records)
        deleteUser(1);
    }

    // Method to insert a user into the database
    public static void insertUser(String name, String email, String country) {
        String sql = "INSERT INTO users (name, email, country) VALUES (?, ?, ?)";

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, country);

            int rowsInserted = pstmt.executeUpdate();
            System.out.println("Rows inserted: " + rowsInserted);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to update a user's details in the database
    public static void updateUser(int id, String name, String email, String country) {
        String sql = "UPDATE users SET name = ?, email = ?, country = ? WHERE id = ?";

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setString(1, name);
            pstmt.setString(2, email);
            pstmt.setString(3, country);
            pstmt.setInt(4, id);

            int rowsUpdated = pstmt.executeUpdate();
            System.out.println("Rows updated: " + rowsUpdated);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Method to delete a user from the database
    public static void deleteUser(int id) {
        String sql = "DELETE FROM users WHERE id = ?";

        try (Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);
             PreparedStatement pstmt = conn.prepareStatement(sql)) {

            pstmt.setInt(1, id);

            int rowsDeleted = pstmt.executeUpdate();
            System.out.println("Rows deleted: " + rowsDeleted);

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
