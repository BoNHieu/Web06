<%-- 
    Document   : index
    Created on : Dec 19, 2019, 5:04:51 PM
    Author     : 84969
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<jsp:include page="../admin.jsp"></jsp:include>

    <h2>DANH SÁCH SẢN PHẨM</h2>

    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="header">
                    <a class="btn btn-primary" href="create.jsp">Create New</a>
                    <ul class="header-dropdown m-r--5">
                        <li class="dropdown">
                            <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                                <i class="material-icons">more_vert</i>
                            </a>
                            <ul class="dropdown-menu pull-right">
                                <li><a href="javascript:void(0);">Action</a></li>
                                <li><a href="javascript:void(0);">Another action</a></li>
                                <li><a href="javascript:void(0);">Something else here</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <div class="body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover js-basic-example dataTable">
                            <thead>
                                <tr class="table-info">
                                    <th>
                                        Tên Sản phẩm
                                    </th> 
                                    <th>
                                        Hình ảnh
                                    </th>
                                    <th>
                                        Mô tả
                                    </th>
                                    <th>
                                        Danh mục
                                    </th>
                                    <th>
                                        Nhà cung cấp
                                    </th>
                                    <th>
                                        Số lượng
                                    </th>
                                    <th>
                                        Giá Nhập
                                    </th>       <th>
                                        Giá xuất
                                    </th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr class="table-info">
                                    <th>
                                        Tên Sản phẩm
                                    </th> 
                                    <th>
                                        Hình ảnh
                                    </th>
                                    <th>
                                        Mô tả
                                    </th>
                                    <th>
                                        Danh mục
                                    </th>
                                    <th>
                                        Nhà cung cấp
                                    </th>
                                    <th>
                                        Số lượng
                                    </th>
                                    <th>
                                        Giá Nhập
                                    </th>       <th>
                                        Giá xuất
                                    </th>
                                    <th></th>
                                </tr>
                            </tfoot>
                            <tbody>
                            <c:forEach var="p" items="${listProducts}">
                                <!-- Slider Item -->
                                <tr class="table-info">
                                    <td>
                                        ${p.getName()}
                                    </td> 
                                    <td width="15%">
                                        <img src="../../img/product/${p.getImage()}" style="border-radius:2px;border:1px solid gray;width:100%" />
                                    </td>
                                    <td>
                                        ${p.getDescription()}
                                    </td>
                                    <td>
                                        ${p.getCategoryId().getName()}
                                    </td>
                                    <td>
                                        ${p.getSupplierId().getName()}
                                    </td>
                                    <td>
                                        ${p.getCount()}
                                    </td>
                                    <td>
                                        ${p.getPriceInput()}
                                    </td>
                                    <td>
                                        ${p.getPriceOutput()}
                                    </td>
                                    <td>
                                        <a href="/Web06/admin/Product/editProduct?${p.getId()}" class="btn btn-primary">Edit</a>
                                        <a href="/Web06/admin/Product/details?${p.getId()}" class="btn btn-success">Details</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../adminend.jsp"></jsp:include>