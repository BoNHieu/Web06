<%-- 
    Document   : viewCart.jsp
    Created on : Dec 15, 2019, 5:55:21 PM
    Author     : 84969
--%>

<c:set var='view' value='/viewCart' scope='session' />

<div class="cart_section">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <div class="cart_container">
                    <div class="cart_title">Shopping Cart</div>
                    <div class="cart_items">
                        <ul class="cart_list">
                            <c:forEach var="cartItem" items="${cart.items}" varStatus="iter">
                                <c:set var="p" value="${cartItem.product}"/>
                                <form action="<c:url value='updateToCart'/>" method="GET" key=${p.getId()}>
                                        <input type="hidden"
                                           name="id"
                                           value= "${p.getId()}"/>
                                    <li class="cart_item clearfix">
                                        <div class="cart_item_image"><img src="${initParam.imgProductPath}${p.getImage()}" alt=""></div>
                                        <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
                                            <div class="cart_item_name cart_info_col">
                                                <div class="cart_item_title">Name</div>
                                                <div class="cart_item_text">${p.getName()}</div>
                                            </div>
                                            <div class="cart_item_quantity cart_info_col">
                                                <div class="cart_item_title">Quantity</div>
                                                <div class="product_quantity" style="margin-top: 10px;">
                                                    <span>Quantity: </span>
                                                    <input id="quantity_input" type="text" pattern="[0-9]*" value=${cartItem.getQuantity()} name="quantity_input">
                                                    <div class="quantity_buttons">
                                                        <div id="quantity_inc_button" class=" quantity_inc quantity_control"><i class="fas fa-chevron-up"></i></div>
                                                        <div id="quantity_dec_button" class=" quantity_dec quantity_control"><i class="fas fa-chevron-down"></i></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="cart_item_price cart_info_col">
                                                <div class="cart_item_title">Price</div>
                                                <div class="cart_item_text">$${p.getPriceOutput()}</div>
                                            </div>
                                            <div class="cart_item_total cart_info_col">
                                                <div class="cart_item_title">Total</div>
                                                <div class="cart_item_text">${cartItem.getTotal()}</div>
                                            </div>
                                            <div class="cart_item_total cart_info_col">
                                                <div class="cart_item_title">Update</div>
                                                <button type="submit" class="cart_item_text"><i class="fas fa-edit"></i></button>
                                            </div>
                                        </div>
                                    </li>
                                </form>
                            </c:forEach>
                        </ul>
                    </div>

                    <!-- Order Total -->
                    <div class="order_total">
                        <div class="order_total_content text-md-right">
                            <div class="order_total_title">Order Total:</div>
                            <div class="order_total_amount">$${cart.getTotal()}</div>
                        </div>
                    </div>

                    <div class="cart_buttons">
                        <a href="/Web06" type="button" class="button cart_button_clear">Back to List</a>
                        <a href="/Web06/checkout.jsp" class="button cart_button_checkout">Checkout</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Newsletter -->

<div class="newsletter">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="newsletter_container d-flex flex-lg-row flex-column align-items-lg-center align-items-center justify-content-lg-start justify-content-center">
                    <div class="newsletter_title_container">
                        <div class="newsletter_icon"><img src="images/send.png" alt=""></div>
                        <div class="newsletter_title">Sign up for Newsletter</div>
                        <div class="newsletter_text"><p>...and receive %20 coupon for first shopping.</p></div>
                    </div>
                    <div class="newsletter_content clearfix">
                        <form action="#" class="newsletter_form">
                            <input type="email" class="newsletter_input" required="required" placeholder="Enter your email address">
                            <button class="newsletter_button">Subscribe</button>
                        </form>
                        <div class="newsletter_unsubscribe_link"><a href="#">unsubscribe</a></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>