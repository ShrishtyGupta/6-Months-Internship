/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.learn.icinbank.servlets;

import com.learn.icinbank.dao.ReqMDao;
import com.learn.icinbank.dao.UserDao;
import com.learn.icinbank.entities.Trans;
import com.learn.icinbank.entities.User;
import com.learn.icinbank.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author hp
 */
public class ReqMServlet extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {try {
                                int transt_user_id = Integer.parseInt(request.getParameter("transt_user_id"));
                               int trans_Amt = Integer.parseInt(request.getParameter("trans_Amt"));
                                String acc_toacc = request.getParameter("acc_toacc");
                                String acc_tobank = request.getParameter("acc_tobank");
                               
    
                //creating user object to store data
                
                Trans s = new Trans();
                s.setTransAmt(trans_Amt);
                java.util.Date date=new java.util.Date(); 
                s.setTransDate(date);
                s.setAccTobank(acc_tobank);

                s.setTransStatus(true);
                s.setAccToacc(acc_toacc);
                
                
               
                UserDao udao = new UserDao(FactoryProvider.getFactory());
                User ut= udao.getUserById(transt_user_id);
                s.setTranst(ut);
                
                ReqMDao tdao = new ReqMDao(FactoryProvider.getFactory());
                tdao.saveTrans(s);
                HttpSession httpSession = request.getSession();
                
                httpSession.setAttribute("message_1", " Your Transaction is successful! Check BalanceSheet for details "  );    
              
                response.sendRedirect("userservices.jsp");
                return;
                
                
                
                
            } catch (Exception e) {
                e.printStackTrace();
                
                
                
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

}
