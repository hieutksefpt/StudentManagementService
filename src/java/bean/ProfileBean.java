/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import entity.Account;
import entity.Wallet;
import java.io.Serializable;
import model.AccountDAO;
import model.WalletDAO;

/**
 *
 * @author Phong
 */
public class ProfileBean implements Serializable {
    
    private String username;

    public ProfileBean() {
        this.username = "";
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
    
    public Account getAccount() throws Exception {
        String query = "SELECT * FROM Account WHERE accountName LIKE '" + username + "'";
        return new AccountDAO().selectAccount(query).get(0);
    }
    
    public Wallet getWallet() throws Exception {
        String query = "SELECT * FROM Wallet WHERE WalletID = " + getAccount().getWalletID();
        return new WalletDAO().selectWallet(query).get(0);
    }
}
