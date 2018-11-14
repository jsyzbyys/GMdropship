package com.GMdropship.model;

import java.util.Date;

public class Order {
	private int id;
	
	private Company mvo_id;
	
	private int brand;
	
	public int getBrand() {
		return brand;
	}

	public void setBrand(int brand) {
		this.brand = brand;
	}

	private int bvo_id;
	
	private String title;
	
	private float price;
	
	private int amount;
	
	private String sku;
	
	private int status;
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Date getAdd_date() {
		return add_date;
	}

	public void setAdd_date(Date add_date) {
		this.add_date = add_date;
	}

	private Date add_date;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	

	public Company getMvo_id() {
		return mvo_id;
	}

	public void setMvo_id(Company mvo_id) {
		this.mvo_id = mvo_id;
	}

	public int getBvo_id() {
		return bvo_id;
	}

	public void setBvo_id(int bvo_id) {
		this.bvo_id = bvo_id;
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

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	

	public String getSku() {
		return sku;
	}

	public void setSku(String sku) {
		this.sku = sku;
	}


	

}
