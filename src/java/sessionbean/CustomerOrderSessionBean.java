/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionbean;

import Entity.Orders;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author 84969
 */
@Stateless
public class CustomerOrderSessionBean extends
        AbstractSessionBean<Orders> {

    @PersistenceContext(unitName = "Web06PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public CustomerOrderSessionBean() {
        super(Orders.class);
    }

    public Orders find(Object id) {
        Orders order = em.find(Orders.class, id);
        em.refresh(order);
        return order;
    }

    public Orders findByCustomer(Object customer) {
        return (Orders) em.createNamedQuery("Orders.findByCustomer").setParameter("customer",
                customer).getSingleResult();
    }
}
