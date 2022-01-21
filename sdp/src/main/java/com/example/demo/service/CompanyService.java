package com.example.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.company.Company;
import com.example.demo.company.CreateBatch;
import com.example.demo.repository.CompanyRepository;
import com.example.demo.repository.CreateBatchRepository;
import com.example.demo.repository.JobApplicationRepository;
import com.example.demo.user.JobApplication;

@Service
public class CompanyService {
	
	@Autowired
	private  CompanyRepository comRepo;
	
	@Autowired
	private  CreateBatchRepository cbRepo;
	
	@Autowired
	private  JobApplicationRepository jar ;
	
	
	
	
	public boolean login(String email,String password) {
		
		Company c=comRepo.findByComemailAndPassword(email,password);
		if(c==null)
			return false;
		return true;
	}
	public boolean register(String email) {
			
		Company c=comRepo.findByComemail(email);
		if(c==null)
			return false;
		return true;
	}
	public Company details(String email) {
		
		Company c=comRepo.findByComemail(email);
		return c;
	}
	
	
	public boolean cbCheck(String name) {
		
		CreateBatch c=cbRepo.findByName(name);
		if(c==null)
			return false;
		return true;
	}
	
	public List getBatchs(String x) {
		List<CreateBatch> li=cbRepo.findByComName(x);
		return li;
	}
	
	public List getBatchDetails(String x) {
		CreateBatch cbid=cbRepo.findByName(x);
		List<JobApplication> li=jar.findByCbid(cbid.getId());
		return li;
	}
	
	
	
}
