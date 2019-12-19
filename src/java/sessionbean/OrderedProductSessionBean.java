/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionbean;

import Entity.OrderDetails;
import Entity.Orders;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author 84969
 */
@Stateless
public class OrderedProductSessionBean extends AbstractSessionBean<OrderDetails> {

    @PersistenceContext(unitName = "Web06PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public OrderedProductSessionBean() {
        super(OrderDetails.class);
    }

    public List<OrderDetails> findByOrderId(Orders order) {
        return em.createNamedQuery("OrderDetails.findByOrderId").setParameter("orderId",order).getResultList();
    }
}
