/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.Product;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 *
 * @author 84969
 */
public class ProductBusiness {
    public List<Product> getProduct() throws NamingException{
        try{
            Context initContext = new InitialContext();
            DataSource ds = (DataSource)initContext.lookup("java:comp/env/jdbc/web06");
            Connection conn = ds.getConnection();
            Statement sttm = conn.createStatement();
            String sql = "select * from Products";
            ResultSet rs = sttm.executeQuery(sql);
            ArrayList<Product> prods = new ArrayList<>();
            while(rs.next()){
                Product product = new Product();
                product.setId(rs.getInt("id"));
                product.setCategoryId(rs.getInt("category_id"));
                product.setName(rs.getString("name"));
                product.setImage(rs.getString("image"));
                product.setDescription(rs.getString("Description"));
                product.setCount(rs.getInt("count"));
                product.setPriceOutput(rs.getInt("price_output"));
                prods.add(product);
            }
            return prods;
        } catch(SQLException ex){
            
        }
//        catch (ClassNotFoundException ex){
//            Logger.getLogger(CategoryBusiness.class.getName()).log(Level.SEVERE,null,ex);
//        }
        return null;
    }
}
