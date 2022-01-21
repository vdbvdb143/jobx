package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.company.CreateBatch;

public interface CreateBatchRepository extends JpaRepository<CreateBatch, Long> {

	CreateBatch findByName(String name);
	CreateBatch findById(long id);
	List<CreateBatch> findAll();

	List<CreateBatch> findByComName(String x);
	
}
