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
public class BuyBalance implements Serializable {
    private int id;
    private String accountName;
    private int walletID;
    private int value;
    private Date date;

    public BuyBalance() {
    }

    public BuyBalance(int id, String accountName, int walletID, int value, Date date) {
        this.id = id;
        this.accountName = accountName;
        this.walletID = walletID;
        this.value = value;
        this.date = date;
    }

    public BuyBalance(String accountName, int walletID, int value, Date date) {
        this.accountName = accountName;
        this.walletID = walletID;
        this.value = value;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setAccountName(String accountName) {
        this.accountName = accountName;
    }

    public String getAccountName() {
        return accountName;
    }

    

    public int getWalletID() {
        return walletID;
    }

    public void setWalletID(int walletID) {
        this.walletID = walletID;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
    
    
}
