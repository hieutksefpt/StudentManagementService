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
public class Service implements Serializable {
    private int serviceID;
    private String serviceName;
    private String providerName;
    private String detail;
    private Date dateCreated;
    private String status;
    private String picture;

    public Service() {
    }

    public Service(int serviceID, String serviceName, String providerName, String detail, Date dateCreated, String status, String picture) {
        this.serviceID = serviceID;
        this.serviceName = serviceName;
        this.providerName = providerName;
        this.detail = detail;
        this.dateCreated = dateCreated;
        this.status = status;
        this.picture = picture;
    }

    public Service(String serviceName, String providerName, String detail, Date dateCreated, String status, String picture) {
        this.serviceName = serviceName;
        this.providerName = providerName;
        this.detail = detail;
        this.dateCreated = dateCreated;
        this.status = status;
        this.picture = picture;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    

    public int getServiceID() {
        return serviceID;
    }

    public void setServiceID(int serviceID) {
        this.serviceID = serviceID;
    }

    public String getServiceName() {
        return serviceName;
    }

    public void setServiceName(String serviceName) {
        this.serviceName = serviceName;
    }

    public String getProviderName() {
        return providerName;
    }

    public void setProviderName(String providerName) {
        this.providerName = providerName;
    }

    public String getDescription() {
        return detail;
    }

    public void setDescription(String description) {
        this.detail = description;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
}
