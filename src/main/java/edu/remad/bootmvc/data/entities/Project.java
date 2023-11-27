package edu.remad.bootmvc.data.entities;

import java.math.BigDecimal;

public class Project {

	private Long projectId;
	
	private String name;
	private String description;
	private String sponsor;
	private BigDecimal authorizedHours;
	private BigDecimal authorizedFunds;
	private String year;
	
	public Long getProjectId() {
		return projectId;
	}
	public void setProjectId(Long projectId) {
		this.projectId = projectId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getSponsor() {
		return sponsor;
	}
	public void setSponsor(String sponsor) {
		this.sponsor = sponsor;
	}
	public BigDecimal getAuthorizedHours() {
		return authorizedHours;
	}
	public void setAuthorizedHours(BigDecimal authorizedHours) {
		this.authorizedHours = authorizedHours;
	}
	public BigDecimal getAuthorizedFunds() {
		return authorizedFunds;
	}
	public void setAuthorizedFunds(BigDecimal authorizedFunds) {
		this.authorizedFunds = authorizedFunds;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
}
