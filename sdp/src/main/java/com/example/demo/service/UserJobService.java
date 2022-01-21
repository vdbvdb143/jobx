package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.company.CreateBatch;
import com.example.demo.repository.CreateBatchRepository;
import com.example.demo.repository.JobApplicationRepository;
import com.example.demo.user.JobApplication;

@Service
public class UserJobService {
	
	@Autowired
	private CreateBatchRepository cbRepo;
	
	
	
	
	@Autowired
	private JobApplicationRepository jar;

	
	public CreateBatch Details(long id) {
		CreateBatch x=cbRepo.findById(id);
		return x;
	}


	public CreateBatch lessCount(long id) {
		CreateBatch x=cbRepo.findById(id);
		return x;
		
	}


	public List<JobApplication> getstatus(String email) {
		List<JobApplication>li=jar.findByEmail(email);
		return li;
	}


	public List<CreateBatch> getcbstatus(List<JobApplication> li) {
		List<CreateBatch> cb = new ArrayList();
		CreateBatch x;
		for(JobApplication y:li) {
			 x=cbRepo.findById(y.getCb_id());
			cb.add(x);
		}
		return cb;
	}
	
	

//	public boolean getconfirm(long id) {
//		System.out.println(id);
//		
//		long x=jar.findBycbid(id);
//		if(x>0)
//			return false;
//		return true;
//	}

}
