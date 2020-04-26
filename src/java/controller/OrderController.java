/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Account;
import entity.Order;
import entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.OrderDAO;
import model.ProductDAO;
import model.WalletDAO;

/**
 *
 * @author Phong
 */
public class OrderController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @SuppressWarnings("empty-statement")
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            if (request.getParameter("action") != null) {
                switch (request.getParameter("action")) {
                    case "newOrder": {
                        newOrder(request, response);
                        break;
                    }
                    case "cancelOrder": {
                        cancelOrder(request,response);
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

    private synchronized void newOrder(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String query = "SELECT * FROM Product WHERE ProductID = " + request.getParameter("productID");
        int serviceID = Integer.valueOf(request.getParameter("serviceID"));
        Product product = null;
        try {
            product = new ProductDAO().selectProduct(query).get(0);
        } catch (Exception ex) {
            response.sendRedirect("/ServiceforStudentManagement" + request.getParameter("link").split("ServiceforStudentManagement")[1] + "?serviceID="+ serviceID +"&error=productIDError");
        }
        int amount = Integer.valueOf(request.getParameter("txtAmount"));
        if (product.getUnit().equals("piece") && amount > product.getQuantity()) {
            response.sendRedirect("/ServiceforStudentManagement" + request.getParameter("link").split("ServiceforStudentManagement")[1] + "?serviceID="+ serviceID +"&error=amountError");
        } else {
            Account account = (Account) request.getSession().getAttribute("account");
            int balance = 0;
            try {
                balance = new WalletDAO().selectWallet("SELECT * FROM Wallet WHERE WalletID = " + account.getWalletID()).get(0).getBalance();
            } catch (Exception ex) {
                response.sendRedirect("/ServiceforStudentManagement/Home.jsp");
            }
            if (balance < amount * product.getPrice()) {
                response.sendRedirect("/ServiceforStudentManagement" + request.getParameter("link").split("ServiceforStudentManagement")[1] + "?serviceID="+ serviceID +"&error=balanceError");
            } else {
                try {
                    if (product.getUnit().equals("piece")) {
                        new ProductDAO().setQuantity(product.getProductID(), product.getQuantity() - amount);
                    } 
                    new WalletDAO().setBalance(account.getWalletID(), balance - amount * product.getPrice());
                    String providerName = product.getProviderName();
                    int productID = product.getProductID();
                    String username = account.getAccountName();
                    int price = product.getPrice();
                    int quantity = amount;
                    Calendar cal = Calendar.getInstance();
                    Date startDate = cal.getTime();
                    Date endDate = cal.getTime();
                    String status = "Shipping";
                    if (product.getUnit().equals("day")) {
                        cal.add(Calendar.DATE, product.getQuantity());
                        endDate = cal.getTime();
                    }
                    new OrderDAO().insertOrder(new Order(serviceID, providerName, productID, username, 
                            price, quantity, startDate, endDate, status));
                    response.sendRedirect("/ServiceforStudentManagement" + request.getParameter("link").split("ServiceforStudentManagement")[1] + "?serviceID="+ serviceID);
                } catch (Exception ex) {
                    Logger.getLogger(OrderController.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
        }

    }

    private void cancelOrder(HttpServletRequest request, HttpServletResponse response) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
