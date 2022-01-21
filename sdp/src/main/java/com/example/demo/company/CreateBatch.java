package com.example.demo.company;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity()
@Table(name="createBatch")
public class CreateBatch {
	
	
	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	private long id;
	@Column(name="com_name")
	private String comName;
	@Column(name="name")
	private String name;
	@Column(name="count")
	private int count;
	@Column(name="role")
	private String role;
	
	private String StartDate;
	private String EndDate;
	private int stipend;
	private int duration;
	
	
	public String getStartDate() {
		return StartDate;
	}
	public void setStartDate(String startDate) {
		StartDate = startDate;
	}
	public String getEndDate() {
		return EndDate;
	}
	public void setEndDate(String endDate) {
		EndDate = endDate;
	}
	public int getStipend() {
		return stipend;
	}
	public void setStipend(int stipend) {
		this.stipend = stipend;
	}
	public int getDuration() {
		return duration;
	}
	public void setDuration(int duration) {
		this.duration = duration;
	}
	public CreateBatch() {
		
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public CreateBatch(long id, String comName, String name, int count, String role, String startDate, String endDate,
			int stipend, int duration) {
		super();
		this.id = id;
		this.comName = comName;
		this.name = name;
		this.count = count;
		this.role = role;
		StartDate = startDate;
		EndDate = endDate;
		this.stipend = stipend;
		this.duration = duration;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public String getComName() {
		return comName;
	}
	public void setComName(String comName) {
		this.comName = comName;
	}
	
}
