package com.example.demo.user;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity()
@Table(name="jobapplication")
public class JobApplication {
	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	private long id;
	private String firstName;
	private String lastName;
	private String gender;
	private String mobilenumber;
	private String email;
	@Column(name="cb_id")
	private long cbid;
	private String status;
	public JobApplication() {
	}
	public JobApplication(long id, String firstName, String lastName, String gender, String mobilenumber, String email,long cb_id,String status) {
		this.status=status;
		this.id = id;
		this.firstName = firstName;
		this.email=email;
		this.lastName = lastName;
		this.gender = gender;
		this.mobilenumber = mobilenumber;
		this.cbid = cb_id;
	}
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getMobilenumber() {
		return mobilenumber;
	}
	public void setMobilenumber(String mobilenumber) {
		this.mobilenumber = mobilenumber;
	}
	public long getCb_id() {
		return cbid;
	}
	public void setCb_id(long cbid) {
		this.cbid = cbid;
	}
	

}
