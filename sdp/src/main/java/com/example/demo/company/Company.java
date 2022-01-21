package com.example.demo.company;
import javax.persistence.*;

@Entity()
@Table(name="company")
public class Company {
	@Id
	@GeneratedValue(strategy =GenerationType.IDENTITY)
	private long id;
	@Column(name="com_email")
	private String comemail;
	
	@Column(name="companyname")
	private String companyname;
	
	@Column(name="password")
	private String password;
	
	@Column(name="address")
	private String address;
	
	
	public Company() {
		
	}
	
	public Company(long id, String com_email, String companyname, String password, String address) {		
		this.id = id;
		this.comemail = com_email;
		this.companyname = companyname;
		this.password = password;
		this.address = address;
	}
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getCom_email() {
		return comemail;
	}
	public void setCom_email(String com_email) {
		this.comemail = com_email;
	}
	public String getCompanyname() {
		return companyname;
	}
	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
}
