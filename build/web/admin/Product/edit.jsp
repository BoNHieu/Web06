<%-- 
    Document   : edit
    Created on : Dec 19, 2019, 5:32:31 PM
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

<h2>Edit</h2>

<div class="card">
    <div class="body">
        <form action="<c:url value='/admin/Product/submitEdit' />" class="form-horizontal" method="POST">
            <div asp-validation-summary="ModelOnly" class="text-danger"></div>
            <input type="hidden" name="id" value=<%=p.getId()%> />
             <div class="row clearfix">
                <div class="col-lg-2 col-md-2 col-sm-4 col-xs-5 form-control-label">
                    <label name="name">Tên sản phẩm</label>
                </div>
                <div class="col-lg-10 col-md-10 col-sm-8 col-xs-7">
                    <div class="form-group">
                        <div class="form-line">
                            <input type="text" name="name" value="<%=p.getName()%>" class="form-control" placeholder="Tên sản phẩm">
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
                            <input type="text" name="description" value="<%=p.getDescription()%>" class="form-control" placeholder="Mô tả">
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
                            <select id="categoryId" name="categoryId" value="<%=p.getCategoryId().getId()%>">
                                  <option selected value=<%=p.getCategoryId().getId()%>><%=p.getCategoryId().getName()%></option>
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
                                <option selected value=<%=p.getSupplierId().getId()%>><%=p.getSupplierId().getName()%></option>
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
                            <input type="text" name="count" value="<%=p.getCount()%>" class="form-control" placeholder="Số lượng">
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
                            <input type="text" name="price_input" value="<%=p.getPriceInput()%>" class="form-control" placeholder="Giá Nhập">
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
                            <input type="text" name="price_output" value="<%=p.getPriceOutput()%>" class="form-control" placeholder="Giá Xuất">
                        </div>
                    </div>
                </div>
         
            </div>
            
            <div class="row clearfix">
                <div class="col-lg-offset-2 col-md-offset-2 col-sm-offset-4 col-xs-offset-5">
                    <input type="submit" value="Edit" class="btn btn-success" />
                    <br /><br />
                    <a href="/Web06/admin/Product/index.jsp">Back to List</a>
                </div>
            </div>
        </form>
    </div>
</div>

<jsp:include page="../adminend.jsp"></jsp:include>
