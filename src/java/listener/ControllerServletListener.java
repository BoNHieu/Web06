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

    ServletContext context;

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        context = sce.getServletContext();
        context.setAttribute("listProducts", productSessionBean.findRange(new int[]{0, 10}));
        context.setAttribute("listCategorys", categorySessionBean.findRange(new int[]{0, 10}));
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
