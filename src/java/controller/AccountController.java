/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Account;
import model.AccountDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Phong
 */
public class AccountController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if (request.getParameter("action") != null) {
                switch(request.getParameter("action")) {
                    case "changePassword": {
                        changePassword(request,response);
                        break;
                    }
                    case "feedback": {
                        feedback(request,response);
                        break;
                    }
                    case "topUp": {
                        topUp(request,response);
                        break;
                    }
                    case "updateInformation": {
                        updateInformation(request,response);
                        break;
                    }
                    case "payment": {
                        payment(request,response);
                        break;
                    }
                }
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    private void changePassword(HttpServletRequest request, HttpServletResponse response) {
       HttpSession session= request.getSession();
       String oldPass= request.getParameter("txtOldPwd");
       String newPass= request.getParameter("txtNewPwd");
       Account c = (Account) session.getAttribute("account");
       c = (Account) session.getAttribute("account");
        try {
            List <Account> a= new AccountDAO().selectAccount("select * from Account where AccountName = '"+ c.getAccountName()+"'");
            if(!a.get(0).getPassword().equals(oldPass))
            {
                response.sendRedirect("/ServiceforStudentManagement"+request.getParameter("link").split("ServiceforStudentManagement")[1] + "?error=changePasswordError");
            }
            new AccountDAO().setAccountPasswordByName(a.get(0).getAccountName(), newPass);
            response.sendRedirect("/ServiceforStudentManagement"+request.getParameter("link").split("ServiceforStudentManagement")[1]);
        } catch (Exception ex) {
            System.out.println("Change password error");
        }
    }

    private void feedback(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private void topUp(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private void updateInformation(HttpServletRequest request, HttpServletResponse response) {
        try {
            String accountName = ((Account)request.getSession().getAttribute("account")).getAccountName();
            String fullname = request.getParameter("txtName");
            String email = request.getParameter("txtEmail");
            Date date = new SimpleDateFormat("yyyy-dd-MM").parse(request.getParameter("txtDOB"));
            String address = request.getParameter("txtAddress");
            String phone = request.getParameter("txtPhone");
            new AccountDAO().setAccountProfileByName(email, fullname, address, phone, date, accountName);
            response.sendRedirect("/ServiceforStudentManagement/user/MyProfile.jsp");
        } catch (ParseException ex) {
            Logger.getLogger(AccountController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(AccountController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    private void payment(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
