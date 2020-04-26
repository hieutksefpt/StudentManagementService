/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AccountDAO;

/**
 *
 * @author Phong
 */
public class AdminController extends HttpServlet {

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
                switch (request.getParameter("action")) {
                    case "newAccount": {
                        newAccount(request, response);
                        break;
                    }
                    case "changeStatusAccount": {
                        changeStatusAccount(request, response);
                        break;
                    }
                    case "deleteAccount": {
                        deleteAccount(request, response);
                        break;
                    }
                    case "resetPassword": {
                        resetPassword(request, response);
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

    private void newAccount(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    private void changeStatusAccount(HttpServletRequest request, HttpServletResponse response) {
        try {
            String accountName = request.getParameter("accountName");
            AccountDAO adao = new AccountDAO();
            Account acc = adao.selectAccountByName(accountName).get(0);
            adao.setAccountStatusByName(accountName, acc.getStatus().equals("Banned") ? "Actived" : "Banned");
            response.sendRedirect("/ServiceforStudentManagement/admin/ListAccount.jsp");
        } catch (Exception ex) {
        }
    }

    private void deleteAccount(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String accountName = request.getParameter("accountName");
        AccountDAO adao = new AccountDAO();
        adao.deleteAccount(accountName);
        response.sendRedirect("/ServiceforStudentManagement/admin/ListAccount.jsp");
    }

    private void resetPassword(HttpServletRequest request, HttpServletResponse response) {
        try {
            String accountName = request.getParameter("accountName");
            AccountDAO adao = new AccountDAO();
            adao.setAccountPasswordByName(accountName, "123456");
            response.sendRedirect("/ServiceforStudentManagement/admin/ListAccount.jsp");
        } catch (Exception ex) {
        }
    }

}
