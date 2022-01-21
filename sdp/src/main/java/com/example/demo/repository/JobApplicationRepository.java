package com.example.demo.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.company.CreateBatch;
import com.example.demo.user.JobApplication;

import com.example.demo.user.JobApplication;

public interface JobApplicationRepository extends JpaRepository<JobApplication, Long> {

	List<JobApplication> findByCbid(long id);

	List<JobApplication> findByEmail(String email);

}
