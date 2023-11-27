package edu.remad.bootmvc.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.remad.bootmvc.data.entities.Project;

@Controller
@RequestMapping("/home")
public class MainController {

	@RequestMapping("/")
	public String greeting(Model model) {
		
		Project project = new Project();
		project.setName("First project name");
		project.setSponsor("Nasa");
		project.setDescription("This is a simple project sponsored by Nasa");
		
		model.addAttribute("currentProject", project);
		
		return "home";
	}
}
