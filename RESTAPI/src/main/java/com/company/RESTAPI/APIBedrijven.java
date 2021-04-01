package com.company.RESTAPI;

import com.fasterxml.jackson.annotation.JsonProperty;

public class APIBedrijven
{
    private int overzichtID;
    private String branche;
    private String periode;
    private int totaalBedrijven;
    private int bedrijfsgrootte1WerkzaamPersoon;
    private int bedrijfsgrootte2WerkzaamPersoon;
    private int bedrijfsgrootte3tot5WerkzaamPersoon;
    private int bedrijfsgrootte5tot10WerkzaamPersoon;
    private int bedrijfsgrootte10tot20WerkzaamPersoon;
    private int bedrijfsgrootte20tot50WerkzaamPersoon;
    private int bedrijfsgrootte50tot100WerkzaamPersoon;
    private int natuurlijkPersoon;
    private int rechtsPersoon;

    public APIBedrijven(@JsonProperty("overzichtID") int overzichtID,
                        @JsonProperty("branche") String branche,
                        @JsonProperty("periode") String periode,
                        @JsonProperty("totaal_bedrijven") int totaalBedrijven,
                        @JsonProperty("bedrijfsgrootte_1_werkzame_personen") int bedrijfsgrootte1WerkzaamPersoon,
                        @JsonProperty("bedrijfsgrootte_2_werkzame_personen") int bedrijfsgrootte2WerkzaamPersoon,
                        @JsonProperty("bedrijfsgrootte_3_tot_5_werkzame_personen") int bedrijfsgrootte3tot5WerkzaamPersoon,
                        @JsonProperty("bedrijfsgrootte_5_tot_10_werkzame_personen") int bedrijfsgrootte5tot10WerkzaamPersoon,
                        @JsonProperty("bedrijfsgrootte_10_tot_20_werkzame_personen") int bedrijfsgrootte10tot20WerkzaamPersoon,
                        @JsonProperty("bedrijfsgrootte_20_tot_50_werkzame_personen") int bedrijfsgrootte20tot50WerkzaamPersoon,
                        @JsonProperty("bedrijfsgrootte_50_tot_100_werkzame_personen") int bedrijfsgrootte50tot100WerkzaamPersoon,
                        @JsonProperty("rechtsvorm_natuurlijkePersonen") int natuurlijkPersoon,
                        @JsonProperty("rechtsvorm_rechtsPersonen") int rechtsPersoon) {
        this.overzichtID = overzichtID;
        this.branche = branche;
        this.periode = periode;
        this.totaalBedrijven = totaalBedrijven;
        this.bedrijfsgrootte1WerkzaamPersoon = bedrijfsgrootte1WerkzaamPersoon;
        this.bedrijfsgrootte2WerkzaamPersoon = bedrijfsgrootte2WerkzaamPersoon;
        this.bedrijfsgrootte3tot5WerkzaamPersoon = bedrijfsgrootte3tot5WerkzaamPersoon;
        this.bedrijfsgrootte5tot10WerkzaamPersoon = bedrijfsgrootte5tot10WerkzaamPersoon;
        this.bedrijfsgrootte10tot20WerkzaamPersoon = bedrijfsgrootte10tot20WerkzaamPersoon;
        this.bedrijfsgrootte20tot50WerkzaamPersoon = bedrijfsgrootte20tot50WerkzaamPersoon;
        this.bedrijfsgrootte50tot100WerkzaamPersoon = bedrijfsgrootte50tot100WerkzaamPersoon;
        this.natuurlijkPersoon = natuurlijkPersoon;
        this.rechtsPersoon = rechtsPersoon;
    }

    public int getOverzichtID()
    {
        return overzichtID;
    }

    public void setOverzichtID(int overzichtID)
    {
        this.overzichtID = overzichtID;
    }

    public String getBranche()
    {
        return branche;
    }

    public void setBranche(String branche)
    {
        this.branche = branche;
    }

