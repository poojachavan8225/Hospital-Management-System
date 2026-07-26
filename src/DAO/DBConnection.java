/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package DAO;
import java.sql.Connection;
    import java.sql.DriverManager;
    import java.sql.SQLException;
import java.sql.Connection;
import java.sql.PreparedStatement;



/**
 *
 * @author DELL
 */
public class DBConnection {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/hospital";
        private static final String USER = "root";
        private static final String PASS = "";

        public static Connection getConnection() throws SQLException {
            return DriverManager.getConnection(DB_URL, USER, PASS);
        }

        public static void main(String[] args) {
            try (Connection conn = getConnection()) {
                if (conn != null) {
                    System.out.println("Connected to the database!");
                    // You can now perform database operations (e.g., execute queries)
                }
            } catch (SQLException e) {
                System.err.println("Database connection failed: " + e.getMessage());
            }
        }

    public class PatientDAO {
    private Connection con;

    public PatientDAO() {
        // forgot to initialize connection here
    }

    // PatientDAO.java
 public static boolean deletePatientById(int patientId) {
        boolean deleted = false;
        String sql = "DELETE FROM patient WHERE PatientID = ?";

        try {
            // connect to your DB
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/hospital", "root", "");

            PreparedStatement pst = con.prepareStatement(sql);
            pst.setInt(1, patientId);

            deleted = pst.executeUpdate() > 0;

            pst.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return deleted;
    }
    }
     public class addDAO {
    private Connection con;

    public addDAO() {
        // forgot to initialize connection here
    }

    // PatientDAO.java
 public static boolean deleteDoctorById(int DoctorId) {
        boolean deleted = false;
        String sql = "DELETE FROM adddoc WHERE DoctorID = ?";

        try {
            // connect to your DB
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/hospital", "root", "");

            PreparedStatement pst = con.prepareStatement(sql);
            int DoctorID = 0;
            pst.setInt(1, DoctorID);

            deleted = pst.executeUpdate() > 0;

            pst.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return deleted;
 }
     }}


   

