<%-- 
    Document   : footer
    Created on : Nov 7, 2019, 11:00:43 PM
    Author     : 84969
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<footer class="footer">
    <div class="container">
        <div class="row">

            <div class="col-lg-3 footer_col">
                <div class="footer_column footer_contact">
                    <div class="logo_container">
                        <div class="logo"><a href="#">OneTech</a></div>
                    </div>
                    <div class="footer_title">Hotline trả lời 24/7</div>
                    <div class="footer_phone">0944256106</div>
                    <div class="footer_contact_text">
                        <p>55, Giáp Nhất, Hà Nôi, Việt Nam</p>
                        <p>94, Hòang Mai, Hà N?i, Việt Nam</p>
                    </div>
                    <div class="footer_social">
                        <ul>
                            <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                            <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                            <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                            <li><a href="#"><i class="fab fa-google"></i></a></li>
                            <li><a href="#"><i class="fab fa-vimeo-v"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 offset-lg-3">
                <div class="footer_column">
                    <div class="footer_title">Tìm nhanh</div>
                    <ul class="footer_list">
                        <li><a href="#">Máy tính & Laptop</a></li>
                        <li><a href="#">Máy tính</a></li>
                        <li><a href="#">hần cứng</a></li>
                        <li><a href="#">Điện thoại và máy tính bảng</a></li>
                        <li><a href="#">TV & Audio</a></li>
                    </ul>
                    <div class="footer_subtitle"><li><a href="#">Tiện ích</a></li></div>
                </div>
            </div>


            <div class="col-lg-3">
                <div class="footer_column">
                    <div class="footer_title">Chăm sóc khách</div>
                    <ul class="footer_list">
                        <li><a href="#">Tài khoản</a></li>
                        <li><a href="#">Theo dõi dõi hàng</a></li>
                        <li><a href="#">Danh sách mong muốn</a></li>
                        <li><a href="#">Dịch vụ</a></li>
                        <li><a href="#">Chính sách</a></li>
                        <li><a href="#">Các câu hỏi thường gặp</a></li>
                    </ul>
                </div>
            </div>

        </div>
    </div>
</footer>

<div class="copyright">
    <div class="container">
        <div class="row">
            <div class="col">

                <div class="copyright_container d-flex flex-sm-row flex-column align-items-center justify-content-start">
                    <div class="copyright_content"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </div>
                    <div class="logos ml-sm-auto">
                        <ul class="logos_list">
                            <li><a href="#"><img src="images/logos_1.png" alt=""></a></li>
                            <li><a href="#"><img src="images/logos_2.png" alt=""></a></li>
                            <li><a href="#"><img src="images/logos_3.png" alt=""></a></li>
                            <li><a href="#"><img src="images/logos_4.png" alt=""></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<script src="js/jquery.tools.min.js"></script>
<script>
 $(function () {
 $("#prod_nav ul").tabs("#panes > div", {
 effect: 'fade',
 fadeOutSpeed: 400
 });
 });
</script>
<script>
 $(document).ready(function () {
 $(".pane-list li").click(function () {
 window.location = $(this).find("a").attr("href");
 return false;
 });
 });
</script>

<script src="js/jquery-3.3.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/greensock/TweenMax.min.js"></script>
<script src="plugins/greensock/TimelineMax.min.js"></script>
<script src="plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="plugins/greensock/animation.gsap.min.js"></script>
<script src="plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/slick-1.8.0/slick.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/product_custom.js"></script>
<script src="js/custom.js"></script>
<script src="js/mdb.min.js" type="text/javascript"></script>
<script src="js/popper.min.js" type="text/javascript"></script>
 <script type="text/javascript">
    // Animations initialization
    new WOW().init();
  </script>
</body>
</html>
