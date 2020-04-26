/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import entity.Account;
import entity.Order;
import java.io.Serializable;
import java.util.List;
import model.OrderDAO;
import model.ProductDAO;
import model.ServiceDAO;

/**
 *
 * @author Phong
 */
public class OrderBean implements Serializable {
    
    private Account account;
    private int productID, serviceID;

    public Account getAccount() {
        return account;
    }

    public void setAccount(Account account) {
        this.account = account;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getServiceID() {
        return serviceID;
    }

    public void setServiceID(int serviceID) {
        this.serviceID = serviceID;
    }
    
    public String getProductName() throws Exception {
        return new ProductDAO().selectProductByProductID(productID).get(0).getProductName();
    }
    
    public String getServiceName() throws Exception {
        String query = "SELECT * FROM Service WHERE ServiceID = " + serviceID;
        return new ServiceDAO().selectService(query).get(0).getServiceName();
    }
    
    public List<Order> getOrder() throws Exception {
        if (account.getType() == 2) {
            return new OrderDAO().selectOrderByProviderName(account.getAccountName());
        } else {
            return new OrderDAO().selectOrderByUserName(account.getAccountName());
        }
    }

}
