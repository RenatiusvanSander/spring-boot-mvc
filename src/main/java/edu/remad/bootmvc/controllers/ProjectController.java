package edu.remad.bootmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/project")
public class ProjectController {

	@GetMapping("/add")
	public String addProject() {
		System.out.println("invoking add project");
		return "project_add";
	}
}
