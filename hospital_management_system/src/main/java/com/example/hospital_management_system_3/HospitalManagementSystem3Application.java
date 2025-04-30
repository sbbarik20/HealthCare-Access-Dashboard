package com.example.hospital_management_system_3;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class HospitalManagementSystem3Application {

	public static void main(String[] args) {
		SpringApplication.run(HospitalManagementSystem3Application.class, args);
	}

	@Autowired
	HibernateRepo hbtRepo;

	@GetMapping("/setHibernate")
	public String setHibernate() {
		Hibernate hbt = new Hibernate();
		hbt.setId(1);
		hbt.setName("Om");
		hbt.setEmail("rajputom1111@gmail.com");
		hbt.setPassword("12345");
		hbt.setRole("User");
		hbt.setStatus(1);
		hbtRepo.save(hbt);
		return "Hibernate is set";
	}

	@GetMapping("/getById")
	public Hibernate getById(@RequestParam Integer id) {
		return hbtRepo.findById(id).get();
	}

	// https://localhost:8081/getById?id=1

	@GetMapping("/findAll")
	public List<Hibernate> findAll() {
		return hbtRepo.findAll();
	}

	@GetMapping("/updateById")
	public Hibernate updateById(@RequestParam Integer id){
		Hibernate hbt = hbtRepo.findById(id).get();
		hbt.setEmail("om@gmail.com");
		
		return hbtRepo.save(hbt);
	}
	// http://localhost:8081/updateById?id=1

	
	@GetMapping("/deleteById")
	public String deleteById(@RequestParam Integer id){
		hbtRepo.deleteById(id);
		return "Deleted" + id;
	}

	//http://localhost:8081/deleteById?id=1


	@GetMapping("/deleteAll")
	public String deleteAll(){
		hbtRepo.deleteAll();
		return "Deleted";
	}

	// http://localhost:8081/updateById?id=1
}