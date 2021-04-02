package Database;

import com.company.RESTAPI.APIInvesteringen;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DBInvesteringen extends DBConnect
{
    private Statement stmt;
    private ResultSet rs;
    private ArrayList<APIInvesteringen> dbData = new ArrayList<>();

    public ArrayList<APIInvesteringen> allInvesteringen()
    {
        try{
            stmt = getDBConnection().createStatement();

            rs = stmt.executeQuery("SELECT * FROM financieel_branche_overzicht_investeringen");

            while(rs.next())
            {
                APIInvesteringen apiInvesteringen = new APIInvesteringen(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4));
                dbData.add(apiInvesteringen);
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

    public void addInvestering(APIInvesteringen investering)
    {
        try{
            stmt = getDBConnection().createStatement();

            stmt.executeUpdate("INSERT INTO financieel_branche_overzicht_investeringen(OverzichtID, Branche, Periode, Investering_Materiele_Vaste_Activa) VALUES ("+investering.getOverzichtID()+",'"+investering.getBranche()+"','"+investering.getPeriode()+"',"+investering.getInvesteringMaterieleVasteActiva()+")");

            getDBConnection().close();
        }
        catch (SQLException throwables)
        {
            throwables.printStackTrace();
        }
    }

    public void delInvestering(int id)
    {
        try{
            stmt = getDBConnection().createStatement();

            stmt.executeUpdate("DELETE FROM financieel_branche_overzicht_investeringen WHERE OverzichtID="+id);

            getDBConnection().close();
        }
        catch (SQLException throwables)
        {
            throwables.printStackTrace();
        }
    }

    public void putInvestering(APIInvesteringen investering)
    {
        try{
            stmt = getDBConnection().createStatement();

            stmt.executeUpdate("UPDATE financieel_branche_overzicht_investeringen SET OverzichtID="+investering.getOverzichtID()+",Branche='"+investering.getBranche()+"',Periode='"+investering.getPeriode()+"',Investering_Materiele_Vaste_Activa="+investering.getInvesteringMaterieleVasteActiva()+" WHERE OverzichtID="+investering.getOverzichtID());

            getDBConnection().close();
        }
        catch (SQLException throwables)
        {
            throwables.printStackTrace();
        }
    }
}
