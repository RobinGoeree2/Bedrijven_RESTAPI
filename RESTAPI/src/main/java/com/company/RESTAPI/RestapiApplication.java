package com.company.RESTAPI;

import Database.DBFaillissementen;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@SpringBootApplication
@RestController
public class RestapiApplication
{
	DBFaillissementen dbFaillissementen = new DBFaillissementen();

	public static void main(String[] args)
	{
		SpringApplication.run(RestapiApplication.class, args);
	}

	@GetMapping("/restapi/v1/getOverzichtFaillissementen")
	public ArrayList<APIFaillissementen> getOverzichtFaillissementen()
	{
		return dbFaillissementen.allFaillissementen();
	}


	@PostMapping
	@RequestMapping("restapi/v1/addFaillissement")
	public void addPerson(@RequestBody APIFaillissementen faillissement)
	{
		dbFaillissementen.addFaillissement(faillissement);
	}

	/*
	@DeleteMapping("restapi/v1/deleteperson")
	public void deletePerson()
	{

	}
	 */
}
