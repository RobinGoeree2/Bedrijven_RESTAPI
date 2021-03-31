package Database;

import com.company.RESTAPI.APIFaillissementen;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DBFaillissementen extends DBConnect
{
    private Statement stmt;
    private ResultSet rs;
    private ArrayList<APIFaillissementen> dbData = new ArrayList<>();

    public ArrayList<APIFaillissementen> allFaillissementen()
    {
        try{
            stmt = getDBConnection().createStatement();

            rs = stmt.executeQuery("SELECT * FROM financieel_branche_overzicht_faillissementen");
            
            while(rs.next())
            {
                APIFaillissementen apiFaillissementen = new APIFaillissementen(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getInt(5));
                dbData.add(apiFaillissementen);
            }
            getDBConnection().close();
            return dbData;
        }
        catch (SQLException throwables)
        {
            throwables.printStackTrace();
        }
        return null;
    }
}
