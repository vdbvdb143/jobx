package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.company.CreateBatch;
import com.example.demo.repository.CreateBatchRepository;
import com.example.demo.repository.JobApplicationRepository;
import com.example.demo.service.UserJobService;
import com.example.demo.service.UserService;
import com.example.demo.user.JobApplication;
import com.example.demo.user.User;

@Controller
public class UserJobSearch {
	private long id=-1;
	private User u;
	
	@Autowired
	private UserController uc;
	
	@Autowired
	private UserService us;
	
	@Autowired
	private UserJobService ubs;
	
	@Autowired
	private JobApplicationRepository jar;
	@Autowired
	private CreateBatchRepository cbRepo;
	
	
	@GetMapping("/jobsearch")
	public ModelAndView  jobSearch(){
		ModelAndView m=new ModelAndView();
		u=uc.getU();
		if(u!=null) {
			List<CreateBatch> cb=us.jobSearch();
			m.addObject("js",cb);
			m.setViewName("user_jobsearch");
			return m;
		}
		m.setViewName("redirect:user_login");
		return m;
	}
	
	
	@PostMapping("/apply")
	public String applyJob(long Id){
		this.id=Id;
		return "redirect:apJob";
	}
	

	@GetMapping("/apJob")
	public String applyJob(Model m){
		if(id!=-1 && uc.getU()!=null) {
			CreateBatch cb=ubs.Details(id);
			m.addAttribute("jobForm", new JobApplication());
			return "applyJob";
		}
		
		return "redirect:user_login";
	}
	
	@PostMapping("/submitApply")
	public String submitJob(@ModelAttribute("jobForm") JobApplication ja){
		List<JobApplication> li= ubs.getstatus(u.getEmail());
		boolean t=true;
		for(JobApplication x:li) {
			if(id == x.getCb_id() && x.getEmail().equals(u.getEmail()) ) {
				t=false;
				break;
			}
		}
		
		if(u!=null) {
			CreateBatch x=ubs.lessCount((id));
			if(x.getCount()>0 &&  t==true) {
			ja.setEmail(u.getEmail());
			ja.setCb_id(id);
			ja.setStatus("pending");
			x.setCount(x.getCount()-1);
			jar.save(ja);
			cbRepo.save(x);
			return "redirect:/";
			}
			else {
				return "redirect:/";
			}
		}
		return "redirect:user_login";
	}
	
	@GetMapping("/status")
	public ModelAndView status(){
		u=uc.getU();
		ModelAndView m=new ModelAndView();
		if(u!=null) {
			System.out.println(u.getEmail());
			List<JobApplication> jb= ubs.getstatus(u.getEmail());
			List<CreateBatch> cb=ubs.getcbstatus(jb);
			
			System.out.println(jb.size());
			System.out.println(cb.size());
			
			
 			m.setViewName("viewstatus");
			m.addObject("jbstatus", jb);
			m.addObject("cbstatus", cb);
			return m;
		}
		System.out.println("*");
		m.setViewName("redirect:user_login");	
		m.addObject("userLogin",new User());
		return m;
	}
	
	
}
