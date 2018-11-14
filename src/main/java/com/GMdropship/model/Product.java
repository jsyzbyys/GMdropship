package com.GMdropship.model;

public class Product {
	
	private int id;
	
	private String title;
	
	private float price;
	
	private String type;
	
	private String picture;
	  
	private String state;
	
	private int stock;
	
	private String sku;
	
	private Company mvo_id;
	
	
	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	

	
	public Company getMvo_id() {
		return mvo_id;
	}

	public void setMvo_id(Company mvo_id) {
		this.mvo_id = mvo_id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	

	

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getSku() {
		return sku;
	}

	public void setSku(String sku) {
		this.sku = sku;
	}
	
	
	
	

}
