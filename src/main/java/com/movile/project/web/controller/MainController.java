package com.movile.project.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/")
public class MainController {

	@RequestMapping(value = "", method = { RequestMethod.GET })
	public String root(ModelMap modelMap) {
		return "redirect:employee";
	}

	@RequestMapping(value = "index", method = { RequestMethod.GET })
	public String index(ModelMap modelMap) {
		return "redirect:employee";
	}
	
	@RequestMapping(value = "about", method = { RequestMethod.GET })
	public String about() {
		return "about_page";
	}
}
