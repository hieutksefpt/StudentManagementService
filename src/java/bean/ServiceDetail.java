/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import entity.Product;
import entity.ServiceReview;
import java.io.Serializable;
import java.util.List;
import model.ProductDAO;
import model.ServiceReviewDAO;

/**
 *
 * @author Phong
 */
public class ServiceDetail implements Serializable {
    
    private int serviceID;

    public ServiceDetail() {
        
    }

    public int getServiceID() {
        return serviceID;
    }

    public void setServiceID(int serviceID) {
        this.serviceID = serviceID;
    }
    
    public List<ServiceReview> getServiceReview() throws Exception {
        return new ServiceReviewDAO().selectServiceReviewByServiceID(serviceID);
    }
    
    public List<Product> getProduct() throws Exception {
        return new ProductDAO().selectProductByServiceID(serviceID);
    }
}
