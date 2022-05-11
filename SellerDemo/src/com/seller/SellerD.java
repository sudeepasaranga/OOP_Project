package com.seller;

public class SellerD {
	
	
	 private int id;
	 private String fname;
	 private String lname;
	 private String email;
	 private String address;
	 private String phone;
	 private String password;
	 private String gender;
	 
	 
	public SellerD(int id, String fname, String lname, String email, String address, String phone, String password,
			String gender) {
		
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.address = address;
		this.phone = phone;
		this.password = password;
		this.gender = gender;
	}


	public int getId() {
		return id;
	}


	public String getFname() {
		return fname;
	}


	public String getLname() {
		return lname;
	}


	public String getEmail() {
		return email;
	}


	public String getAddress() {
		return address;
	}


	public String getPhone() {
		return phone;
	}


	public String getPassword() {
		return password;
	}


	public String getGender() {
		return gender;
	}


	
	
}
