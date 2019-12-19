<%-- 
    Document   : index
    Created on : Oct 28, 2019, 10:51:28 PM
    Author     : 84969
--%>

<!-- Characteristics -->
<div class="characteristics">
    <div class="container">
        <div class="row">

            <!-- Char. Item -->
            <div class="col-lg-3 col-md-6 char_col">

                <div class="char_item d-flex flex-row align-items-center justify-content-start">
                    <div class="char_icon"><img src="images/char_1.png" alt=""></div>
                    <div class="char_content">
                        <div class="char_title">Mi?n phí giao hàng</div>
                        <div class="char_subtitle">v?i ??n hàng t? 200k</div>
                    </div>
                </div>
            </div>

            <!-- Char. Item -->
            <div class="col-lg-3 col-md-6 char_col">

                <div class="char_item d-flex flex-row align-items-center justify-content-start">
                    <div class="char_icon"><img src="images/char_2.png" alt=""></div>
                    <div class="char_content">
                        <div class="char_title">??i tr? mi?n phí</div>
                        <div class="char_subtitle">trong vòng 7 ngày v?i ??n hàng l?i</div>
                    </div>
                </div>
            </div>

            <!-- Char. Item -->
            <div class="col-lg-3 col-md-6 char_col">

                <div class="char_item d-flex flex-row align-items-center justify-content-start">
                    <div class="char_icon"><img src="images/char_3.png" alt=""></div>
                    <div class="char_content">
                        <div class="char_title">Thanh toán thu?n ti?n</div>
                        <div class="char_subtitle">cho phép thanh toán b?ng ví ?i?n t?</div>
                    </div>
                </div>
            </div>

            <!-- Char. Item -->
            <div class="col-lg-3 col-md-6 char_col">

                <div class="char_item d-flex flex-row align-items-center justify-content-start">
                    <div class="char_icon"><img src="images/char_4.png" alt=""></div>
                    <div class="char_content">
                        <div class="char_title">Cam k?t chính hãng</div>
                        <div class="char_subtitle"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<c:set var='view' value='/index' scope='session' />
<div class="container">
    <div class="row">
        <div class="col-lg-3 card">
            <!-- Categories Menu -->

            <div>

                <div class="card-header text-center" style="font-size: 18px;">Categories</div>
                <ul class="cat_menu">
                    <c:forEach var="c" items="${listCategorys}">
                        <li><a href="<c:url value='category?${c.getId()}'/>">${c.getName()}<i class="fas fa-chevron-right"></i></a></li>
                            </c:forEach>
                </ul>
            </div>
        </div>

        <div class="col-lg-9" style="z-index:1;padding-left: 50px;">
            <!-- Product Panel -->
            <div class="product_panel panel active">
                <div class="arrivals_slider slider">
                    <c:forEach var="p" items="${listProducts}">
                        <!-- Slider Item -->
                        <div class="arrivals_slider_item">
                            <div class="border_active"></div>
                            <div class="product_item is_new d-flex flex-column align-items-center justify-content-center text-center">
                                <div class="product_image d-flex flex-column align-items-center justify-content-center"><a href="<c:url value='product?${p.getId()}'/>">${p.getName()}<img src="${initParam.imgProductPath}${p.getImage()}" alt=""></a></div>
                                <div class="product_content">
                                    <div class="product_price">$${p.getPriceOutput()}</div>
                                    <div class="product_name"><div><a href="<c:url value='product?${p.getId()}'/>">${p.getName()}</a></div></div>
                                    <div class="product_extras">
                                        <div class="product_color">
                                            <input type="radio" checked name="product_color" style="background:#b19c83">
                                            <input type="radio" name="product_color" style="background:#000000">
                                            <input type="radio" name="product_color" style="background:#999999">
                                        </div>
                                        <a href="<c:url value='addToCart?${p.getId()}'/>"  class="button product_cart_button active">Add to Cart</a>
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
                <div class="featured_slider_dots_cover"></div>
            </div>




        </div>
    </div>
</div>
