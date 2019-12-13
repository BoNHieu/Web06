<%-- 
    Document   : MenuLeftPartial
    Created on : Dec 12, 2019, 10:31:00 PM
    Author     : 84969
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<aside id="leftsidebar" class="sidebar">
    <!-- User Info -->
    <div class="user-info">
        <div class="image">
            <img src="../../images/user.png" width="48" height="48" alt="User" />
        </div>
        <div class="info-container">
            <div class="name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">John Doe</div>
            <div class="email">john.doe@example.com</div>
            <div class="btn-group user-helper-dropdown">
                <i class="material-icons" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">keyboard_arrow_down</i>
                <ul class="dropdown-menu pull-right">
                    <li><a href="javascript:void(0);"><i class="material-icons">person</i>Profile</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="javascript:void(0);"><i class="material-icons">group</i>Followers</a></li>
                    <li><a href="javascript:void(0);"><i class="material-icons">shopping_cart</i>Sales</a></li>
                    <li><a href="javascript:void(0);"><i class="material-icons">favorite</i>Likes</a></li>
                    <li role="separator" class="divider"></li>
                    <li><a href="javascript:void(0);"><i class="material-icons">input</i>Sign Out</a></li>
                    <partial name="_LoginPartial" />
                </ul>
            </div>
        </div>
    </div>
    <!-- #User Info -->
    <!-- Menu -->
    <div class="menu">
        <ul class="list">
            <li class="header">MAIN NAVIGATION</li>
            <li>
                <a href="/">
                    <i class="material-icons">home</i>
                    <span>Home</span>
                </a>
            </li>
            <li>
                <a href="javascript:void(0);" class="menu-toggle">
                    <i class="material-icons">subtitles</i>
                    <span>QUẢN LÝ SẢN PHẨM</span>
                </a>
                <ul class="ml-menu">
                    <li>
                        <a href="">
                            <i class="material-icons">menu</i>
                            <span>Danh sách sản phẩm</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <i class="material-icons">add</i>
                            <span>Thêm sản phẩm</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:void(0);" class="menu-toggle">
                    <i class="material-icons">menu</i>
                    <span>QUẢN LÝ DANH MỤC</span>
                </a>
                <ul class="ml-menu">
                    <li>
                        <a href="">
                            <i class="material-icons">menu</i>
                            <span>Danh sách danh mục</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <i class="material-icons">add</i>
                            <span>Thêm danh mục</span>
                        </a>
                    </li>
                </ul>
            </li>
            <li>
                <a href="javascript:void(0);" class="menu-toggle">
                    <i class="material-icons">local_shipping</i>
                    <span>QUẢN LÝ NHÀ CUNG CẤP</span>
                </a>
                <ul class="ml-menu">
                    <li>
                        <a href="">
                            <i class="material-icons">menu</i>
                            <span>Danh sách nhà cung cấp</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <i class="material-icons">add</i>
                            <span>Thêm nhà cung cấp</span>
                        </a>
                    </li>
                </ul>
            </li>

            <li>
                <a href="javascript:void(0);" class="menu-toggle">
                    <i class="material-icons">people</i>
                    <span>QUẢN LÝ NGƯỜI DÙNG</span>
                </a>
                <ul class="ml-menu">
                    <li>
                        <a href="">
                            <i class="material-icons">menu</i>
                            <span>Danh sách người dùng</span>
                        </a>
                    </li>
                    <li>
                        <a href="">
                            <i class="material-icons">add</i>
                            <span>Thêm người dùng</span>
                        </a>
                    </li>
                </ul>
            </li>

            }
        </ul>
    </div>
    <!-- #Menu -->
    <!-- Footer -->
    <div class="legal">
        <div class="copyright">
            &copy; 2018 - 2019 <a href="javascript:void(0);">Hiếu BoN</a>
        </div>
        <div class="version">
            <b>Shop Online</b>
        </div>
    </div>
    <!-- #Footer -->
</aside>