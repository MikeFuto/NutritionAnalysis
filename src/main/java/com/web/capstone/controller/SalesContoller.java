package com.web.capstone.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class SalesContoller {

	@GetMapping("getindex")
	//@ResponseBody
	String getIndexpage(Model model) {
		model.addAttribute("msg", "Thios is fro anothero controller");
		return "index";
		
	}
}
