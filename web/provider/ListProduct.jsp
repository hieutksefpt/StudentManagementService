<%-- 
    Document   : New Product
    Created on : Jul 12, 2018, 2:42:36 PM
    Author     : Phong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Service Manager</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </head>
    <body>
        <jsp:useBean id="listProduct" class="bean.ListProductBean" scope="page"/>
        <jsp:setProperty name="listProduct" property="providerName" value="${sessionScope.account.accountName}"/>
        <jsp:setProperty name="listProduct" property="serviceID" value="${param.serviceID}"/>

        <jsp:include page="/header.jsp"/>
        <div class="container-fluid row">

            <jsp:include page="/functionBar.jsp"/>

            <div class="col-sm-10">
                <!--Filter-->
                <div class="row">

                    <div class="navbar col-sm-8 navbar-right text-center" style="padding-top: 7px;margin-right: 5px; background-color: #337ab7; color: white">
                        <form class="form-inline">
                            <div class="form-group">
                                <label for="service">Service: </label>
                                <select class="form-control" id="service" name="serviceID">
                                    <c:forEach var="ser" items="${listProduct.service}">
                                        <option value="${ser.serviceID}" ${ser.serviceID == param.serviceID ? "selected" : "" }>
                                            ${ser.serviceName}</option>
                                        </c:forEach>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="type">Order By: </label>
                                <label class="radio-inline"><input type="radio" name="optradio">High Price</label>
                                <label class="radio-inline"><input type="radio" name="optradio">Low Price</label>
                            </div>
                            <div class="input-group" class="text-center">
                                <input type="text" class="form-control" id="filterName" placeholder="Enter name">
                                <div class="input-group-btn">
                                    <button class="btn btn-default" type="submit">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <!--Table data-->
                <div class="row">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h3 h3 style="text-align: center">PRODUCT LIST</h3>
                        </div>
                        <div class="panel-body">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Product Name</th>
                                        <th>Quantity</th>
                                        <th>Unit</th>
                                        <th>Price</th> 
                                        <th>Description</th> 
                                        <th style="text-align: center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="pro" items="${listProduct.product}">
                                        <tr>
                                            <td>${pro.productName}</td>
                                            <td>${pro.quantity}</td>
                                            <td>${pro.unit}</td>
                                            <td>${pro.price}</td>
                                            <td>${pro.description}</td>
                                            <td style="text-align: center">
                                                <a class="btn btn-default">Update</a>
                                                <a class="btn btn-default">Delete</a>
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

        <!-- Login Modal -->
        <div id="newProductModal" class="modal fade in" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-body">
                        <form action="/ServiceforStudentManagement/ProductController" method="POST">
                            <div class="form-group">
                                <label for="username">Product Name</label>
                                <input type="text" class="form-control" id="username" placeholder="Enter username" name="username">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
                            </div>
                            <div style="text-align:center">
                                <button type="submit" class="btn btn-success">Login</button>
                                <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#forgotModal" data-dismiss="modal">Forgot Password</button>
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                            </div>
                            <input type="hidden" name="link" value="${pageContext.request.requestURL}"/>
                            <input type="hidden" name="action" value="newProduct"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <script>
            $(document).ready(function () {
                $("#filterName").on("keyup", function () {
                    var value = $(this).val().toLowerCase();
                    $("#myTable tr").filter(function () {
                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                    });
                });
            });
        </script>
    </body>
</html>
