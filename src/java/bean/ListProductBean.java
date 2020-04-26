/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import entity.Product;
import entity.Service;
import java.io.Serializable;
import java.util.List;
import model.ProductDAO;
import model.ServiceDAO;

/**
 *
 * @author Phong
 */
public class ListProductBean implements Serializable {

    private String providerName;
    private int serviceID = 0;
    private List<Service> serviceList = null;

    public String getProviderName() {
        return providerName;
    }

    public void setProviderName(String providerName) {
        this.providerName = providerName;
    }

    public int getServiceID() {
        return serviceID;
    }

    public void setServiceID(int serviceID) {
        this.serviceID = serviceID;
    }

    public List<Product> getProduct() throws Exception {
        if (serviceID == 0) {
            System.out.println("hii");
            serviceID = serviceList.get(0).getServiceID();
        }
        return new ProductDAO().selectProductByServiceID(serviceID);
    }

    public List<Service> getService() throws Exception {
        if (serviceList == null) {
            String query = "SELECT * FROM Service WHERE ProviderName LIKE '" + providerName + "'";
            serviceList = new ServiceDAO().selectService(query);
        }
        return serviceList;
    }
}
