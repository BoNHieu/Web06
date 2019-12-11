/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sessionbean;

import Entity.Products;
import javax.annotation.processing.SupportedSourceVersion;
import javax.ejb.Stateless;
import static javax.lang.model.SourceVersion.RELEASE_8;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author 84969
 */

@SupportedSourceVersion(RELEASE_8)

@Stateless
public class ProductSessionBean extends AbstractSessionBean<Products> {

    public ProductSessionBean() {
        super(Products.class);
    }
@PersistenceContext(unitName = "Web06PU")
private EntityManager em;
    @Override
    protected EntityManager getEntityManager() {
        return em;
    }
    
}
