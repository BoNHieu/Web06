/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionbean;

import Entity.Users;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author 84969
 */
@Stateless
public class UserSessionBean extends
        AbstractSessionBean<Users> {

    @PersistenceContext(unitName = "Web06PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public UserSessionBean() {
        super(Users.class);
    }

    public Users find(Object id) {
        Users user = em.find(Users.class, id);
        em.refresh(user);
        return user;
    }

    public Users findByUsername(String username) {
        return (Users) em.createNamedQuery("Users.findByUsername").setParameter("username",
                username).getSingleResult();
    }
}
