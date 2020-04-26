/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.AccountDAO;

/**
 *
 * @author Phong
 */
public class HeaderController extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
            if (request.getParameter("action") != null) {
//                get action command
                switch (request.getParameter("action")) {
                    case "login": {
                        login(request, response);
                        break;
                    }
                    case "register": {
                        register(request, response);
                        break;
                    }
                    case "forgotPassword": {
                        forgotPassword(request, response);
                        break;
                    }
                }
            } else {
//                log out
                HttpSession session = request.getSession();
                session.setAttribute("account", "");
                response.sendRedirect("/ServiceforStudentManagement/Home.jsp");
            }

        } catch (Exception ex) {
            Logger.getLogger(HeaderController.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    void forgotPassword(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }
    
    void register(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //get data
        
        //validate
        
        //insert into Account table
        
        //login - init session
        
        //redirect
    }
    
    void login(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            //get data
            System.out.println(request.getParameter("link"));
            String username = request.getParameter("username");
            String password = request.getParameter("pwd");
            List<Account> list = new AccountDAO().selectAccountByName(username);
            //validate
            if (!list.isEmpty()) {
                Account acc = list.get(0);
                if (acc.getPassword().equals(password)) {
                    //init session
                    HttpSession session = request.getSession();
                    session.setAttribute("account", acc);
                    //redirect current page
                    response.sendRedirect("/ServiceforStudentManagement"+request.getParameter("link").split("ServiceforStudentManagement")[1]); 
                    return;
                }
            }
            //redirect current link with param error
            response.sendRedirect("/ServiceforStudentManagement"+request.getParameter("link").split("ServiceforStudentManagement")[1] + "?error=loginError"); 
            return;
        } catch (Exception ex) {
            Logger.getLogger(HeaderController.class.getName()).log(Level.SEVERE, null, ex);
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

}
