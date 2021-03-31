package Database;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect
{
    public static void main(String[] args) {
        String MySQLURL = "jdbc:mysql://localhost:3306/bedrijven_restapi";
        String databseUserName = "root";
        String databasePassword = "";
        Connection con = null;
        try {
            con = DriverManager.getConnection(MySQLURL, databseUserName, databasePassword);
            if (con != null) {
                System.out.println("Database connection is successful !!!!");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
