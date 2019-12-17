/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionbean;

/**
 *
 * @author 84969
 */
import Entity.Customers;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author ThanDieu
 */
@Stateless
public class CustomerSessionBean extends AbstractSessionBean<Customers> {

    @PersistenceContext(unitName = "Web06PU")
    private EntityManager em;

    protected EntityManager getEntityManager() {
        return em;
    }

    public CustomerSessionBean() {
        super(Customers.class);
    }
}
