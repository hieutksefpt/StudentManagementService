/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Account;
import entity.Feedback;
import entity.Service;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.AccountDAO;
import model.FeedbackDAO;
import model.ServiceDAO;

/**
 *
 * @author Tu Khac Hieu
 */
public class FeedbackController extends HttpServlet {

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
            if (request.getParameter("type") == null
                    || request.getParameter("type").equals("admin")) {
                RequestDispatcher rd = request.getRequestDispatcher("studentProvider/Feedback.jsp");
                rd.forward(request, response);
            } else {
                String type = request.getParameter("type");
                if (type.equalsIgnoreCase("provider")) {
                    Account acc = (Account) request.getSession().getAttribute("account");
                    String accountName = acc.getAccountName();
                    List<Service> list = new ServiceDAO().selectAllService();
                    request.setAttribute("list", list);
                    RequestDispatcher rd = request.getRequestDispatcher("studentProvider/Feedback.jsp");
                    rd.forward(request, response);
                }
            }
            /* TODO output your page here. You may use following sample code. */

        } catch (Exception ex) {
            Logger.getLogger(FeedbackController.class.getName()).log(Level.SEVERE, null, ex);
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

//    private void changeStatusFeedback(HttpServletRequest request, HttpServletResponse response) {
//        try {
//            String username = request.getParameter("username");
//            FeedbackDAO adao = new FeedbackDAO();
//            Feedback feed = adao.insertService(accountName).get(0);
//            adao.setAccountStatusByName(accountName, acc.getStatus().equals("Banned")? "Actived" : "Banned");
//            response.sendRedirect("/ServiceforStudentManagement/admin/ListAccount.jsp");
//        } catch (Exception ex) {
//        }
//    }
//    
//     private void insert(HttpServletRequest request, HttpServletResponse response) {
//        try {
//            String username = request.getParameter("username");
//            FeedbackDAO adao = new FeedbackDAO();
//            Feedback feed = adao.insertService(accountName).get(0);
//            adao.setAccountStatusByName(accountName, acc.getStatus().equals("Banned")? "Actived" : "Banned");
//            response.sendRedirect("/ServiceforStudentManagement/admin/ListAccount.jsp");
//        } catch (Exception ex) {
//        }
//    }
}
