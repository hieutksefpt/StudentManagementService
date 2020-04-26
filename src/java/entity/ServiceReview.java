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
public class ServiceReview  implements Serializable{
    private int id;
    private int serviceID;
    private String userName;
    private int rating;
    private String comment;
    private Date date;
    private String status;

    public ServiceReview() {
    }

    public ServiceReview(int id, int serviceID, String userName, int rating, String comment, Date date, String status) {
        this.id = id;
        this.serviceID = serviceID;
        this.userName = userName;
        this.rating = rating;
        this.comment = comment;
        this.date = date;
        this.status = status;
    }
    
    public ServiceReview(int serviceID, String userName, int rating, String comment, Date date, String status) {
        this.serviceID = serviceID;
        this.userName = userName;
        this.rating = rating;
        this.comment = comment;
        this.date = date;
        this.status = status;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getServiceID() {
        return serviceID;
    }

    public void setServiceID(int serviceID) {
        this.serviceID = serviceID;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
}
