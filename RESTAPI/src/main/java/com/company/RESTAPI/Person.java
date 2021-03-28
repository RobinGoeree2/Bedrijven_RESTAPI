package com.company.RESTAPI;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Person
{
    private String name;
    private int age;

    public Person(@JsonProperty("name") String name,
                  @JsonProperty("age") int age)
    {
        this.name = name;
        this.age = age;
    }

    public String getName()
    {
        return name;
    }

    public void setName(String name)
    {
        this.name = name;
    }

    public int getAge()
    {
        return age;
    }

    public void setAge(int age)
    {
        this.age = age;
    }
}