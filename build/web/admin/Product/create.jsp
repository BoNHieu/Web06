<%-- 
    Document   : create.jsp
    Created on : Dec 12, 2019, 11:22:38 PM
    Author     : 84969
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<jsp:include page="../admin.jsp"></jsp:include>

<h2>Create</h2>

<div class="card">
    <div class="body">
        <form action="<c:url value='/admin/Product/createProduct' />" class="form-horizontal" method="POST">
            <div asp-validation-summary="ModelOnly" class="text-danger"></div>
            <div class="row clearfix">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                    <label name="name">Tên sản phẩm</label>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                    <div class="form-group">
                        <div class="form-line">
                            <input type="text" name="name" class="form-control" placeholder="Tên sản phẩm">
                        </div>
                    </div>
                </div>
               
            </div>
            <div class="row clearfix">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                    <label name="descirption">Mô tả</label>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                    <div class="form-group">
                        <div class="form-line">
                            <input type="text" name="descirption" class="form-control" placeholder="Mô tả">
                        </div>
                    </div>
                </div>
         
            </div>
            <div class="row clearfix">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                    <label name="categoryId">Danh mục sản phẩm</label>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                    <div class="form-group">
                        <div class="form-line">
                            <select id="categoryId" name="categoryId">
                                 <c:forEach var="c" items="${listCategorys}">
                                        <option value=${c.getId()}>${c.getName()}</option>
                            </c:forEach>
                            </select>
                        </div>
                    </div>
                </div>
            
            </div>
                <div class="row clearfix">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                    <label name="supplierId">Nhà cung cấp</label>
                </div>
                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2">
                    <div class="form-group">
                        <div class="form-line">
                            <select id="supplierId" name="supplierId">
                                 <c:forEach var="c" items="${listSuppliers}">
                                        <option value=${c.getId()}>${c.getName()}</option>
                            </c:forEach>
                            </select>
                        </div>
                    </div>
                </div>
            
            </div>
            
                    <div class="row clearfix">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                    <label name="count">Số lượng</label>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                    <div class="form-group">
                        <div class="form-line">
                            <input type="text" name="count" class="form-control" placeholder="Số lượng">
                        </div>
                    </div>
                </div>
         
            </div>
            
                    <div class="row clearfix">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                    <label name="price_input">Gía nhập</label>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                    <div class="form-group">
                        <div class="form-line">
                            <input type="text" name="price_input" class="form-control" placeholder="Giá Nhập">
                        </div>
                    </div>
                </div>
         
            </div>
            
                    <div class="row clearfix">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                    <label name="price_output">Giá Xuất</label>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                    <div class="form-group">
                        <div class="form-line">
                            <input type="text" name="price_output" class="form-control" placeholder="Giá Xuất">
                        </div>
                    </div>
                </div>
         
            </div>
            
            <div class="row clearfix">
                <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-4 col-xs-offset-5">
                    <input type="submit" value="Create" class="btn btn-success" />
                    <br /><br />
                    <a href="index.jsp">Back to List</a>
                </div>
            </div>
        </form>
    </div>
</div>

<jsp:include page="../adminend.jsp"></jsp:include>
