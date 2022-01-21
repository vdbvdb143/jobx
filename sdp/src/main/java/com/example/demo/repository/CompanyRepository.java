package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.company.Company;

public interface CompanyRepository extends JpaRepository<Company, Long> {

	Company findByComemailAndPassword(String email,String password);

	Company findByComemail(String email);
}
