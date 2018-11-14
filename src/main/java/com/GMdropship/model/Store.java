package com.GMdropship.model;

public class Store {
	
	private Integer storeNumber;
	
	private String storeName;
	
	private String website;
	
	private String buyMangerId;

	
	public Store() {
		
	}

	public Store(Integer storeNumber, String storeName, String website, String buyMangerId) {
		super();
		this.storeNumber = storeNumber;
		this.storeName = storeName;
		this.website = website;
		this.buyMangerId = buyMangerId;
	}

	public Integer getStoreNumber() {
		return storeNumber;
	}

	public void setStoreNumber(Integer storeNumber) {
		this.storeNumber = storeNumber;
	}

	public String getStoreName() {
		return storeName;
	}

	public void setStoreName(String storeName) {
		this.storeName = storeName;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public String getBuyMangerId() {
		return buyMangerId;
	}

	public void setBuyMangerId(String buyMangerId) {
		this.buyMangerId = buyMangerId;
	}

	@Override
	public String toString() {
		return "Store [storeNumber=" + storeNumber + ", storeName=" + storeName + ", website=" + website
				+ ", buyMangerId=" + buyMangerId + "]";
	}
	
	

}
