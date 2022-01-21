package com.example.demo.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.demo.repository.UserRepository;
import com.example.demo.service.UserService;
import com.example.demo.user.User;

@Controller
public class UserController {
	
	public User getU() {
		return u;
	}

	public void setU(User u) {
		this.u = u;
	}
	@Autowired
	private UserRepository userRepo;
	
	@Autowired
	private UserService userSe;
	
	private User u;
	
	@PostMapping("/userLoginVerify")
	public String companyLoginVerify(@ModelAttribute("userLogin") User c,HttpSession session ){

		boolean x=userSe.login(c.getEmail(), c.getPassword());
//		System.out.println(x);
		if(x) {
			this.u=userSe.details(c.getEmail());
			session.setAttribute("user","true");
			session.setAttribute("role","student");
			return "redirect:/";
		}
		return "redirect:error";
	}
	
	@GetMapping("/user_home")
	public String userHome(Model model){
		if(u!=null) {
			model.addAttribute("details", u.getEmail());
			return "user_home";
		}
		else {
			model.addAttribute("details");
			return "redirect:user_login";
		}
	}
	
	@GetMapping("/user_logout")
	public String Logout(HttpSession session){
		session.invalidate();
		this.u=null;
		return "redirect:/";
	}
	
	@GetMapping("/user_profile")
	public String companyProfile(Model model){
		if(u!=null) {
			model.addAttribute("profile",u);
			return "user_profile";
		}
		return "redirect:user_home";
	}
	@PostMapping("/user_updateProfile")
	public String updateProfile(@ModelAttribute("profile") User c){
		if(u!=null) {
			c.setId(u.getId());
			userRepo.save(c);
//			System.out.println(c.getId());
			return "redirect:user_home";
		}
		return "redirect:user_home";
	}
	
	
}
