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
	DBFaillissementen dbFaillissementen = new DBFaillissementen();
	DBBedrijven dbBedrijven = new DBBedrijven();
	DBInvesteringen dbInvesteringen = new DBInvesteringen();

	public static void main(String[] args)
	{
		SpringApplication.run(RestapiApplication.class, args);
	}

	///////////////////////////////////////
	// API commands voor tabel bedrijven //
	///////////////////////////////////////

	@GetMapping("/restapi/v1/bedrijven")
	public ArrayList<APIBedrijven> getBedrijven()
	{
		return dbBedrijven.allBedrijven();
	}

	@PostMapping
	@RequestMapping("restapi/v1/bedrijven")
	public void addBedrijf(@RequestBody APIBedrijven bedrijf)
	{
		dbBedrijven.addBedrijf(bedrijf);
	}

	@DeleteMapping("restapi/v1/bedrijven/{id}")
	public void deleteBedrijfOnID(@PathVariable("id") int id)
	{
		dbBedrijven.delBedrijf(id);
	}

	@PutMapping("restapi/v1/bedrijven")
	public void updateBedrijfOnID(@RequestBody APIBedrijven bedrijf)
	{
		dbBedrijven.putBedrijf(bedrijf);
	}

	/////////////////////////////////////////////
	// API commands voor tabel faillissementen //
	/////////////////////////////////////////////

	@GetMapping("/restapi/v1/faillissementen")
	public ArrayList<APIFaillissementen> getFaillissementen()
	{
		return dbFaillissementen.allFaillissementen();
	}

	@PostMapping
	@RequestMapping("restapi/v1/faillissementen")
	public void addFaillissement(@RequestBody APIFaillissementen faillissement)
	{
		dbFaillissementen.addFaillissement(faillissement);
	}

	@DeleteMapping("restapi/v1/faillissementen/{id}")
	public void deleteFaillissementenOnID(@PathVariable("id") int id)
	{
		dbFaillissementen.delFaillissement(id);
	}

	@PutMapping("restapi/v1/faillissementen")
	public void updateFaillissementOnID(@RequestBody APIFaillissementen faillissement)
	{
		dbFaillissementen.putFaillissementen(faillissement);
	}

	///////////////////////////////////////////
	// API commands voor tabel investeringen //
	///////////////////////////////////////////

	@GetMapping("/restapi/v1/investeringen")
	public ArrayList<APIInvesteringen> getInvesteringen()
	{
		return dbInvesteringen.allInvesteringen();
	}

	@PostMapping
	@RequestMapping("restapi/v1/investeringen")
	public void addInvestering(@RequestBody APIInvesteringen investering)
	{
		dbInvesteringen.addInvestering(investering);
	}

	@DeleteMapping("restapi/v1/investeringen/{id}")
	public void deleteInvesteringOnID(@PathVariable("id") int id)
	{
		dbInvesteringen.delInvestering(id);
	}

	@PutMapping("restapi/v1/investeringen")
	public void updateInvesteringOnID(@RequestBody APIInvesteringen investering)
	{
		dbInvesteringen.putInvestering(investering);
	}
}
