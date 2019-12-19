package sessionbean;

import Entity.Products;
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author 84969
 */
@Stateless
@TransactionManagement(TransactionManagementType.CONTAINER)
public class ProductManager {

    @EJB
    private ProductSessionBean productSB;

    @PersistenceContext(unitName = "Web06PU")
    private EntityManager em;
    @Resource
    private SessionContext context;

    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public void create(Products product) {
        try {
            productSB.create(product);
        } catch (Exception e) {
            context.setRollbackOnly();
            e.printStackTrace();
        }
    }
}
