/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import entity.Account;
import entity.Service;
import java.io.Serializable;
import java.util.List;
import model.AccountDAO;
import model.ServiceDAO;

/**
 *
 * @author Phong
 */
public class InformationBarBean implements Serializable {

    public InformationBarBean() {
    }
    
    public List<Service> getTopService() {
        return null;
    }
    
    public List<Account> getNewAccount() throws Exception {
        String query = "SELECT TOP(5) * FROM Account "
                + "WHERE Type < 3"
                + "ORDER BY DateCreated DESC";
        return new AccountDAO().selectAccount(query);
    }
    
    public List<Service> getNewService() throws Exception {
        String query = "SELECT TOP(5) * FROM Service ORDER BY DateCreated DESC";
        return new ServiceDAO().selectService(query);
    }
}
