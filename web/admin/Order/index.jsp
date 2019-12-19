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

    <h2>DANH SÁCH ĐƠN HÀNG</h2>

    <div class="row clearfix">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="card">
                <div class="header">
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
                                        Mã đơn hàng
                                    </th> 
                                    <th>
                                        Tên người nhận
                                    </th>
                                    <th>
                                        Sản phẩm
                                    </th>
                                    <th>
                                        Giá Xuất
                                    </th>
                                    <th>
                                        Số lượng
                                    </th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tfoot>
                                <tr class="table-info">
                                  <th>
                                        Mã đơn hàng
                                    </th> 
                                    <th>
                                        Tên người nhận
                                    </th>
                                    <th>
                                        Sản phẩm
                                    </th>
                                    <th>
                                        Trạng thái
                                    </th>
                                    <th>
                                        Số lượng
                                    </th>
                                    <th></th>
                                </tr>
                            </tfoot>
                            <tbody>
                            <c:forEach var="p" items="${listOrders}">
                                <!-- Slider Item -->
                                <tr class="table-info">
                                    <td>
                                        ${p.getId()}
                                    </td> 
                                    <td>
                                        ${p.getOrderId().getCustomerId().getLastName()}
                                    </td>
                                    <td>
                                        ${p.getProductId().getName()}
                                    </td>
                                    <td>
                                        ${p.getOrderId().getStatus()}
                                    </td>
                                    <td>
                                        ${p.getCount()}
                                    </td>                                   
                                    <td>
                                        <a href="/Web06/admin/Order/details?${p.getId()}" class="btn btn-success">Details</a>
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