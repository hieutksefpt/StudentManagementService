/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Account;
import com.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ADMIN
 */
public class AccountDAO {

    public List<Account> selectAccount(String query) throws Exception {
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        List<Account> a = new ArrayList<>();
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            String accname = rs.getString("AccountName");
            String password = rs.getString("Password");
            String email = rs.getString("Email");
            String fullname = rs.getString("FullName");
            String rolenumber = rs.getString("RoleNumber");
            String address = rs.getString("Address");
            String phone = rs.getString("Phone");
            Date dob = rs.getDate("BOD");
            int walletid = rs.getInt("WalletID");
            Date datecreated = rs.getDate("DateCreated");
            String status = rs.getString("Status");
            int type = rs.getInt("Type");
            a.add(new Account(accname, password, email, fullname, rolenumber, address, phone, dob, walletid, datecreated, status, type));
        }
        rs.close();
        conn.close();
        return a;
    }

    public List<Account> selectAccountByName(String accname) throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "select * from Account where AccountName LIKE '" + accname + "'";
        System.out.println(query);
        PreparedStatement ps = conn.prepareStatement(query);
        List<Account> a = new ArrayList<>();
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            String password = rs.getString("Password");
            String email = rs.getString("Email");
            String fullname = rs.getString("FullName");
            String rolenumber = rs.getString("RoleNumber");
            String address = rs.getString("Address");
            String phone = rs.getString("Phone");
            Date dob = rs.getDate("BOD");
            int walletid = rs.getInt("WalletID");
            Date datecreated = rs.getDate("DateCreated");
            String status = rs.getString("Status");
            int type = rs.getInt("Type");
            a.add(new Account(accname, password, email, fullname, rolenumber, address, phone, dob, walletid, datecreated, status, type));
        }
        rs.close();
        conn.close();
        return a;
    }

    public List<Account> selectAllAccount() throws Exception {
        Connection conn = new DBContext().getConnection();
        String query = "select * from Account";
        PreparedStatement ps = conn.prepareStatement(query);
        List<Account> a = new ArrayList<>();
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            String accname = rs.getString("AccountName");
            String password = rs.getString("Password");
            String email = rs.getString("Email");
            String fullname = rs.getString("FullName");
            String rolenumber = rs.getString("RoleNumber");
            String address = rs.getString("Address");
            String phone = rs.getString("Phone");
            Date dob = rs.getDate("BOD");
            int walletid = rs.getInt("WalletID");
            Date datecreated = rs.getDate("DateCreated");
            String status = rs.getString("Status");
            int type = rs.getInt("Type");
            a.add(new Account(accname, password, email, fullname, rolenumber, address, phone, dob, walletid, datecreated, status, type));
        }
        rs.close();
        conn.close();
        return a;
    }

    public void insertAccount(Account acc) throws Exception {
        String query = "insert into Account values(?,?,?,?,?,?,?,?,?,?,?,?)";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, acc.getAccountName());
        ps.setString(2, acc.getPassword());
        ps.setString(3, acc.getEmail());
        ps.setString(4, acc.getFullname());
        ps.setString(5, acc.getRoleNumber());
        ps.setString(6, acc.getAddress());
        ps.setString(7, acc.getPhone());
        ps.setDate(8, (java.sql.Date) acc.getDob());
        ps.setInt(9, acc.getWalletID());
        ps.setDate(10, (java.sql.Date) acc.getDateCreated());
        ps.setString(11, acc.getStatus());
        ps.setInt(12, acc.getType());
        ps.executeUpdate();
        conn.close();
    }

    public void setAccountPasswordByName(String accname, String pass) throws Exception {
        String query = "update Account set Password=? where AccountName=?";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, pass);
        ps.setString(2, accname);
        ps.executeUpdate();
        conn.close();
    }

    public void setAccountStatusByName(String accname, String status) throws Exception {
        String query = "update Account set Status=? where AccountName=?";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, status);
        ps.setString(2, accname);
        ps.executeUpdate();
        conn.close();
    }

    public void deleteAccount(String aName) {
        try {
            DBContext context = new DBContext();
            Connection con = context.getConnection();
            if (con != null) {
                PreparedStatement stm = con.prepareStatement("DELETE FROM Account WHERE AccountName = ?;");
                stm.setString(1, aName);
                stm.executeUpdate();
                stm.close();
                con.close();
            }
        } catch (Exception ex) {
            Logger.getLogger(AccountDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void setAccountProfileByName(String email, String fullname, String address, String phone, Date dob, String accname) throws Exception {
        String query = "update Account set Email=?,FullName=?,Address=?,Phone=?,BOD=? where AccountName=?";
        Connection conn = new DBContext().getConnection();
        PreparedStatement ps = conn.prepareStatement(query);
        ps.setString(1, email);
        ps.setString(2, fullname);
        ps.setString(3, address);
        ps.setString(4, phone);
        java.sql.Date date = new java.sql.Date(dob.getTime());
        ps.setDate(5, date);
        ps.setString(6, accname);

        ps.executeUpdate();

        conn.close();
    }

}