    public String getPeriode()
    {
        return periode;
    }

    public void setPeriode(String periode)
    {
        this.periode = periode;
    }

    public int getTotaalBedrijven()
    {
        return totaalBedrijven;
    }

    public void setTotaalBedrijven(int totaalBedrijven)
    {
        this.totaalBedrijven = totaalBedrijven;
    }

    public int getBedrijfsgrootte1WerkzaamPersoon()
    {
        return bedrijfsgrootte1WerkzaamPersoon;
    }

    public void setBedrijfsgrootte1WerkzaamPersoon(int bedrijfsgrootte1WerkzaamPersoon)
    {
        this.bedrijfsgrootte1WerkzaamPersoon = bedrijfsgrootte1WerkzaamPersoon;
    }

    public int getBedrijfsgrootte2WerkzaamPersoon()
    {
        return bedrijfsgrootte2WerkzaamPersoon;
    }

    public void setBedrijfsgrootte2WerkzaamPersoon(int bedrijfsgrootte2WerkzaamPersoon)
    {
        this.bedrijfsgrootte2WerkzaamPersoon = bedrijfsgrootte2WerkzaamPersoon;
    }

    public int getBedrijfsgrootte3tot5WerkzaamPersoon()
    {
        return bedrijfsgrootte3tot5WerkzaamPersoon;
    }

    public void setBedrijfsgrootte3tot5WerkzaamPersoon(int bedrijfsgrootte3tot5WerkzaamPersoon)
    {
        this.bedrijfsgrootte3tot5WerkzaamPersoon = bedrijfsgrootte3tot5WerkzaamPersoon;
    }

    public int getBedrijfsgrootte5tot10WerkzaamPersoon()
    {
        return bedrijfsgrootte5tot10WerkzaamPersoon;
    }

    public void setBedrijfsgrootte5tot10WerkzaamPersoon(int bedrijfsgrootte5tot10WerkzaamPersoon)
    {
        this.bedrijfsgrootte5tot10WerkzaamPersoon = bedrijfsgrootte5tot10WerkzaamPersoon;
    }

    public int getBedrijfsgrootte10tot20WerkzaamPersoon()
    {
        return bedrijfsgrootte10tot20WerkzaamPersoon;
    }

    public void setBedrijfsgrootte10tot20WerkzaamPersoon(int bedrijfsgrootte10tot20WerkzaamPersoon)
    {
        this.bedrijfsgrootte10tot20WerkzaamPersoon = bedrijfsgrootte10tot20WerkzaamPersoon;
    }

    public int getBedrijfsgrootte20tot50WerkzaamPersoon()
    {
        return bedrijfsgrootte20tot50WerkzaamPersoon;
    }

    public void setBedrijfsgrootte20tot50WerkzaamPersoon(int bedrijfsgrootte20tot50WerkzaamPersoon)
    {
        this.bedrijfsgrootte20tot50WerkzaamPersoon = bedrijfsgrootte20tot50WerkzaamPersoon;
    }

    public int getBedrijfsgrootte50tot100WerkzaamPersoon()
    {
        return bedrijfsgrootte50tot100WerkzaamPersoon;
    }

    public void setBedrijfsgrootte50tot100WerkzaamPersoon(int bedrijfsgrootte50tot100WerkzaamPersoon)
    {
        this.bedrijfsgrootte50tot100WerkzaamPersoon = bedrijfsgrootte50tot100WerkzaamPersoon;
    }

    public int getNatuurlijkPersoon()
    {
        return natuurlijkPersoon;
    }

    public void setNatuurlijkPersoon(int natuurlijkPersoon)
    {
        this.natuurlijkPersoon = natuurlijkPersoon;
    }

    public int getRechtsPersoon()
    {
        return rechtsPersoon;
    }

    public void setRechtsPersoon(int rechtsPersoon)
    {
        this.rechtsPersoon = rechtsPersoon;
    }
}
