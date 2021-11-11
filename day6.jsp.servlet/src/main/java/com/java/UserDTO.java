package com.java;

public class UserDTO {
	private String username;
	private String password;
	private String name;
	private String email;
	private int ssn;
	
	
	public UserDTO() {
		super();
		// TODO Auto-generated constructor stub
	}


	public UserDTO(String username, String password, String name, String email, int ssn) {
		super();
		this.username = username;
		this.password = password;
		this.name = name;
		this.email = email;
		this.ssn = ssn;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public int getSsn() {
		return ssn;
	}


	public void setSsn(int ssn) {
		this.ssn = ssn;
	}


	@Override
	public String toString() {
		return "UserDTO [username=" + username + ", password=" + password + ", name=" + name + ", email=" + email
				+ ", ssn=" + ssn + "]";
	}
	
	
	
	
	

}
