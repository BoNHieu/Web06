/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entity;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author 84969
 */
@Entity
@Table(name = "product_supplier_relations")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ProductSupplierRelations.findAll", query = "SELECT p FROM ProductSupplierRelations p"),
    @NamedQuery(name = "ProductSupplierRelations.findById", query = "SELECT p FROM ProductSupplierRelations p WHERE p.id = :id"),
    @NamedQuery(name = "ProductSupplierRelations.findByCount", query = "SELECT p FROM ProductSupplierRelations p WHERE p.count = :count"),
    @NamedQuery(name = "ProductSupplierRelations.findByPriceInput", query = "SELECT p FROM ProductSupplierRelations p WHERE p.priceInput = :priceInput"),
    @NamedQuery(name = "ProductSupplierRelations.findByPriceOutput", query = "SELECT p FROM ProductSupplierRelations p WHERE p.priceOutput = :priceOutput"),
    @NamedQuery(name = "ProductSupplierRelations.findByDescription", query = "SELECT p FROM ProductSupplierRelations p WHERE p.description = :description")})
public class ProductSupplierRelations implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Column(name = "count")
    private Integer count;
    @Column(name = "price_input")
    private Long priceInput;
    @Column(name = "price_output")
    private Long priceOutput;
    @Size(max = 200)
    @Column(name = "description")
    private String description;
    @JoinColumn(name = "product_id", referencedColumnName = "id")
    @ManyToOne
    private Products productId;
    @JoinColumn(name = "supplier_id", referencedColumnName = "id")
    @ManyToOne
    private Suppliers supplierId;

    public ProductSupplierRelations() {
    }

    public ProductSupplierRelations(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Long getPriceInput() {
        return priceInput;
    }

    public void setPriceInput(Long priceInput) {
        this.priceInput = priceInput;
    }

    public Long getPriceOutput() {
        return priceOutput;
    }

    public void setPriceOutput(Long priceOutput) {
        this.priceOutput = priceOutput;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Products getProductId() {
        return productId;
    }

    public void setProductId(Products productId) {
        this.productId = productId;
    }

    public Suppliers getSupplierId() {
        return supplierId;
    }

    public void setSupplierId(Suppliers supplierId) {
        this.supplierId = supplierId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ProductSupplierRelations)) {
            return false;
        }
        ProductSupplierRelations other = (ProductSupplierRelations) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Entity.ProductSupplierRelations[ id=" + id + " ]";
    }
    
}
