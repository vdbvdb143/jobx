package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.company.Company;
import com.example.demo.repository.CompanyRepository;
import com.example.demo.repository.UserRepository;
import com.example.demo.service.CompanyService;
import com.example.demo.service.UserService;
import com.example.demo.user.User;

@Controller
public class HomeController {
	@Autowired
	private UserService userSe;
	
	@Autowired
	private CompanyRepository comRepo;
	
	@Autowired
	private UserRepository userRepo;
	
	@Autowired
	private CompanyService comSe;
	
	
	@GetMapping("/")
	public String home(){
		return "index";
	}
	
	@GetMapping("/contactUs")
	public String contactus() {
		return "contactUs";
	}
	
	
	@GetMapping("/com_register")
	public String companyRegister(Model model){
		model.addAttribute("companyRegister",new Company());
		return "company_register";
	}
	
	@GetMapping("/com_login")
	public String companyLogin(Model model){
		model.addAttribute("companyLogin",new Company());
		return "company_login";
	}
	
	
	@PostMapping("/companyRegisterVerify")
	public String companyRegisterVerify(@ModelAttribute("companyRegister") Company c){
		System.out.println(c.getCom_email());
		boolean x=comSe.register(c.getCom_email());
		if(!x) {
			comRepo.save(c);
			return "redirect:com_login";
		}
		return "redirect:error";
	}
	
//	<----------------------------------------------------------------->
	
	@GetMapping("/user_register")
	public String userRegister(Model model){
		model.addAttribute("userRegister",new User());
		return "user_register";
	}
	
	@GetMapping("/user_login")
	public String userLogin(Model model){
		model.addAttribute("userLogin",new User());
		return "user_login";
	}
	@PostMapping("/userRegisterVerify")
	public String userRegisterVerify(@ModelAttribute("userRegisterVerify") User c){
		boolean x=userSe.register(c.getEmail());
		if(!x) {
			userRepo.save(c);
			return "redirect:user_login";
		}
		return "redirect:error";
	}
	
	
}
