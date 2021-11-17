package com.javaGG.spring_test_hyun.dto;

import java.sql.Date;

public class Dto {
	
	private int id;
	private String uname;
	private String uphone1;
	private String uphone2;
	private String uphone3;
	private String uaddr;
	private Date udate;
	
	public Dto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUphone1() {
		return uphone1;
	}

	public void setUphone1(String uphone1) {
		this.uphone1 = uphone1;
	}

	public String getUphone2() {
		return uphone2;
	}

	public void setUphone2(String uphone2) {
		this.uphone2 = uphone2;
	}

	public String getUphone3() {
		return uphone3;
	}

	public void setUphone3(String uphone3) {
		this.uphone3 = uphone3;
	}

	public String getUaddr() {
		return uaddr;
	}

	public void setUaddr(String uaddr) {
		this.uaddr = uaddr;
	}

	public Date getUdate() {
		return udate;
	}

	public void setUdate(Date udate) {
		this.udate = udate;
	}
	
}
