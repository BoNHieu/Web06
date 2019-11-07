/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Model.Category;
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
public class CategoryBusiness {
    public List<Category> getCategory() throws NamingException{
        try{
            Context initContext = new InitialContext();
            DataSource ds = (DataSource)initContext.lookup("java:comp/env/jdbc/web06");
            Connection conn = ds.getConnection();
            Statement sttm = conn.createStatement();
            String sql = "select * from Categories";
            ResultSet rs = sttm.executeQuery(sql);
            ArrayList<Category> prods = new ArrayList<>();
            while(rs.next()){
                Category c = new Category();
                c.setId(rs.getInt("id"));
                c.setName(rs.getString("name"));
                prods.add(c);
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
