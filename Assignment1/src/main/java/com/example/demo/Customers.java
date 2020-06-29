package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Customers {
	
	@Id
	private int cid;
	private String cname;
	private String csalary;
	private String cnsalary;
	private String state;
	private String city;
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCsalary() {
		return csalary;
	}
	public void setCsalary(String csalary) {
		this.csalary = csalary;
	}
	public String getCnsalary() {
		return cnsalary;
	}
	public void setCnsalary(String cnsalary) {
		this.cnsalary = cnsalary;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	@Override
	public String toString() {
		return "Customers [cid=" + cid + ", cname=" + cname + ", csalary=" + csalary + ", cnsalary=" + cnsalary
				+ ", state=" + state + ", city=" + city + "]";
	}
	

}
