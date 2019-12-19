<%-- 
    Document   : details
    Created on : Dec 19, 2019, 7:40:23 PM
    Author     : 84969
--%>
<%@page import="Entity.Products"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<%
    Products p = (Products) session.getAttribute("productEdit");
%>
<jsp:include page="../admin.jsp"></jsp:include>

    <h2>Chi tiết sản phẩm</h2>

    <div class="card">
        <div class="body">
            <form class="form-horizontal">
                <div class="row clearfix">
                    <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                        <label asp-for="Name">Tên sản phẩm</label>
                    </div>
                    <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                        <div class="form-group">
                            <div class="form-line">
                                <label type="text" asp-for="Name"><%=p.getName()%></label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                    <label asp-for="Image">Hình ảnh</label>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                    <div class="form-group">
                        <div class="form-line" style="width:200px;">
                            <img src="../../img/product/<%=p.getImage()%>" style="border-radius:2px;border:1px solid gray;width:100%"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                    <label asp-for="Descirption">Mô tả</label>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                    <div class="form-group">
                        <div class="form-line">
                            <label type="text" asp-for="Name"><%=p.getDescription()%></label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                    <label asp-for="CategoryId">Danh mục</label>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-4 col-xs-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label asp-for="CategoryId"><%=p.getCategoryId().getName()%></label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                    <label asp-for="CategoryId">Nhà cung cấp</label>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-4 col-xs-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label asp-for="CategoryId"><%=p.getSupplierId().getName()%></label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                    <label>Số lượng </label>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-4 col-xs-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label asp-for="CategoryId"><%=p.getCount()%></label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                    <label>Số lượng </label>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-4 col-xs-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label asp-for="CategoryId"><%=p.getPriceInput()%></label>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row clearfix">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                    <label>Số lượng </label>
                </div>
                <div class="col-lg-5 col-md-5 col-sm-4 col-xs-3">
                    <div class="form-group">
                        <div class="form-line">
                            <label asp-for="CategoryId"><%=p.getPriceOutput()%></label>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row clearfix">
                <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-4 col-xs-offset-5">
                    <a href="/Web06/admin/Product/editProduct?<%=p.getId()%>" class="btn btn-primary">Edit</a>
                    <br /><br />
                    <a href="/Web06/admin/Product/index.jsp">Back to List</a>
                </div>
            </div>
        </form>
    </div>
</div>
<jsp:include page="../adminend.jsp"></jsp:include>