/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author 84969
 */
public class Product {
    private int id;
    private int category_id;
    private String name;
    private String image;
    private String description;
    private int count;
    private int price_output;
    
    public int getId(){
        return id;
    }
    public void setId(int id){
        this.id = id;
    }
     public int getCategoryId(){
        return category_id;
    }
    public void setCategoryId(int category_id){
        this.category_id = category_id;
    }
      public String getName(){
        return name;
    }
    public void setName(String name){
        this.name = name;
    }
    public String getImage(){
        return image;
    }
    public void setImage(String image){
        this.image = image;
    }
        public String getDescription(){
        return description;
    }
    public void setDescription(String description){
        this.description = description;
    }
    public int getCount(){
        return count;
    }
    public void setCount(int count){
        this.count = count;
    }
      public int getPriceOutput(){
        return price_output;
    }
    public void setPriceOutput(int price_output){
        this.price_output = price_output;
    }
}
