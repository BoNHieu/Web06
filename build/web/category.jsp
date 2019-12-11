<%-- 
    Document   : category
    Created on : Nov 29, 2019, 9:02:14 AM
    Author     : 84969
--%>

<%@page import="Entity.Categories"%>
<%@page import="java.util.List"%>
<%@page import="Entity.Products"%>

<!DOCTYPE html>
<%
    session.setAttribute("view", "/category");
    Categories category = (Categories) session.getAttribute("selectedCategory");
%>

<div class="container">
    <div>
        <h3>
            <%=category.getName()%>
        </h3>
    </div>
    <div>
        <div class="product_panel panel active">
            <div class="arrivals_slider slider">
                <%
                    List<Products> categoryProducts = (List<Products>) session.getAttribute("categoryProducts");
                %>  
                <c:forEach var="p" items="${listProduct}">
                    <!-- Slider Item -->
                    <div class="arrivals_slider_item">
                        <div class="border_active"></div>
                        <div class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
                            <div class="product_image d-flex flex-column align-items-center justify-content-center"><img src="${initParam.imgProductPath}${p.getImage()}" alt=""></div>
                            <div class="product_content">
                                <div class="product_price">${p.getPriceOutput()}</div>
                                <div class="product_name"><div><a href="#">${p.getName()}</a></div></div>
                                <div class="product_extras">
                                    <div class="product_color">
                                        <input type="radio" checked name="product_color" style="background:#b19c83">
                                        <input type="radio" name="product_color" style="background:#000000">
                                        <input type="radio" name="product_color" style="background:#999999">
                                    </div>
                                    <button class="product_cart_button active">Add to Cart</button>
                                </div>
                            </div>
                            <div class="product_fav"><i class="fas fa-heart"></i></div>
                            <ul class="product_marks">
                                <li class="product_mark product_discount"></li>
                                <li class="product_mark product_new">new</li>
                            </ul>
                        </div>
                    </div>
                </c:forEach>



            </div>
            <div class="arrivals_slider_dots_cover"></div>
        </div>
    </div>
</div>