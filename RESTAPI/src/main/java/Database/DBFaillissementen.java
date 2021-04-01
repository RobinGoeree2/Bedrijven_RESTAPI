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

    public void addFaillissement(APIFaillissementen faillissement)
    {
        try{
            stmt = getDBConnection().createStatement();

            int overzichtID = faillissement.getOverzichtID();
            String typeGefailleerd = faillissement.getTypeGefailleerd();
            String branche = faillissement.getBranche();
            String periode = faillissement.getPeriode();
            int uitgesprokenFaillissementen = faillissement.getUitgesprokenFaillissementen();

            stmt.executeUpdate("INSERT INTO financieel_branche_overzicht_faillissementen(OverzichtID, Type_gefailleerde, Branche, Periode, Uitgesproken_faillissementen) VALUES ("+overzichtID+",'"+typeGefailleerd+"','"+branche+"','"+periode+"',"+uitgesprokenFaillissementen+")");

            getDBConnection().close();
        }
        catch (SQLException throwables)
        {
            throwables.printStackTrace();
        }
    }

    public void delFaillissement(int id)
    {
        try{
            stmt = getDBConnection().createStatement();

            stmt.executeUpdate("DELETE FROM financieel_branche_overzicht_faillissementen WHERE OverzichtID="+id);

            getDBConnection().close();
        }
        catch (SQLException throwables)
        {
            throwables.printStackTrace();
        }
    }

    public void putFaillissementen(APIFaillissementen faillissement)
    {
        try{
            stmt = getDBConnection().createStatement();

            stmt.executeUpdate("UPDATE financieel_branche_overzicht_faillissementen SET OverzichtID="+faillissement.getOverzichtID()+",Type_gefailleerde='"+faillissement.getTypeGefailleerd()+"',Branche='"+faillissement.getBranche()+"',Periode='"+faillissement.getPeriode()+"',Uitgesproken_faillissementen='"+faillissement.getUitgesprokenFaillissementen()+"' WHERE OverzichtID="+faillissement.getOverzichtID());

            getDBConnection().close();
        }
        catch (SQLException throwables)
        {
            throwables.printStackTrace();
        }
    }
}
