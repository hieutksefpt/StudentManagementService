<%-- 
    Document   : ServiceDetail
    Created on : Jul 12, 2018, 2:49:46 PM
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
        <style>
            img {
                width: 100%;
                height: 300px!important;
            }
        </style>
    </head>
    <body>
        <jsp:useBean id="service" class="bean.ServiceDetail" scope="page"/>
        <jsp:setProperty name="service" property="serviceID" param="serviceID"/>

        <jsp:include page="/header.jsp"/>

        <div class="container-fluid row">

            <jsp:include page="/functionBar.jsp"/>

            <div class="col-sm-10">
                <!--introduction-->
                <div class="row">
                    <!--text-->
                    <div class="col-sm-7">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <h3>Service Name - Provider name - Rating</h3>
                            </div>
                            <!--product list-->
                            <div class="panel-body">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Description</th>
                                            <th>Quantity</th>   
                                            <th>Price</th>
                                            <th>Unit</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach var="product" items="${service.product}">
                                            <c:if test="${product.quantity > 0}">
                                                <tr>
                                                    <td>${product.productName}</td>
                                                    <td>${product.description}</td>
                                                    <td>${product.quantity}</td>
                                                    <td>${product.price}</td>
                                                    <td>${product.unit}</td>
                                                    <td>
                                                        <c:url var="order" value="/user/ServiceDetail.jsp">
                                                            <c:param name="productID" value="${product.productID}"></c:param>
                                                            <c:param name="productName" value="${product.productName}"></c:param>
                                                            <c:param name="productUnit" value="${product.unit}"></c:param>
                                                            <c:param name="productPrice" value="${product.price}"></c:param>
                                                            <c:param name="serviceID" value="${param.serviceID}"></c:param>
                                                            <c:param name="action" value="selectProduct"></c:param>
                                                        </c:url>
                                                        <a href="${order}" data-toggle="modal"><button class="btn btn-default">Buy</button></a>
                                                    </td>
                                                </tr>
                                            </c:if>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                    <!--image-->
                    <div class="col-sm-5">
                        <div id="img-carousel" data-ride="carousel" class="carousel slide">
                            <!-- Indicators-->
                            <ol class="carousel-indicators">
                                <li data-target="#img-carousel" data-slide-to="0" class="active"></li>
                                <li data-target="#img-carousel" data-slide-to="1"></li>
                                <li data-target="#img-carousel" data-slide-to="2"></li>
                            </ol>
                            <!-- Wrapper for slides-->
                            <div role="listbox" class="carousel-inner">
                                <div class="item active">
                                    <img src="../src/image/1.png" alt="">
                                </div>
                                <div class="item">
                                    <img src="../src/image/2.png" alt="">
                                </div>
                                <div class="item">
                                    <img src="../src/image/3.png" alt="">
                                </div>
                            </div>
                            <!-- Controls--><a href="#img-carousel" role="button" data-slide="prev" class="left carousel-control"><i aria-hidden="true" class="fa fa-chevron-left"></i><span class="sr-only">Previous</span></a><a href="#img-carousel" role="button" data-slide="next" class="right carousel-control"><i aria-hidden="true" class="fa fa-chevron-right"></i><span class="sr-only">Next</span></a>
                        </div>

                    </div>

                </div>

                <c:if test="${not empty service.serviceReview}">
                    <!--review list-->
                    <c:forEach var="review" items="${service.serviceReview}">
                        <div class="row">
                            <label>${review.userName} - ${review.rating}</label>
                            <div class="well">${review.comment}</div>
                        </div>
                    </c:forEach>
                </c:if>

                <!--add review-->
                <div class="row">
                    <form action="/ServiceforStudentManagement/RatingController" method="POST">
                        <div class="form-group">
                            <label for="comment">
                                Rating and enter your comment here: <select name="rate">
                                    <option value=1>1</option>
                                    <option value=2>2</option>
                                    <option value=3>3</option>
                                    <option value=4>4</option>
                                    <option value=5>5</option>
                                    <option value=6>6</option>
                                    <option value=7>7</option>
                                    <option value=8>8</option>
                                    <option value=9>9</option>
                                    <option value=10>10</option>
                                </select>
                            </label>
                            <textarea class="form-control" rows="5" id="comment" name="txtComment"></textarea>
                        </div>
                        <div class="text-center">
                            <input type="submit" class="btn btn-success" value="Submit"/>
                            <input type="reset" class="btn btn-warning" value="Clear"/>
                        </div>
                        <input type="hidden" name="action" value="rating"/>
                        <input type="hidden" name="serviceID" value="${param.serviceID}"/>
                    </form>
                </div>
                
            </div>

        </div>

        <c:if test="${param.action == 'selectProduct'}">
            <script type="text/javascript">
                $(window).on('load', function () {
                    $('#orderModal').modal('show');
                });
            </script>

            <!-- Order Modal -->
            <div id="orderModal" class="modal fade in" role="dialog">
                <div class="modal-dialog">
                    <!-- Modal content-->
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3>You want to buy this?</h3>
                        </div>
                        <div class="modal-body">
                            <form action="/ServiceforStudentManagement/OrderController" method="POST">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Product Name</th>
                                            <th>Price</th>
                                            <th>Unit</th>
                                            <th>Amount</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>${param.productName}</td>
                                            <td>${param.productPrice}</td>
                                            <td>${param.productUnit}</td>
                                            <td><input type="number" name="txtAmount" value="1" /></td>
                                        </tr>
                                    </tbody>
                                    <input type="hidden" name="action" value="newOrder"/>
                                    <input type="hidden" name="serviceID" value="${param.serviceID}"/>
                                    <input type="hidden" name="productID" value="${param.productID}"/>
                                    <input type="hidden" name="productUnit" value="${param.productUnit}"/>
                                    <input type="hidden" name="link" value="${pageContext.request.requestURL}"/>
                                </table>
                                <div style="text-align:center">
                                    <button type="submit" class="btn btn-success">Yes</button>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </c:if>
            
    </body>
</html>
