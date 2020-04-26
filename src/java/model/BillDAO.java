/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Bill;
import com.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class BillDAO {
    public List<Bill> selectBillByUserName(String uName) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Bill where UserName"+uName;
        PreparedStatement ps = conn.prepareStatement(query);
        List<Bill> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {
            int serviceid= rs.getInt("ServiceID");
            String providername= rs.getString("ProviderName");           
            String username=rs.getString("UserName");
            int price=rs.getInt("Price");
            String detail=rs.getString("Detail");
            String status=rs.getString("Status");
            a.add(new Bill(serviceid, providername, username, price, detail, status));
        }
        rs.close();
        conn.close();
        return a;
    }
    public void setBillStatus(int billID,String status) throws Exception
    {
        Connection conn= new DBContext().getConnection();
        String query="update Bill set Status=? where BillID=?";
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1,status);
        ps.setInt(2, billID);
        ps.executeUpdate();
        conn.close();
    }
    
    public void insertNotification(Bill a) throws Exception
    {
            String query="insert into Bill values(?,?,?,?,?,?)";
            Connection conn=new DBContext().getConnection();
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setInt(1, a.getServiceID());
            ps.setString(2, a.getProviderName());
            ps.setString(3, a.getUserName());
            ps.setInt(4,a.getPrice());
            ps.setString(5, a.getDetail());
            ps.setString(6, a.getStatus());
            ps.executeUpdate();
            conn.close();
    }
}
