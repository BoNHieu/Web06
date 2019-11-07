<%-- 
    Document   : index
    Created on : Oct 28, 2019, 10:51:28 PM
    Author     : 84969
--%>
<div class="container">
    <div class="row">
        <div class="col-lg-3 card">
            <!-- Categories Menu -->

            <div>

                <div class="card-header text-center" style="font-size: 18px;">Categories</div>
                <ul class="cat_menu">
                    <c:forEach var="c" items="${listCategory}">
                        <li><a href="#">${c.getName()}<i class="fas fa-chevron-right"></i></a></li>
                            </c:forEach>
                </ul>
            </div>
        </div>

        <div class="col-lg-9" style="z-index:1;padding-left: 50px;">
            <!-- Product Panel -->
            <div class="product_panel panel active">
                <div class="arrivals_slider slider">

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
</div>
