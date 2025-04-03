package jdbc_connector;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JDBCExample {

	private static final String JDBC_URL = "jdbc:mysql://localhost:3306/bookmanagement";
	private static final String JDBC_USER = "root"; // Change to your DB username
	private static final String JDBC_PASSWORD = "Sravanthi@446"; // Change to your DB password

	public static void main(String[] args) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			// Load MySQL JDBC Driver
			Class.forName("com.mysql.cj.jdbc.Driver");

			// Establish connection
			conn = DriverManager.getConnection(JDBC_URL, JDBC_USER, JDBC_PASSWORD);

			// Create SQL query
			String sql = "SELECT * FROM users";

			// Execute query
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			// Process the result set
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String country = rs.getString("country");

				System.out.println("ID: " + id + ", Name: " + name + ", Email: " + email + "Country: " + country);
			}

		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		} finally {
			// Close resources
			try {
				if (rs != null)
					rs.close();
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
