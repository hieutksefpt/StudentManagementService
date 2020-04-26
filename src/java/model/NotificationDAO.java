/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Notification;
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
public class NotificationDAO {
    public List<Notification> selectNotificationByReceiverName(String pName) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from Notification where ReceiverName="+pName;
        PreparedStatement ps = conn.prepareStatement(query);
        List<Notification> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {       
            String title=rs.getString("Title");
            String detail=rs.getString("Detail");
            Date date=rs.getDate("Date");
            String status=rs.getString("Status");
            a.add(new Notification(pName, title, detail, date, status));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public void setNotificationStatusByReceiverName(String pName,String status) throws Exception
    {
        String query="update Notification set Status=? where ReceiverName=?";
        Connection conn=new DBContext().getConnection();
        PreparedStatement ps=conn.prepareStatement(query);
        ps.setString(1,status);
        ps.setString(2, pName);
        ps.executeUpdate();
        conn.close();
    }
    
    public void insertNotification(Notification a) throws Exception
    {
            String query="insert into Notification values(?,?,?,?,?)";
            Connection conn=new DBContext().getConnection();
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setString(1, a.getReceiverName());
            ps.setString(2, a.getTitle());
            ps.setString(3, a.getDetail());
            ps.setDate(4, (java.sql.Date) a.getDate());
            ps.setString(5, a.getStatus());
            ps.executeUpdate();
            conn.close();
    }
}
