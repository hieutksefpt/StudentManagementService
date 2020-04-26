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
public class Bill  implements Serializable{
    private int billID;
    private int serviceID;
    private String providerName;
    private String userName;
    private int price;
    private String detail;
    private String status;

    public Bill() {
    }

    public Bill(int billID, int serviceID, String providerName, String userName, int price, String detail, String status) {
        this.billID = billID;
        this.serviceID = serviceID;
        this.providerName = providerName;
        this.userName = userName;
        this.price = price;
        this.detail = detail;
        this.status = status;
    }

    public Bill(int serviceID, String providerName, String userName, int price, String detail, String status) {
        this.serviceID = serviceID;
        this.providerName = providerName;
        this.userName = userName;
        this.price = price;
        this.detail = detail;
        this.status = status;
    }

    public int getBillID() {
        return billID;
    }

    public void setBillID(int billID) {
        this.billID = billID;
    }

    public int getServiceID() {
        return serviceID;
    }

    public void setServiceID(int serviceID) {
        this.serviceID = serviceID;
    }

    public void setProviderName(String providerName) {
        this.providerName = providerName;
    }

    public String getProviderName() {
        return providerName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

   

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
}
