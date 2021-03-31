package Database;

import java.sql.Connection;
import java.sql.DriverManager;

public abstract class DBConnect
{
    private String MySQLURL = "jdbc:mysql://localhost:3306/bedrijven_restapi";
    private String databseUserName = "root";
    private String databasePassword = "";
    private Connection con = null;

    public Connection getDBConnection()
    {
        try {
            con = DriverManager.getConnection(MySQLURL, databseUserName, databasePassword);
            if (con != null) {
                //System.out.println("Database connection is successful !!!!");
                return con;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
