/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.Categories;
import Entity.Products;
import Entity.Suppliers;
import java.io.IOException;
import java.io.PrintWriter;
import javax.annotation.Resource;
import javax.ejb.EJB;
import javax.ejb.SessionContext;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import sessionbean.CategorySessionBean;
import sessionbean.ProductSessionBean;
import sessionbean.SupplierSessionBean;

/**
 *
 * @author 84969
 */
public class ProductController extends HttpServlet {

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
    private CategorySessionBean categorySB;

    @EJB
    private SupplierSessionBean supplierSB;

    @EJB
    private ProductSessionBean productSB;
    
    @PersistenceContext(unitName = "Web06PU")
    private EntityManager em;

//    @Resource
//    private SessionContext context;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {

            String name = request.getParameter("name");
            String count = request.getParameter("count");
            String description = request.getParameter("descirption");
            String categoryId = request.getParameter("categoryId");
            String supplierId = request.getParameter("supplierId");
            String price_input = request.getParameter("price_input");
            String price_output = request.getParameter("price_output");

            Products product = new Products();
            product.setName(name);
            product.setDescription(description);
            Categories category = categorySB.find(Integer.parseInt(categoryId));
            product.setCategoryId(category);
            Suppliers supplier = supplierSB.find(Integer.parseInt(supplierId));
            product.setSupplierId(supplier);
            product.setCount(Integer.parseInt(count));
            product.setPriceOutput(Integer.valueOf(price_output));
            product.setPriceInput(Integer.valueOf(price_input));
            try {
                productSB.create(product);
                request.getRequestDispatcher("/Product/create").forward(request, response);
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
