package com.GMdropship.model;

public class Bvo {

	private int bvoid;
	private String bvoname;
	private String bvomail;
	private String bvopwd;
	private String bvosex;
	private int bvoage;
	private int bvohavewallet;

	public Bvo(int bvoid, String bvoname, String bvomail, String bvopwd, String bvosex, int bvoage, int bvohavewallet) {
		super();
		this.bvoid = bvoid;
		this.bvoname = bvoname;
		this.bvomail = bvomail;
		this.bvopwd = bvopwd;
		this.bvosex = bvosex;
		this.bvoage = bvoage;
		this.bvohavewallet = bvohavewallet;
	}

	public Bvo() {
		super();
	}

	public int getBvoid() {
		return bvoid;
	}

	public void setBvoid(int bvoid) {
		this.bvoid = bvoid;
	}

	public String getBvoname() {
		return bvoname;
	}

	public void setBvoname(String bvoname) {
		this.bvoname = bvoname;
	}

	public String getBvomail() {
		return bvomail;
	}

	public void setBvomail(String bvomail) {
		this.bvomail = bvomail;
	}

	public String getBvopwd() {
		return bvopwd;
	}

	public void setBvopwd(String bvopwd) {
		this.bvopwd = bvopwd;
	}

	public String getBvosex() {
		return bvosex;
	}

	public void setBvosex(String bvosex) {
		this.bvosex = bvosex;
	}

	public int getBvoage() {
		return bvoage;
	}

	public void setBvoage(int bvoage) {
		this.bvoage = bvoage;
	}

	public int getBvohavewallet() {
		return bvohavewallet;
	}

	public void setBvohavewallet(int bvohavewallet) {
		this.bvohavewallet = bvohavewallet;
	}

	@Override
	public String toString() {
		return "Bvo [bvoid=" + bvoid + ", bvoname=" + bvoname + ", bvomail=" + bvomail + ", bvopwd=" + bvopwd
				+ ", bvosex=" + bvosex + ", bvoage=" + bvoage + ", bvohavewallet=" + bvohavewallet + "]";
	}

}
