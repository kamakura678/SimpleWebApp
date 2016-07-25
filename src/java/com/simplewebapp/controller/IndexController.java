/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.simplewebapp.controller;

import com.simplewebapp.model.Artist;
import com.simplewebapp.model.Job;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Irvan
 */
@WebServlet(name = "IndexController", urlPatterns = {"/"})
public class IndexController extends HttpServlet {

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
            /*
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet IndexController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet IndexController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            */
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
//        processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        String fullName = request.getParameter("fullName");
        String dob = request.getParameter("dob");    
        String email = request.getParameter("email");
        String job = request.getParameter("job");
        
        Date DoB = null;
        if(dob != null && !"".equals(dob)) {
            String date[] = dob.split("-");
            Calendar cal = Calendar.getInstance();
            cal.set(Calendar.DATE, Integer.valueOf(date[0]));
            cal.set(Calendar.MONTH, Integer.valueOf(date[1]));
            cal.set(Calendar.YEAR, Integer.valueOf(date[2]));
            DoB = cal.getTime();
        }
        
        Artist artist = new Artist();
        artist.setFullName(fullName);
        artist.setDob(DoB);
        artist.setEmail(email);
        artist.setJob(Job.None);
        if(job != null && !"".equals(job)) {
            artist.setJob(Job.valueOf(job));
        }
        
        request.setAttribute("artist", artist);
        
        request.getRequestDispatcher("index.jsp").forward(request, response);
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
        response.setContentType("text/html;charset=UTF-8");
        String fullName = request.getParameter("fullName");
        String dob = request.getParameter("dob");    
        String email = request.getParameter("email");
        String job = request.getParameter("job");
        
        Date DoB = null;
        if(dob != null && !"".equals(dob)) {
            String date[] = dob.split("-");
            Calendar cal = Calendar.getInstance();
            cal.set(Calendar.DATE, Integer.valueOf(date[0]));
            cal.set(Calendar.MONTH, Integer.valueOf(date[1]) - 1);
            cal.set(Calendar.YEAR, Integer.valueOf(date[2]));
            DoB = cal.getTime();
        }
        
        Artist artist = new Artist();
        artist.setFullName(fullName);
        artist.setDob(DoB);
        artist.setEmail(email);
        artist.setJob(Job.None);
        if(job != null && !"".equals(job)) {
            artist.setJob(Job.valueOf(job));
        }
        
        request.setAttribute("artist", artist);
        request.getRequestDispatcher("index.jsp").forward(request, response);
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
