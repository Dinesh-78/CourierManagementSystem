package com.example.demo.controller;

import java.util.List;  

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.model.Admin;
import com.example.demo.model.User;
import com.example.demo.model.Booking;
import com.example.demo.service.AdminService;
import com.example.demo.service.UserService;

@org.springframework.stereotype.Controller
public class Controller {
	
	@Autowired
	private AdminService serv;
	
	@Autowired
	private UserService usrserv;
	
	
	@GetMapping("/")
	public String home() {
		return "index";
	}
	@GetMapping("/adminlogin")
	public ModelAndView adminlogin() {
		
		ModelAndView mv = new ModelAndView("adminlogin");
		return mv;
	}
	@GetMapping("/logout")
	public ModelAndView logout() {
		
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	@GetMapping("/admincontrol")
	public ModelAndView admincontrol() {
		
		ModelAndView mv = new ModelAndView("admincontrol");
		return mv;
	}
	@GetMapping("/viewusers")
	public ModelAndView viewusers() {
		
		ModelAndView mv = new ModelAndView("viewusers");
		List<User> usr = serv.viewallusers();
		mv.addObject("usr",usr);
		return mv;
	}
	@GetMapping("/userreg")
	public ModelAndView userreg() {
		ModelAndView mv = new ModelAndView("register","usr",new User());
		return mv;
	}
	@PostMapping("/adduser")
	public ModelAndView adduser(@ModelAttribute("usr") User user) {
		usrserv.adduser(user);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("register");
		mv.addObject("name","Register Successfully");
		return mv;
		
	}
	@GetMapping("/booking")
	public ModelAndView booking() {
		ModelAndView mv = new ModelAndView("booking");
		return mv;
		
	}
	@GetMapping("/about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("about");
		return mv;
		
	}
	@GetMapping("/pricing")
	public ModelAndView pricing() {
		ModelAndView mv = new ModelAndView("pricing");
		return mv;
		
	}
	
	@GetMapping("/userlogin")
	public ModelAndView userlogin() {
		
		ModelAndView mv = new ModelAndView("userlogin");
		return mv;
	}
	
	@PostMapping("/checkadmin")
	public ModelAndView checkadmin(HttpServletRequest request)
	{
		ModelAndView mv =  new ModelAndView();
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		Admin admin = serv.checkadmin(username, password);
		
		if(admin!=null)
		{
			
			mv.setViewName("admincontrol");
		}
		else
		{
			mv.setViewName("adminlogin");
			mv.addObject("error", "Login Failed");
		}
		return mv;
	}
	
	@PostMapping("/checklogin")
	public ModelAndView checklogin(HttpServletRequest request)
	{
		ModelAndView mv =  new ModelAndView();
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		User usr=usrserv.checklogin(id, password);
		
		if(usr!=null)
		{
			
			mv.setViewName("index");
			mv.addObject("name", id);
		}
		else
		{
			mv.setViewName("userlogin");
			mv.addObject("error", "Login Failed");
		}
		return mv;
	}
	
	@GetMapping("/sendcourier")
	public ModelAndView sendcourier() {
		ModelAndView mv = new ModelAndView("booking","cour",new Booking());
		return mv;
	}
	
	@PostMapping("/newcourier")
	public ModelAndView newcourier(@ModelAttribute("cour") Booking book) {
		usrserv.newcourier(book);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("booking");
		mv.addObject("name","Delivery Boy will pick Your Courier");
		return mv;
		
	}
	
	@GetMapping("/vieworders")
	public ModelAndView vieworders() {
		
		ModelAndView mv = new ModelAndView("vieworders");
		List<Booking> cour = serv.viewallorders();
		mv.addObject("cour",cour);
		return mv;
	}
}
