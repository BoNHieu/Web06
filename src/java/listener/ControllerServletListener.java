/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package listener;

import javax.ejb.EJB;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import sessionbean.CategorySessionBean;
import sessionbean.ProductSessionBean;
import sessionbean.SupplierSessionBean;

/**
 * Web application lifecycle listener.
 *
 * @author 84969
 */
public class ControllerServletListener implements ServletContextListener {

    @EJB
    ProductSessionBean productSessionBean;

    @EJB
    CategorySessionBean categorySessionBean;
    
     @EJB
    SupplierSessionBean supplierSessionBean;

    ServletContext context;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        context = sce.getServletContext();
        context.setAttribute("listProducts", productSessionBean.findRange(new int[]{0, 100}));
        context.setAttribute("listCategorys", categorySessionBean.findRange(new int[]{0, 100}));
        context.setAttribute("listSuppliers", supplierSessionBean.findRange(new int[]{0, 100}));
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
