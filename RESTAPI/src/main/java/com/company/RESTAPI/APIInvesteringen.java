package com.company.RESTAPI;

import com.fasterxml.jackson.annotation.JsonProperty;

public class APIInvesteringen
{
    private int overzichtID;
    private String branche;
    private String periode;
    private double investeringMaterieleVasteActiva;

    public APIInvesteringen(@JsonProperty("overzichtID") int overzichtID,
                            @JsonProperty("branche") String branche,
                            @JsonProperty("periode")String periode,
                            @JsonProperty("investeringen_in_materiële_vaste_activa") double investeringMaterieleVasteActiva)
    {
        this.overzichtID = overzichtID;
        this.branche = branche;
        this.periode = periode;
        this.investeringMaterieleVasteActiva = investeringMaterieleVasteActiva;
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

    public double getInvesteringMaterieleVasteActiva()
    {
        return investeringMaterieleVasteActiva;
    }

    public void setInvesteringMaterieleVasteActiva(double investeringMaterieleVasteActiva)
    {
        this.investeringMaterieleVasteActiva = investeringMaterieleVasteActiva;
    }
}
