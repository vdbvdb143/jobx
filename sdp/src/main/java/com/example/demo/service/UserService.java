package com.example.demo.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.company.CreateBatch;
import com.example.demo.repository.CreateBatchRepository;
import com.example.demo.repository.UserRepository;
import com.example.demo.user.User;

@Service
public class UserService {

	@Autowired
	private UserRepository userRepo;
	
	@Autowired
	private CreateBatchRepository cbRepo;
	
	public boolean login(String email,String password) {
		
		User c=userRepo.findByEmailAndPassword(email,password);
		System.out.println(c);
		if(c==null)
			return false;
		return true;
	}
	public boolean register(String email) {
			
		User c=userRepo.findByEmail(email);
		if(c==null)
			return false;
		return true;
	}
	public User details(String email) {
		
		User c=userRepo.findByEmail(email);
		return c;
	}
	
	
	public List jobSearch() {
		List<CreateBatch> li=new ArrayList<>();
		li=cbRepo.findAll();
		return li;
	}
}
