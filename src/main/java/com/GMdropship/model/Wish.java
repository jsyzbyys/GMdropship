package com.GMdropship.model;

public class Wish {
	private int wid;
	
	private String sku;
	
	private int bvo_id;
	
	private int brand_id;
	
	private Product pro;

	public int getWid() {
		return wid;
	}

	public void setWid(int wid) {
		this.wid = wid;
	}

	

	public String getSku() {
		return sku;
	}

	public void setSku(String sku) {
		this.sku = sku;
	}

	public int getBvo_id() {
		return bvo_id;
	}

	public void setBvo_id(int bvo_id) {
		this.bvo_id = bvo_id;
	}

	public int getBrand_id() {
		return brand_id;
	}

	public void setBrand_id(int brand_id) {
		this.brand_id = brand_id;
	}
	
	public Product getPro() {
		return pro;
	}

	public void setPro(Product pro) {
		this.pro = pro;
	}

}
