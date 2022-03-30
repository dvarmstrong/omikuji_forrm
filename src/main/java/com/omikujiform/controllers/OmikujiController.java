package com.omikujiform.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OmikujiController {
	
	@GetMapping("/")
	public String index() {
		return "index.jsp";
	}
	
	
	@GetMapping("/omikuji")
	public String omikuji() {
		return "index.jsp";
	}
	
	@GetMapping("/omikuji/show")
	public String show(HttpSession session, Model model) {
		String results = (String) session.getAttribute("results");
		model.addAttribute("results", results);
		
		return "showOmiKuji.jsp";
		
	}
	
	@PostMapping("/info") 
	public String info(
			@RequestParam(value="numbers") Integer numbers,
			@RequestParam(value="city") String city,
			@RequestParam(value="person") String person,
			@RequestParam(value="hobby") String hobby,
			@RequestParam(value="thing") String thing,
			@RequestParam(value="comment") String comment,
			HttpSession session) {
		String results = String.format("In %s years you will live in %s with %s as your roomate, %s.The next time you see a %s, you will have good luck. Also, %s.", numbers, city, person,hobby,thing,comment);
		
		session.setAttribute("results", results);
		
		return "redirect:/omikuji/show";
	}
			
	
	

}
