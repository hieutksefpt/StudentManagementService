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
import model.ServiceDAO;

/**
 *
 * @author Phong
 */
public class ViewServiceBean implements Serializable {
    
    private String selectType = null;
    private Account account;
    
    public ViewServiceBean() {
        this.selectType = "";
    }

    public String getSelectType() {
        return selectType;
    }

    public void setSelectType(String selectType) {
        this.selectType = selectType;
    }

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public List<Service> getService() throws Exception {
        String query = "SELECT * FROM Service";
        if (selectType == null || selectType.equals("") || selectType.equals("mySer")) {
            if (account.getType() == 2) {
                query = "SELECT * FROM [Service] WHERE ProviderName LIKE '" + account.getAccountName() + "'";
            } else {
                query = "SELECT s.* FROM [Order] o LEFT JOIN [Service] s"
                    + " ON o.ServiceID = s.ServiceID"
                    + " WHERE o.UserName LIKE '" + account.getAccountName() + "'"
                    + " AND o.Status LIKE 'In-Use'";
            }
        } else if (selectType.equals("actSer")) {
            query = "SELECT * FROM Service WHERE Status LIKE 'Actived'";
        }
        return new ServiceDAO().selectService(query);
    }
}
