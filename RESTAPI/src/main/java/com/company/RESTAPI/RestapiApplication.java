package com.company.RESTAPI;

import Database.DBBedrijven;
import Database.DBFaillissementen;
import Database.DBInvesteringen;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@SpringBootApplication
@RestController
public class RestapiApplication
{
	private DBFaillissementen dbFaillissementen = new DBFaillissementen();
	private DBBedrijven dbBedrijven = new DBBedrijven();
	private DBInvesteringen dbInvesteringen = new DBInvesteringen();

	public static void main(String[] args)
	{
		SpringApplication.run(RestapiApplication.class, args);
	}

	////////////////////////////////////////////////////
	// API commands voor financieel branche overzicht //
	////////////////////////////////////////////////////

	/**
	 * Returnt een overzicht van alle financiele gegevens van de branches in de database
	 * @return
	 */
	@GetMapping("/restapi/v1/financieelBrancheOverzicht")
	public ArrayList<APIFinancieelBrancheOverzicht> getfinancieelBrancheOverzichten()
	{
		RestapiApplication restapiApplication = new RestapiApplication();
		ArrayList<APIFinancieelBrancheOverzicht> financieelBrancheOverzichten = new ArrayList<>();
		String branche = "";
		APIBedrijven apiBedrijven = null;
		APIInvesteringen apiInvesteringen = null;
		APIFaillissementen apiFaillissementen = null;

		//Ophalen van alle gegevens over bedrijfs branches
		//Limiet van 0..28 omdat bij een dynamische berekening de foutcode van sql 'too many connections' naar voren komt
		for (int i = 0; i < 28; i++)
		{
			financieelBrancheOverzichten.add(new APIFinancieelBrancheOverzicht(restapiApplication.getBedrijven().get(i).getOverzichtID(), restapiApplication.getBedrijven().get(i).getBranche(), restapiApplication.getBedrijven().get(i), restapiApplication.getInvesteringen().get(i), restapiApplication.getFaillissementen().get(i)));

			/*
			//Probeersel om er voor te zorgen dat elk object bestaat uit dezelfde branche, sql foutmelding too many connections

			if(restapiApplication.getBedrijven().get(i).getBranche() != branche)
			{
				branche = restapiApplication.getBedrijven().get(i).getBranche();
			}

			apiBedrijven = restapiApplication.getBedrijven().get(i);

			for (int j = 0; j < restapiApplication.getInvesteringen().size(); j++)
			{
				if(restapiApplication.getInvesteringen().get(j).getBranche().equals(branche))
				{
					apiInvesteringen = restapiApplication.getInvesteringen().get(j);
				}
			}

			for (int j = 0; j < restapiApplication.getFaillissementen().size(); j++)
			{
				if(restapiApplication.getFaillissementen().get(j).getBranche().equals(branche))
				{
					apiFaillissementen = restapiApplication.getFaillissementen().get(j);
				}
			}

			financieelBrancheOverzichten.add(new APIFinancieelBrancheOverzicht(restapiApplication.getBedrijven().get(i).getOverzichtID(), restapiApplication.getBedrijven().get(i).getBranche(),
											restapiApplication.getBedrijven().get(i).getPeriode(), restapiApplication.getBedrijven().get(i).getTotaalBedrijven(), restapiApplication.getBedrijven().get(i).getBedrijfsgrootte1WerkzaamPersoon(),
											restapiApplication.getBedrijven().get(i).getBedrijfsgrootte2WerkzaamPersoon(), restapiApplication.getBedrijven().get(1).getBedrijfsgrootte3tot5WerkzaamPersoon(),
											restapiApplication.getBedrijven().get(i).getBedrijfsgrootte5tot10WerkzaamPersoon(), restapiApplication.getBedrijven().get(i).getBedrijfsgrootte10tot20WerkzaamPersoon(),
											restapiApplication.getBedrijven().get(i).getBedrijfsgrootte20tot50WerkzaamPersoon(), restapiApplication.getBedrijven().get(i).getBedrijfsgrootte50tot100WerkzaamPersoon(),
											restapiApplication.getBedrijven().get(i).getNatuurlijkPersoon(), restapiApplication.getBedrijven().get(i).getRechtsPersoon(), restapiApplication.getInvesteringen().get(i).getInvesteringMaterieleVasteActiva(),
											restapiApplication.getFaillissementen().get(i).getTypeGefailleerd(), restapiApplication.getFaillissementen().get(i).getUitgesprokenFaillissementen()));

			financieelBrancheOverzichten.add(new APIFinancieelBrancheOverzicht(apiBedrijven.getOverzichtID(), apiBedrijven.getBranche(), apiBedrijven.getPeriode(), apiBedrijven.getTotaalBedrijven(), apiBedrijven.getBedrijfsgrootte1WerkzaamPersoon(), apiBedrijven.getBedrijfsgrootte2WerkzaamPersoon(), apiBedrijven.getBedrijfsgrootte3tot5WerkzaamPersoon(), apiBedrijven.getBedrijfsgrootte5tot10WerkzaamPersoon(), apiBedrijven.getBedrijfsgrootte10tot20WerkzaamPersoon(), apiBedrijven.getBedrijfsgrootte20tot50WerkzaamPersoon(), apiBedrijven.getBedrijfsgrootte50tot100WerkzaamPersoon(), apiBedrijven.getNatuurlijkPersoon(), apiBedrijven.getRechtsPersoon(), apiInvesteringen.getPeriode(), apiInvesteringen.getInvesteringMaterieleVasteActiva(), apiFaillissementen.getPeriode(), apiFaillissementen.getTypeGefailleerd(), apiFaillissementen.getUitgesprokenFaillissementen()));
			*/
		}
		return financieelBrancheOverzichten;
	}

