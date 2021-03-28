package com.company.RESTAPI;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class RestapiApplication {

	public static void main(String[] args) {
		SpringApplication.run(RestapiApplication.class, args);
	}

<<<<<<< HEAD
	
=======
	//@GetMapping("/hello")
	//public String hello(@RequestParam(value = "name", defaultValue = "World") String name)
	//{
	//	return String.format("Hello %s!", name);
	//}

	@GetMapping("/restapi/v1/getperson")
	public Person getPerson()
	{
		return this.persoon;
	}

	@PostMapping
	@RequestMapping("restapi/v1/addperson")
	public void addPerson(@RequestBody Person person)
	{
		this.persoon = person;
	}

	@DeleteMapping("restapi/v1/deleteperson")
	public void deletePerson()
	{
		this.persoon = null;
	}
>>>>>>> parent of 90e84e2 (Revert "Added delete functionality")
}
