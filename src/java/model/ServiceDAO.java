/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Service;
import com.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class ServiceDAO {
    
    public List<Service> selectService(String query) throws Exception{
        Connection conn= new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        List<Service> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int serviceID=rs.getInt("ServiceID");
            String serviceName=rs.getString("ServiceName");
            String providerName=rs.getString("ProviderName");
            String detail=rs.getString("Detail");
            Date dateCreated=rs.getDate("DateCreated");
            String status=rs.getString("Status");
            String picture=rs.getString("Picture");
            a.add(new Service(serviceID, serviceName, providerName, detail, dateCreated, status,picture));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public List<Service> selectAllService() throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Service";
        PreparedStatement ps = conn.prepareStatement(query);
        List<Service> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int serviceID=rs.getInt("ServiceID");
            String serviceName=rs.getString("ServiceName");
            String providerName=rs.getString("ProviderName");
            String detail=rs.getString("Detail");
            Date dateCreated=rs.getDate("DateCreated");
            String status=rs.getString("Status");
            String picture=rs.getString("Picture");
            a.add(new Service(serviceName, providerName, detail, dateCreated, status,picture));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public List<Service> selectInUseService(String username) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select a.ServiceID,a.ServiceName,a.ProviderName,a.Detail,a.DateCreated,b.Status"
                + " from Service a,[Order] b where a.ServiceID=b.ServiceID and b.UserName=? and b.Status='In use'";
        PreparedStatement ps = conn.prepareStatement(query);
        List<Service> a= new ArrayList<>();       
        ps.setString(1, username);
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int serviceID=rs.getInt("ServiceID");
            String serviceName=rs.getString("ServiceName");
            String providerName=rs.getString("ProviderName");
            String detail=rs.getString("Detail");
            Date dateCreated=rs.getDate("DateCreated");
            String status=rs.getString("Status");
            String picture=rs.getString("Picture");
            a.add(new Service(serviceName, providerName, detail, dateCreated, status,picture));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public List<Service> selectNotUseService(String username) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select a.ServiceID,a.ServiceName,a.ProviderID,a.Detail,a.DateCreated,b.Status"
                + " from Service a,[Order] b where a.ServiceID=b.ServiceID and b.UserName=? and b.Status='Not use'";
        PreparedStatement ps = conn.prepareStatement(query);
        List<Service> a= new ArrayList<>();       
        ps.setString(1, username);
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            int serviceID=rs.getInt("ServiceID");
            String serviceName=rs.getString("ServiceName");
            String providerName=rs.getString("ProviderName");
            String detail=rs.getString("Detail");
            Date dateCreated=rs.getDate("DateCreated");
            String status=rs.getString("Status");
            String picture=rs.getString("Picture");
            a.add(new Service(serviceName, providerName, detail, dateCreated, status,picture));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public void setServiceProfile(int sid,String servicename,String detail) throws Exception
    {
        String query="update Service set ServiceName=?,Detail=? where ServiceID=?";
        Connection conn=new DBContext().getConnection();
        PreparedStatement ps=conn.prepareStatement(query);
        ps.setString(1,servicename);
        ps.setString(2, detail);
        ps.setInt(3, sid);
        ps.executeUpdate();
        conn.close();
    }
    
    public void setServiceStatus(int sid,String status) throws Exception
    {
        String query="update Service set Status=? where ServiceID=?";
        Connection conn=new DBContext().getConnection();
        PreparedStatement ps=conn.prepareStatement(query);
        ps.setString(1,status);
        ps.setInt(2, sid);
        ps.executeUpdate();
        conn.close();
    }
    
    public void insertService(Service a) throws Exception
    {
            String query="insert into Service values(?,?,?,?,?,?)";
            Connection conn=new DBContext().getConnection();
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setString(1, a.getServiceName());
            ps.setString(2, a.getProviderName());
            ps.setString(3, a.getDetail());
            ps.setDate(4, (java.sql.Date) a.getDateCreated());
            ps.setString(5, a.getStatus());
            ps.setString(6, a.getPicture());
            ps.executeUpdate();
            conn.close();
    }
}
