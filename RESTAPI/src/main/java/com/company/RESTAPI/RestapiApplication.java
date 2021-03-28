package com.company.RESTAPI;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@SpringBootApplication
@RestController
public class RestapiApplication
{
	private Person persoon;

	public static void main(String[] args) {
		SpringApplication.run(RestapiApplication.class, args);
	}

	@GetMapping("/hello")
	public String hello(@RequestParam(value = "name", defaultValue = "World") String name)
	{
		return String.format("Hello %s!", name);
	}

	@PostMapping
	@RequestMapping("restapi/v1/addperson")
	public void addPerson(@RequestBody Person person)
	{
		this.persoon = person;
		System.out.print(person.getName());
		System.out.print(person.getAge());
	}
}
