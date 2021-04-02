package Database;

import com.company.RESTAPI.APIBedrijven;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class DBBedrijven extends DBConnect
{
    private Statement stmt;
    private ResultSet rs;
    private ArrayList<APIBedrijven> dbData = new ArrayList<>();

    public ArrayList<APIBedrijven> allBedrijven()
    {
        try{
            stmt = getDBConnection().createStatement();

            rs = stmt.executeQuery("SELECT * FROM financieel_branche_overzicht_bedrijven");

            while(rs.next())
            {
                APIBedrijven apiBedrijven = new APIBedrijven(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getInt(7), rs.getInt(8), rs.getInt(9), rs.getInt(10), rs.getInt(11), rs.getInt(12), rs.getInt(13));
                dbData.add(apiBedrijven);
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

    public void addBedrijf(APIBedrijven bedrijf)
    {
        try{
            stmt = getDBConnection().createStatement();

            stmt.executeUpdate("INSERT INTO financieel_branche_overzicht_bedrijven(OverzichtID, Branche, Periode, Totaal_aantal_bedrijven, " +
                                    "Bedrijfsgrootte_1_werkzaam_persoon, Bedrijfsgrootte_2_werkzame_personen, Bedrijfsgrootte_3_tot_5_werkzame_personen, " +
                                    "Bedrijfsgrootte_5_tot_10_werkzame_personen, Bedrijfsgrootte_10_tot_20_werkzame_personen, Bedrijfsgrootte_20_tot_50_werkzame_personen, " +
                                    "Bedrijfsgrootte_50_tot_100_werkzame_personen, Natuurlijke_personen, Rechtspersonen) " +
                                    "VALUES ("+bedrijf.getOverzichtID()+",'"+bedrijf.getBranche()+"','"+bedrijf.getPeriode()+"',"+bedrijf.getTotaalBedrijven()+"," +
                                    bedrijf.getBedrijfsgrootte1WerkzaamPersoon()+","+bedrijf.getBedrijfsgrootte2WerkzaamPersoon()+","+bedrijf.getBedrijfsgrootte3tot5WerkzaamPersoon()+"," +
                                    bedrijf.getBedrijfsgrootte5tot10WerkzaamPersoon()+","+bedrijf.getBedrijfsgrootte10tot20WerkzaamPersoon()+","+bedrijf.getBedrijfsgrootte20tot50WerkzaamPersoon()+"," +
                                    bedrijf.getBedrijfsgrootte50tot100WerkzaamPersoon()+","+bedrijf.getNatuurlijkPersoon()+","+bedrijf.getRechtsPersoon()+")");

            getDBConnection().close();
        }
        catch (SQLException throwables)
        {
            throwables.printStackTrace();
        }
    }

    public void delBedrijf(int id)
    {
        try{
            stmt = getDBConnection().createStatement();

            stmt.executeUpdate("DELETE FROM financieel_branche_overzicht_bedrijven WHERE OverzichtID="+id);

            getDBConnection().close();
        }
        catch (SQLException throwables)
        {
            throwables.printStackTrace();
        }
    }

    public void putBedrijf(APIBedrijven bedrijf)
    {
        try{
            stmt = getDBConnection().createStatement();

            stmt.executeUpdate("UPDATE financieel_branche_overzicht_bedrijven SET OverzichtID="+bedrijf.getOverzichtID()+",Branche='"+bedrijf.getBranche()+"',Periode='"+bedrijf.getPeriode()+"',Totaal_aantal_bedrijven="+bedrijf.getTotaalBedrijven()+",Bedrijfsgrootte_1_werkzaam_persoon="+
                                    bedrijf.getBedrijfsgrootte1WerkzaamPersoon()+",Bedrijfsgrootte_2_werkzame_personen="+bedrijf.getBedrijfsgrootte2WerkzaamPersoon()+",Bedrijfsgrootte_3_tot_5_werkzame_personen="+bedrijf.getBedrijfsgrootte3tot5WerkzaamPersoon()+",Bedrijfsgrootte_5_tot_10_werkzame_personen="+
                                    bedrijf.getBedrijfsgrootte5tot10WerkzaamPersoon()+",Bedrijfsgrootte_10_tot_20_werkzame_personen="+bedrijf.getBedrijfsgrootte10tot20WerkzaamPersoon()+",Bedrijfsgrootte_20_tot_50_werkzame_personen="+bedrijf.getBedrijfsgrootte20tot50WerkzaamPersoon()+
                                    ",Bedrijfsgrootte_50_tot_100_werkzame_personen="+bedrijf.getBedrijfsgrootte50tot100WerkzaamPersoon()+",Natuurlijke_personen="+bedrijf.getNatuurlijkPersoon()+",Rechtspersonen="+bedrijf.getRechtsPersoon()+" WHERE OverzichtID="+bedrijf.getOverzichtID());

            getDBConnection().close();
        }
        catch (SQLException throwables)
        {
            throwables.printStackTrace();
        }
    }
}
