package sessionbean;


import Entity.Customers;
import Entity.OrderDetails;
import Entity.Orders;
import Entity.Products;
import cart.ShoppingCartItem;
import cart.ShoppingCart;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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
import sessionbean.CustomerOrderSessionBean;
import sessionbean.CustomerSessionBean;
import sessionbean.OrderedProductSessionBean;
import sessionbean.ProductSessionBean;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 *


/**
 *
 * @author 84969
 */
@Stateless
@TransactionManagement(TransactionManagementType.CONTAINER)
public class OrderManager {

    @EJB
    private CustomerOrderSessionBean customerOrderSB;
    @EJB
    private ProductSessionBean productSB;
    @EJB
    private OrderedProductSessionBean orderedProductSB;
    @EJB
    private CustomerSessionBean customerSB;

    @PersistenceContext(unitName = "Web06PU")
    private EntityManager em;
    @Resource
    private SessionContext context;

    @TransactionAttribute(TransactionAttributeType.REQUIRED)
    public int placeOrder(String firstName, String lastName, String email, String phone, String address, String country, String state, String zip, ShoppingCart cart) {
        try {
            Customers customer = addCustomer(firstName, lastName, email, phone, address,
                    country, state, zip);
            Orders order = addOrder(customer, cart);
            addOrderedItems(order, cart);
            return order.getId();
        } catch (Exception e) {
            context.setRollbackOnly();
            e.printStackTrace();
            return 0;
        }
    }

    private Customers addCustomer(String firstName, String lastName, String email, String phone, String address, String country, String state, String zip) {
        Customers customer = new Customers();
        customer.setFirstName(firstName);
        customer.setLastName(lastName);
        customer.setEmail(email);
        customer.setPhone(phone);
        customer.setAddress(address);
        customer.setCountry(country);
        customer.setState(state);
        customer.setState(zip);
        customerSB.create(customer);
        return customer;
    }

    private Orders addOrder(Customers customer, ShoppingCart cart) {
        // set up customer order
        Orders order = new Orders();
        order.setCustomerId(customer);
        order.setStatus("NOT CONFIRM");
        // create confirmation number
        DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
//        order.setDate(df.format(new Date()));
        customerOrderSB.create(order);
        return order;
    }

    private void addOrderedItems(Orders order, ShoppingCart cart) {
        List<ShoppingCartItem> items = cart.getItems();
        // iterate through shopping cart and create OrderedProducts
        for (ShoppingCartItem scItem : items) {
            Products productId = scItem.getProduct();
            // set up primary key object
            OrderDetails orderDetails = new OrderDetails();
            orderDetails.setOrderId(order);
            orderDetails.setProductId(productId);
            // create ordered item using PK object            // set quantity
            orderDetails.setCount((int)scItem.getQuantity());
            orderedProductSB.create(orderDetails);
        }
    }

    public Map getOrderDetails(int orderId) {
        Map orderMap = new HashMap();
        // get order
        Orders order = customerOrderSB.find(orderId);
        // get customer
        Customers customer = order.getCustomerId();
        // get all ordered products
        List<OrderDetails> orderedProducts
                = orderedProductSB.findByOrderId(orderId);
        // get product details for ordered items
        List<Products> products = new ArrayList<Products>();
        for (OrderDetails op : orderedProducts) {
            Products p = (Products) productSB.find(op.getProductId());
            products.add(p);
        }
        // add each item to orderMap
        orderMap.put("orderRecord", order);
        orderMap.put("customer", customer);
        orderMap.put("orderedProducts", orderedProducts);
        orderMap.put("products", products);
        return orderMap;
    }
}
