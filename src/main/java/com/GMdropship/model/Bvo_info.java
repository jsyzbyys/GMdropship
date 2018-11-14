package com.GMdropship.model;

public class Bvo_info {
	private int id;
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	private Integer bvo_id;
	private String username;
	private String realname;
	private String email;
	private int phone;
	private String buyMangerId;
	
	public Bvo_info() {}
	
	
	

	public Integer getBvo_id() {
		return bvo_id;
	}

	public void setBvo_id(Integer bvo_id) {
		this.bvo_id = bvo_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}


	public String getBuyMangerId() {
		return buyMangerId;
	}


	public void setBuyMangerId(String buyMangerId) {
		this.buyMangerId = buyMangerId;
	}


	@Override
	public String toString() {
		return "Bvo_info [bvo_id=" + bvo_id + ", username=" + username + ", realname=" + realname + ", email=" + email
				+ ", phone=" + phone + ", buyMangerId=" + buyMangerId + "]";
	}

	
	
	
	
	
	

}
