/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.Users;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sessionbean.UserManager;

/**
 *
 * @author 84969
 */
public class LoginController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @EJB
    private UserManager userManager;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            request.setCharacterEncoding("UTF-8");
            String userPath = request.getServletPath();
            HttpSession session = request.getSession();
            session.setMaxInactiveInterval(123);
            String username = request.getParameter("username");
            String password = request.getParameter("pass");
            if (userPath.equals("/login")) {
                Users user = userManager.checkLogin(username);
                if (user != null) {
                    String role = user.getRole();
                    session.setAttribute("role", role);
                    session.setAttribute("username", user.getUsername());
                    session.setAttribute("name", user.getName());
                    if (role.equals("ADMIN")) {
                        try {
                            request.getRequestDispatcher("/admin/index.jsp").forward(request, response);
                        } catch (ServletException | IOException ex) {
                        }
                    } else {
                        try {
                            request.getRequestDispatcher("index.jsp").forward(request, response);
                        } catch (ServletException | IOException ex) {
                        }
                    }

                } else {
                    try {
                        request.getRequestDispatcher("login.jsp").forward(request, response);
                    } catch (ServletException | IOException ex) {
                    }
                }
            } else if (userPath.equals("/register")) {
                session.invalidate();
                  String name = request.getParameter("name");
                String userName = request.getParameter("username");
                String email = request.getParameter("email");
                String passWord = request.getParameter("password");
                String repassword = request.getParameter("repassword");
                String role = "User";
                
                Users user = new Users();
                user.setEmail(email);
                user.setName(name);
                user.setPassword(password);
                user.setRole(role);
                user.setUsername(username);
                
                user = userManager.create(user);
                if(user != null){
                     try {
                            request.getRequestDispatcher("login.jsp").forward(request, response);
                        } catch (ServletException | IOException ex) {
                        }
                }
                else{
                     try {
                            request.getRequestDispatcher("register.jsp").forward(request, response);
                        } catch (ServletException | IOException ex) {
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

}
