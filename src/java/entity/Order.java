/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author ADMIN
 */
public class Order implements Serializable {
    private int orderID;
    private int serviceID;
    private String providerName;
    private int productID;
    private String userName;
    private int price;
    private int quantity;
    private Date startDate;
    private Date endDate;
    private String status;

    public Order() {
    }

    public Order(int orderID, int serviceID, String providerName, int productID, String userName, int price, int quantity, Date startDate, Date endDate, String status) {
        this.orderID = orderID;
        this.serviceID = serviceID;
        this.providerName = providerName;
        this.productID = productID;
        this.userName = userName;
        this.price = price;
        this.quantity = quantity;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = status;
    }

   public Order(int serviceID, String providerName, int productID, String userName, int price, int quantity, Date startDate, Date endDate, String status) {
      
        this.serviceID = serviceID;
        this.providerName = providerName;
        this.productID = productID;
        this.userName = userName;
        this.price = price;
        this.quantity = quantity;
        this.startDate = startDate;
        this.endDate = endDate;
        this.status = status;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getProductID() {
        return productID;
    }

    

    public int getOrderID() {
        return orderID;
    }

    public void setOrderID(int orderID) {
        this.orderID = orderID;
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

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserName() {
        return userName;
    }

    

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
}
