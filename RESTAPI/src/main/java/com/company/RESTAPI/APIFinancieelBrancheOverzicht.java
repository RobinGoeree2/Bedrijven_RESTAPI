package com.company.RESTAPI;

import com.fasterxml.jackson.annotation.JsonProperty;

public class APIFinancieelBrancheOverzicht
{
    private int overzichtID;
    private String branche;
    private APIBedrijven apiBedrijven;
    private APIInvesteringen apiInvesteringen;
    private APIFaillissementen apiFaillissementen;

    public APIFinancieelBrancheOverzicht(@JsonProperty("overzichtID") int overzichtID,
                                         @JsonProperty("branche") String branche,
                                         @JsonProperty("bedrijven") APIBedrijven apiBedrijven,
                                         @JsonProperty("investeringen") APIInvesteringen apiInvesteringen,
                                         @JsonProperty("faillissementen") APIFaillissementen apiFaillissementen) {
        this.overzichtID = overzichtID;
        this.branche = branche;
        this.apiBedrijven = apiBedrijven;
        this.apiInvesteringen = apiInvesteringen;
        this.apiFaillissementen = apiFaillissementen;
    }

    public int getOverzichtID() {
        return overzichtID;
    }

    public void setOverzichtID(int overzichtID) {
        this.overzichtID = overzichtID;
    }

    public String getBranche() {
        return branche;
    }

    public void setBranche(String branche) {
        this.branche = branche;
    }

    public APIBedrijven getApiBedrijven() {
        return apiBedrijven;
    }

    public void setApiBedrijven(APIBedrijven apiBedrijven) {
        this.apiBedrijven = apiBedrijven;
    }

    public APIInvesteringen getApiInvesteringen() {
        return apiInvesteringen;
    }

    public void setApiInvesteringen(APIInvesteringen apiInvesteringen) {
        this.apiInvesteringen = apiInvesteringen;
    }

    public APIFaillissementen getApiFaillissementen() {
        return apiFaillissementen;
    }

    public void setApiFaillissementen(APIFaillissementen apiFaillissementen) {
        this.apiFaillissementen = apiFaillissementen;
    }
}
