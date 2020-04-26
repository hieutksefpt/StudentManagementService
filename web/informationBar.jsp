<%-- 
    Document   : informationBar
    Created on : Jul 14, 2018, 3:28:50 PM
    Author     : Phong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <body>
        <jsp:useBean id="infor" scope="page" class="bean.InformationBarBean"/>

        <div class="col-sm-3">
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4>TOP SERVICE</h4>
                </div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Rank</th>
                                <th>Service Name</th>
                                <th>Rate</th>
                            </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4>NEW MEMBER</h4>
                </div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>A-Name</th>
                                <th>R-Name</th>
                                <th>Type</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="acc" items="${infor.newAccount}">
                                <tr>
                                    <td>${acc.accountName}</td>
                                    <td>${acc.fullname}</td>
                                    <td>${acc.type == '1' ? "Student" : "Provider"}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4>NEW SERVICE</h4>
                </div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Provider</th>
                                <th>Date</th>
                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="ser" items="${infor.newService}">
                                <tr>
                                    <td>${ser.serviceName}</td>
                                    <td>${ser.providerName}</td>
                                    <td>${ser.dateCreated}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </body>
</html>
