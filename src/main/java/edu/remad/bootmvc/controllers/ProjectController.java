package edu.remad.bootmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/project")
public class ProjectController {

	@RequestMapping(value = "/add", method=RequestMethod.GET)
	public String addProject() {
		System.out.println("invoking add project");
		
		return "project_add";
	}
	
	@RequestMapping(value = "/save", method=RequestMethod.POST)
	public String saveProject() {
		System.out.println("invoking save project");
		
		return "project_add";
	}
	
	@RequestMapping(value = "/add", method=RequestMethod.POST, params= {"type=multi"})
	public String multiYearProject() {
		System.out.println("invoking multiYear project");
		
		return "project_add";
	}
	
	@RequestMapping(value = "/add", method=RequestMethod.POST, params= {"type=multi","special"})
	public String specialProject() {
		System.out.println("invoking special project");
		
		return "project_add";
	}
}
