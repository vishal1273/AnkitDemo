package com.vishal.mvc.model;

import java.util.HashMap;
import java.util.Map;

public class Student {
	private Integer rollNumber;
	private String name;
	private String email;
	private String country;
	// this map is required for populating country dropdown list from javabean only getter is requried.
	private Map<String, String> countryOptions;


	public Student() {
		countryOptions = new HashMap<>();
		countryOptions.put("India", "India");
		countryOptions.put("France", "France");
		countryOptions.put("Germany", "Germany");
		countryOptions.put("Brazil", "Brazil");
		countryOptions.put("USA", "USA");
		countryOptions.put("China", "Chia");


	}

	public Integer getRollNumber() {
		return rollNumber;
	}
	public void setRollNumber(Integer rollNumber) {
		this.rollNumber = rollNumber;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public Map<String, String> getCountryOptions() {
		return countryOptions;
	}


}
