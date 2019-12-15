/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Entity.Categories;
import Entity.Products;
import cart.ShoppingCart;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.naming.NamingException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import sessionbean.CategorySessionBean;
import sessionbean.ProductSessionBean;

/**
 *
 * @author 84969
 */
@WebServlet(name = "HomeController",
        urlPatterns = {"HomeController",
            "/category",
            "/product",
            "addToCart",})
public class HomeController extends HttpServlet {

    @EJB
    private CategorySessionBean categorySB;

    @EJB
    private ProductSessionBean productSB;

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
        String userPath = request.getServletPath();
        HttpSession session = request.getSession();
         session.setMaxInactiveInterval(3600);
        if (userPath.equals("/category")) {
            String categoryId = request.getQueryString();
            if (categoryId != null) {
                Categories selectedCategory;
                List<Products> categoryProducts;
                selectedCategory = categorySB.find(Integer.parseInt(categoryId));
                session.setAttribute("selectedCategory", selectedCategory);
                categoryProducts = (List<Products>) selectedCategory.getProductsCollection();
                session.setAttribute("listProducts", categoryProducts);
                try {
                    request.getRequestDispatcher("index.jsp").forward(request, response);
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
//                }
            }
        } else if (userPath.equals("/product")) {
            String productId = request.getQueryString();
            if (productId != null) {
                Products selectedProduct;
                selectedProduct = productSB.find(Integer.parseInt(productId));
                session.setAttribute("selectedProduct", selectedProduct);
                Categories category = selectedProduct.getCategoryId();
                session.setAttribute("category", category);
                try {
                    request.getRequestDispatcher("product.jsp").forward(request, response);
                } catch (Exception ex) {
                    ex.printStackTrace();
                }
            }
        } else if (userPath.equals("/viewCart")) {
//            String clear = request.getParameter("clear");
//            if ((clear != null) && clear.equals("true")) {
//                ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
//                cart.clear();
//            }
        } else if (userPath.equals("/addToCart")) {
            ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
            if (cart == null) {
                cart = new ShoppingCart();
                session.setAttribute("cart", cart);
            }
            String productId = request.getParameter("id");
            if (productId == null) {
                productId = request.getQueryString();
            }
            if (!productId.isEmpty()) {
                Products product = productSB.find(Integer.parseInt(productId));
                String quantityText = request.getParameter("quantity_input");
                if (quantityText != null) {
                    short quantity = Short.parseShort(quantityText);
                    cart.addItemWithQuantity(product, quantity);
                }
                else {
                    cart.addItem(product);
                }
            }
//            String userView = (String) session.getAttribute("view");
//            userPath = userView;
            try {
                response.sendRedirect(request.getContextPath() + "/viewCart.jsp");
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        else if (userPath.equals("/updateToCart")) {
            ShoppingCart cart = (ShoppingCart) session.getAttribute("cart");
            String productId = request.getParameter("id");
            if (productId == null) {
                productId = request.getQueryString();
            }
            if (!productId.isEmpty()) {
                Products product = productSB.find(Integer.parseInt(productId));
                String quantityText = request.getParameter("quantity_input");
                if (quantityText != null) {
                    cart.update(product, quantityText);
                }
            }
//            String userView = (String) session.getAttribute("view");
//            userPath = userView;
            try {
                response.sendRedirect(request.getContextPath() + "/viewCart.jsp");
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
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