	///////////////////////////////////////
	// API commands voor tabel bedrijven //
	///////////////////////////////////////

	/**
	 * GET alle gegevens van de bedrijven
	 * @return
	 */
	@GetMapping("/restapi/v1/bedrijven")
	public ArrayList<APIBedrijven> getBedrijven()
	{
		return dbBedrijven.allBedrijven();
	}

	/**
	 * POST alle gegevens van branche dat is meegegeven
	 * @param bedrijf gegevens van de branche
	 */
	@PostMapping
	@RequestMapping("restapi/v1/bedrijven")
	public void addBedrijf(@RequestBody APIBedrijven bedrijf)
	{
		dbBedrijven.addBedrijf(bedrijf);
	}

	/**
	 * DELETE alle gegevens van de branche op een specifieke ID
	 * @param id specifieke ID waarop verwijderd moet worden
	 */
	@DeleteMapping("restapi/v1/bedrijven/{id}")
	public void deleteBedrijfOnID(@PathVariable("id") int id)
	{
		dbBedrijven.delBedrijf(id);
	}

	/**
	 * PUT de gegevens van de branche op een specifieke ID
	 * @param bedrijf nieuwe gegevens van de branche
	 */
	@PutMapping("restapi/v1/bedrijven")
	public void updateBedrijfOnID(@RequestBody APIBedrijven bedrijf)
	{
		dbBedrijven.putBedrijf(bedrijf);
	}

	/////////////////////////////////////////////
	// API commands voor tabel faillissementen //
	/////////////////////////////////////////////

	/**
	 * GET alle gegevens van de faillissementen
	 * @return
	 */
	@GetMapping("/restapi/v1/faillissementen")
	public ArrayList<APIFaillissementen> getFaillissementen()
	{
		return dbFaillissementen.allFaillissementen();
	}

	/**
	 * POST alle gegevens van faillissement dat is meegegeven
	 * @param faillissement gegevens van de faillissement
	 */
	@PostMapping
	@RequestMapping("restapi/v1/faillissementen")
	public void addFaillissement(@RequestBody APIFaillissementen faillissement)
	{
		dbFaillissementen.addFaillissement(faillissement);
	}

	/**
	 * DELETE alle gegevens van het faillissement op een specifieke ID
	 * @param id specifieke ID waarop verwijderd moet worden
	 */
	@DeleteMapping("restapi/v1/faillissementen/{id}")
	public void deleteFaillissementenOnID(@PathVariable("id") int id)
	{
		dbFaillissementen.delFaillissement(id);
	}

	/**
	 * PUT de gegevens van het faillissement op een specifieke ID
	 * @param faillissement nieuwe gegevens van het faillissement
	 */
	@PutMapping("restapi/v1/faillissementen")
	public void updateFaillissementOnID(@RequestBody APIFaillissementen faillissement)
	{
		dbFaillissementen.putFaillissementen(faillissement);
	}

	///////////////////////////////////////////
	// API commands voor tabel investeringen //
	///////////////////////////////////////////

	/**
	 * GET alle gegevens van de investeringen
	 * @return
	 */
	@GetMapping("/restapi/v1/investeringen")
	public ArrayList<APIInvesteringen> getInvesteringen()
	{
		return dbInvesteringen.allInvesteringen();
	}

	/**
	 * POST alle gegevens van de investering dat is meegegeven
	 * @param investering gegevens van de investering
	 */
	@PostMapping
	@RequestMapping("restapi/v1/investeringen")
	public void addInvestering(@RequestBody APIInvesteringen investering)
	{
		dbInvesteringen.addInvestering(investering);
	}

	/**
	 * DELETE alle gegevens van de investering op een specifieke ID
	 * @param id specifieke ID waarop verwijderd moet worden
	 */
	@DeleteMapping("restapi/v1/investeringen/{id}")
	public void deleteInvesteringOnID(@PathVariable("id") int id)
	{
		dbInvesteringen.delInvestering(id);
	}

	/**
	 * PUT de gegevens van de investering op een specifieke ID
	 * @param investering nieuwe gegevens van de investering
	 */
	@PutMapping("restapi/v1/investeringen")
	public void updateInvesteringOnID(@RequestBody APIInvesteringen investering)
	{
		dbInvesteringen.putInvestering(investering);
	}
}
