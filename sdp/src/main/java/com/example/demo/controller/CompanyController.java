package com.example.demo.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.company.Company;
import com.example.demo.company.CreateBatch;
import com.example.demo.repository.CompanyRepository;
import com.example.demo.repository.CreateBatchRepository;
import com.example.demo.service.CompanyService;
import com.example.demo.user.JobApplication;

@Controller
public class CompanyController {
	
	private Company temp;
	
	@Autowired
	private CompanyRepository comRepo;
	
	@Autowired
	private  CreateBatchRepository cbRepo;
	
	@Autowired
	private CompanyService comSe;
	
	@PostMapping("/companyLoginVerify")
	public String companyLoginVerify(@ModelAttribute("companyLogin") Company c,HttpSession session){
		boolean x=comSe.login(c.getCom_email(), c.getPassword());
		if(x) {
			session.setAttribute("user","true");
			session.setAttribute("role","recruiter");
			this.temp=comSe.details(c.getCom_email());
			return "redirect:/";
		}
		return "redirect:error";
	}

	@GetMapping("/com_home")
	public String companyHome(Model model){
		if(temp!=null) {
			model.addAttribute("details",temp.getCom_email());
			return "company_home";
		}
		else {
			model.addAttribute("details");
			return "redirect:com_login";
		}
	}
	
	@GetMapping("/com_logout")
	public String Logout(HttpSession session){
		session.invalidate();
		this.temp=null;
		return "redirect:/";
	}

	@GetMapping("/com_profile")
	public String companyProfile(Model model){
		if(temp!=null) {
			model.addAttribute("profile",temp);
			return "com_profile";
		}
		return "redirect:/";
	}
	@PostMapping("/com_updateProfile")
	public String updateProfile(@ModelAttribute("profile") Company c){
		if(temp!=null) {
			c.setId(temp.getId());
			comRepo.save(c);
			return "redirect:/";
		}
		return "redirect:/";
	}
	
	@PostMapping("/create_batch_submit")
	public String createbatchVerify(@ModelAttribute("cb") CreateBatch cb){
		boolean x=comSe.cbCheck(cb.getName());
		if(!x) {
			cb.setComName(temp.getCompanyname());
			cbRepo.save(cb);
			return "redirect:/";
		}
		return "redirect:error";
	}
	
	@GetMapping("/createbatch")
	public String createbatch(Model model){
		if(temp!=null) {
			model.addAttribute("cb",new CreateBatch());
			return "createbatch";
		}
		return "redirect:/";
	}
	
	@GetMapping("/display")
	public ModelAndView display(){
		ModelAndView m=new ModelAndView();
		if(temp!=null) {
			List<CreateBatch> cb=comSe.getBatchs(temp.getCompanyname());
			m.addObject("allBatches", cb);
			m.setViewName("company_jobApplications");
			return m;
		}
		m.setViewName("redirect:/");
		return m;
	}
	
	@PostMapping("/displayAll")
	public ModelAndView displayAll(String batch) {
		ModelAndView m=new ModelAndView();
		if(temp!=null) {
			List<JobApplication> li=comSe.getBatchDetails(batch);	
			System.out.println(temp.getCom_email());
			m.addObject("result", li);
			m.setViewName("company_displayAppplications");
			return m;
		}
		m.setViewName("redirect:/");
		return m;
		
	}

}
