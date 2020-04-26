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
public class Account implements Serializable{
    private String accountName;
    private String password;
    private String email;
    private String fullname;
    private String roleNumber;
    private String address;
    private String phone;
    private Date dob;
    private int walletID;
    private Date dateCreated;
    private String status;
    private int type;

    public Account() {
    }
    
    public Account(String accountName, String password, String email, String userName, String roleNumber, String address, String phone, Date dob, int walletID, Date dateCreated, String status, int type) {
        this.accountName = accountName;
        this.password = password;
        this.email = email;
        this.fullname = userName;
        this.roleNumber = roleNumber;
        this.address = address;
        this.phone = phone;
        this.dob = dob;
        this.walletID = walletID;
        this.dateCreated = dateCreated;
        this.status = status;
        this.type = type;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public Date getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(Date dateCreated) {
        this.dateCreated = dateCreated;
    }

    public String getAccountName() {
        return accountName;
    }

    public String getPassword() {
        return password;
    }

    public String getEmail() {
        return email;
    }


    public String getRoleNumber() {
        return roleNumber;
    }

    public String getAddress() {
        return address;
    }

    public String getPhone() {
        return phone;
    }

    public int getWalletID() {
        return walletID;
    }

    public int getType() {
        return type;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }


    public void setRoleNumber(String roleNumber) {
        this.roleNumber = roleNumber;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setWalletID(int walletID) {
        this.walletID = walletID;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public void setType(int type) {
        this.type = type;
    }

   

    


    
    
    
}
