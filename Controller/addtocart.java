/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import Model.Registration;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "addtocart", urlPatterns = {"/addtocart"})
public class addtocart extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        Registration r = new Registration(session);
        try {
            if (request.getParameter("addtocart") != null) {
                String p_id = request.getParameter("p_id");
                String status = r.addtocart(p_id);
                if (status.equals("success")) {

                    RequestDispatcher rd = request.getRequestDispatcher("Cart.jsp");
                    rd.forward(request, response);
                }
            }
            else if (request.getParameter("delete") != null) {
                
                
                int c_id = Integer.parseInt(request.getParameter("cid"));
                int status = r.deletecart(c_id);
                if (status > 0) {
                    RequestDispatcher rd = request.getRequestDispatcher("Cart.jsp");
                    rd.forward(request, response);
                }
            }
            else if (request.getParameter("cid") != null) {
                int c_id = Integer.parseInt(request.getParameter("cid"));
                int status = r.deleteproduct(c_id);
                if (status > 0) {
                    RequestDispatcher rd1 = request.getRequestDispatcher("deleteProduct.jsp");
                    rd1.forward(request, response);
                }
            }


        } catch (Exception e) {
            e.printStackTrace();

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
