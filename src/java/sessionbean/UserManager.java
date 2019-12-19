/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionbean;

import Entity.Users;
import javax.annotation.Resource;
import javax.ejb.EJB;
import javax.ejb.SessionContext;
import javax.ejb.Stateless;
import javax.ejb.TransactionAttribute;
import javax.ejb.TransactionAttributeType;
import javax.ejb.TransactionManagement;
import javax.ejb.TransactionManagementType;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author 84969
 */
@Stateless
@TransactionManagement(TransactionManagementType.CONTAINER)
public class UserManager {

    @EJB
    private UserSessionBean userSB;

    @PersistenceContext(unitName = "Web06PU")
    private EntityManager em;
    @Resource
    private SessionContext context;

    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public Users checkLogin(String username){
       Users user = userSB.findByUsername(username);
       return user;
    }
    
     public Users create(Users user){
       return userSB.create(user);
    }
}