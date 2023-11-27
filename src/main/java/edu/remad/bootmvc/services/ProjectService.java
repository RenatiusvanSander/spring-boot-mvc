package edu.remad.bootmvc.services;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.stereotype.Service;

import edu.remad.bootmvc.data.entities.Project;

@Service
public class ProjectService {
	
	private List<Project> projects = new LinkedList<>();
	
	public ProjectService() {
		Project javaProject = createProject("Java project","this is a Java Project");
		Project javascriptProject = createProject("JavaScript Project", "This is a JavaScript Project");
		Project htmlProject = createProject("HTML Project", "This is an HTML project");
		
		this.projects.addAll(Arrays.asList(new Project[] {javaProject, javascriptProject, htmlProject}));
	}

	private Project createProject(String projectName, String projectDescription) {
		Project project = new Project();
		project.setName(projectName);
		project.setDescription(projectDescription);
		
		return project;
	}
	
	public List<Project> findAll() {
		return projects;
	}
	
	public Project find(Long projectId) {
		return this.projects.stream().filter(p -> {
			return p.getProjectId().equals(projectId);
		}).collect(Collectors.toList()).get(0);
	}
	
	
}
