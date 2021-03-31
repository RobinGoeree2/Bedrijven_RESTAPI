package com.company.RESTAPI;

import com.fasterxml.jackson.annotation.JsonProperty;

public class APIFaillissementen
{
    private int overzichtID;
    private String typeGefailleerd;
    private String branche;
    private String periode;
    private int uitgesprokenFaillissementen;

    public APIFaillissementen(@JsonProperty("overzichtID") int overzichtID,
                              @JsonProperty("typeGefailleerd") String typeGefailleerd,
                              @JsonProperty("branche") String branche,
                              @JsonProperty("periode") String periode,
                              @JsonProperty("uitgesprokenFaillissementen") int uitgesprokenFaillissementen)
    {
        this.overzichtID = overzichtID;
        this.typeGefailleerd = typeGefailleerd;
        this.branche = branche;
        this.periode = periode;
        this.uitgesprokenFaillissementen = uitgesprokenFaillissementen;
    }

    public int getOverzichtID()
    {
        return overzichtID;
    }

    public void setOverzichtID(int overzichtID)
    {
        this.overzichtID = overzichtID;
    }

    public String getTypeGefailleerd()
    {
        return typeGefailleerd;
    }

    public void setTypeGefailleerd(String typeGefailleerd)
    {
        this.typeGefailleerd = typeGefailleerd;
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

    public int getUitgesprokenFaillissementen()
    {
        return uitgesprokenFaillissementen;
    }

    public void setUitgesprokenFaillissementen(int uitgesprokenFaillissementen)
    {
        this.uitgesprokenFaillissementen = uitgesprokenFaillissementen;
    }
}
