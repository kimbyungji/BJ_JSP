package com.bean;

public class Quiz {
	
	private String id;
	private String pw;
	private String pw_check;

	public Quiz() {
		// TODO Auto-generated constructor stub
	}

	public Quiz(String id, String pw, String pw_check) {
		super();
		this.id = id;
		this.pw = pw;
		this.pw_check = pw_check;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getPw_check() {
		return pw_check;
	}

	public void setPw_check(String pw_check) {
		this.pw_check = pw_check;
	}
	
	
}
