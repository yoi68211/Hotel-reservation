package com.empmanage.hotel.vo;

import java.sql.Date;

public class HtdateVO {
	private int renum;
	private String email;
	private Date cin;
	private Date cout;
	private int pep;
	
	
	public int getRenum() {
		return renum;
	}
	public String getEmail() {
		return email;
	}
	public Date getCin() {
		return cin;
	}
	public Date getCout() {
		return cout;
	}
	public int getPep() {
		return pep;
	}
	public void setRenum(int renum) {
		this.renum = renum;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setCin(Date cin) {
		this.cin = cin;
	}
	public void setCout(Date cout) {
		this.cout = cout;
	}
	public void setPep(int pep) {
		this.pep = pep;
	}
	
}