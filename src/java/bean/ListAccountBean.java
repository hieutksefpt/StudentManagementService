/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import entity.Account;
import java.io.Serializable;
import java.util.List;
import model.AccountDAO;

/**
 *
 * @author Phong
 */
public class ListAccountBean implements Serializable {
    
    private String type;
    private String status;

    public ListAccountBean() {
        this.type = "0";
        this.status = "All";
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    public List<Account> getAccount() throws Exception {
        String query = "SELECT * FROM Account";
        if (!type.equals("0")) query = query + " WHERE Type = " + type;
        if (!status.equals("All")) {
            if (type.equals("0")) query = query + " WHERE Status LIKE '" + status +"'";
            else query = query + " AND Status LIKE '" + status + "'";
        }
        return new AccountDAO().selectAccount(query);
    }
    
}
