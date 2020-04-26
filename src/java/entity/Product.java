/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;

/**
 *
 * @author ADMIN
 */
public class Product implements Serializable {
    private int productID;
    private String productName;
    private int serviceID;
    private String providerName;
    private String description;
    private int quantity;
    private int price;
    private String unit;
    

    public Product() {
    }

    public Product(int productID, String productName, int serviceID, String providerName, String description, int quantity, int price, String unit) {
        this.productID = productID;
        this.productName = productName;
        this.serviceID = serviceID;
        this.providerName = providerName;
        this.description = description;
        this.quantity = quantity;
        this.price = price;
        this.unit = unit;
    }

    public Product(String productName, int serviceID, String providerName, int quantity, int price, String unit) {
        this.productName = productName;
        this.serviceID = serviceID;
        this.providerName = providerName;
        this.quantity = quantity;
        this.price = price;
        this.unit = unit;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getServiceID() {
        return serviceID;
    }

    public void setServiceID(int serviceID) {
        this.serviceID = serviceID;
    }

    public String getProviderName() {
        return providerName;
    }

    public void setProviderName(String providerName) {
        this.providerName = providerName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
    
}
