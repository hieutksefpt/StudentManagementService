/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.BuyBalance;
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
public class BuyBalanceDAO {
    public List<BuyBalance> selectBuyBalanceByHistory(String accName) throws Exception{
        Connection conn= new DBContext().getConnection();
        String query="select * from BuyBalance where AccountName="+accName;
        PreparedStatement ps = conn.prepareStatement(query);
        List<BuyBalance> a= new ArrayList<>();       
        ResultSet rs= ps.executeQuery();
        while(rs.next())
        {
            int walletid=rs.getInt("WalletID");
            int value= rs.getInt("Value");
            Date date= rs.getDate("Date");
            a.add(new BuyBalance(accName, walletid, value, date));
        }
        rs.close();
        conn.close();
        return a;
    }
    
    public void insertBuyBalance(BuyBalance bb) throws Exception
    {
            String query="insert into BuyBalance values(?,?,?,?)";
            Connection conn=new DBContext().getConnection();
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setString(1, bb.getAccountName());
            ps.setInt(2, bb.getWalletID());
            ps.setInt(3, bb.getValue());
            ps.setDate(4, (java.sql.Date) bb.getDate());
            ps.executeUpdate();
            conn.close();
    }
}
