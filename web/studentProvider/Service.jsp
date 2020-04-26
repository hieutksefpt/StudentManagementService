<%-- 
    Document   : MyService
    Created on : Jul 11, 2018, 8:29:47 AM
    Author     : Tu Khac Hieu
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
        <jsp:useBean id="serviceBean" class="bean.ViewServiceBean" scope="page"/>
        <jsp:setProperty name="serviceBean" property="selectType" param="type"/>
        <jsp:setProperty name="serviceBean" property="account" value="${sessionScope.account}"/>

        <jsp:include page="/header.jsp"/>

        <div class="container-fluid row">

            <jsp:include page="/functionBar.jsp"/>

            <div class="col-sm-10">
                <!--Filter-->
                <div class="row">
                    <div class="navbar col-sm-6 navbar-right text-center" style="padding-top: 7px;margin-right: 5px; background-color: #337ab7; color: white">
                        <form class="form-inline">
                            <div class="form-group">
                                <label for="type">Filter: </label>
                                <select class="form-control" id="type" name="type" onchange="document.forms[4].submit()">
                                    <option value="mySer" ${param.type == 'mySer' ? "selected" : ""}>My Service</option>
                                    <option value="actSer" ${param.type == 'actSer' ? "selected" : ""}>Available Service</option>
                                </select>
                            </div>
                            <div class="input-group" class="text-center">
                                <input type="text" class="form-control" id="filterName" placeholder="Enter name" id="filterName" name="filterName">
                                <div class="input-group-btn">
                                    <button class="btn btn-default" type="submit">
                                        <i class="glyphicon glyphicon-search"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>

                <!--Table-->
                <div class="panel panel-primary row">
                    <!--heading-->
                    <div class="panel-heading">
                        <h3 style="text-align: center">
                            <c:if test="${param.type == 'actSer'}">AVAILABLE SERVICE</c:if>
                            <c:if test="${param.type != 'actSer'}">MY SERVICE</c:if>
                            </h3>
                        </div>
                        <!--body-->
                        <div class="panel-body">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Service Name</th>
                                        <th>Provider Name</th>
                                        <th>Detail</th>
                                        <c:if test="${sessionScope.account.type == 2
                                              and param.type == 'mySer'}">
                                        <th>Status</th>
                                        </c:if>
                                    <th style="text-align: center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="ser" items="${serviceBean.service}">
                                    <tr>
                                        <td>${ser.serviceName}</td>
                                        <td>${ser.providerName}</td>
                                        <td>${ser.detail}</td>
                                        <c:if test="${sessionScope.account.type == 2
                                              and param.type == 'mySer'}">
                                            <td>${ser.status}</td>
                                        </c:if>
                                        <td style="text-align: center">
                                            <a href="/ServiceforStudentManagement/user/ServiceDetail.jsp?serviceID=${ser.serviceID}">
                                                <button type="button" class="btn btn-default">View</button>
                                            </a>
                                            <c:if test="${sessionScope.account.type == 1}">
                                                <input type="submit" class="btn btn-default" value="Feedback"></input>
                                                <c:if test="${param.type != 'actSer'}">
                                                    <input type="submit" class="btn btn-default" value="Rating"></input>
                                                    <input type="submit" class="btn btn-default" value="Stop Using"></input>
                                                </c:if>
                                            </c:if>
                                            <c:if test="${sessionScope.account.type == 2
                                                          and sessionScope.account.accountName == ser.providerName}">
                                                <input type="submit" class="btn btn-default" value="List User"></input>
                                                <input type="submit" class="btn btn-default" value="List Product"></input>
                                                <input type="submit" class="btn btn-default" value="Stop"></input>
                                            </c:if>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
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
