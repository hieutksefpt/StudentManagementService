<%-- 
    Document   : AllAccount
    Created on : Jul 11, 2018, 9:36:57 AM
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
        <jsp:useBean id="serviceBean" class="bean.ViewServiceBean" scope="page"/>
        <jsp:setProperty name="serviceBean" property="selectType" value="allSer"/>

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
                                <select class="form-control" id="type">
                                    <option>All</option>
                                    <option>Actived</option>
                                    <option>Banned</option>
                                    <option>Register</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="form-control" id="type">
                                    <option>All</option>
                                    <option>Service</option>
                                    <option>Provider</option>
                                </select>
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
                            <h3 h3 style="text-align: center">SERVICE LIST</h3>
                        </div>
                        <div class="panel-body">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Service Name</th>
                                        <th>Provider Name</th>
                                        <th>Date Created</th>
                                        <th>Detail</th>
                                        <th>Status</th>
                                        <th style="text-align: center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="ser" items="${serviceBean.service}">
                                        <tr>
                                            <td>${ser.serviceName}</td>
                                            <td>${ser.providerName}</td>
                                            <td>${ser.dateCreated}</td>
                                            <td>${ser.detail}</td>
                                            <td>${ser.status}</td>
                                            <td style="text-align: center">
                                                <c:if test="${ser.status != 'Register'}">
                                                    <a href="/ServiceforStudentManagement/ServiceDetail.jsp?serviceID=${ser.serviceID}">
                                                        <button type="button" class="btn btn-default">View</button>
                                                    </a>
                                                    <input type="submit" class="btn btn-default" name="btnChangeStatus" value="${ser.status == 'Actived'? "Banned" : "Actived"}"/>
                                                    <input type="submit" class="btn btn-default" name="btnDelete" value="Delete"/>
                                                </c:if>
                                                <c:if test="${ser.status == 'Register'}">
                                                    <input type="submit" class="btn btn-default" name="btnAccept" value="Accept"/>
                                                    <input type="submit" class="btn btn-default" name="btnReject" value="Reject"/>
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
