<%-- 
    Document   : AllAccount
    Created on : Jul 11, 2018, 9:36:57 AM
    Author     : Phong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <jsp:useBean id="listFeedback" class="bean.ListFeedbackBean" scope="page"/>
        <jsp:setProperty property="*" name="listFeedback"/>
        <jsp:include page="/header.jsp"/>

        <div class="container-fluid row">

            <jsp:include page="/functionBar.jsp"/>

            <div class="col-sm-10">
                <!--Filter-->
                <div class="row">
                    <div class="navbar col-sm-5 navbar-right text-center" style="padding-top: 7px;margin-right: 5px; background-color: #337ab7; color: white">
                        <form class="form-inline">
                            <div class="form-group">
                                <label for="type">Filter: </label>
                                <select class="form-control" id="type">
                                    <option>All</option>
                                    <option>Feedback</option>
                                    <option>Report</option>
                                </select>
                            </div>
                            <div class="input-group" class="text-center">
                                <input type="text" class="form-control" id="filterName" placeholder="Enter account here">
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
                            <h3 style="text-align: center">FEEDBACK/REPORT LIST</h3>
                        </div>
                        <div class="panel-body">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Number</th>
                                        <th>Report ID</th>
                                        <th>Account ID</th>
                                        <th>Detail</th>                 
                                        <th style="text-align: center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>R1</td>
                                        <td>AC1</td>
                                        <td>Thai do phuc vu cua nhan vien qua te</td>
                                <c:forEach var="acc" items="${listFeedback.account}">
                                        <tr>
                                            
                                            <td style="text-align: center">
                                                <a href="/ServiceforStudentManagement/AdminController?action=changeStatusAccount&accountName=${acc.accountName}" class="btn btn-default">
                                                    ${acc.status == 'Banned' ? "Resume" : "Banned"}
                                                </a>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>R2</td>
                                    <td>AC2</td>
                                    <td>Gia ca qua cao</td>
                                    <td style="text-align: center">
                                        <input type="submit" class="btn btn-success" ${param.type == 'admin' ? "selected" : ""} value="Seen"></input>
                                        <input type="submit" class="btn btn-danger" value="Delete"></input>
                                    </td>
                                </tr>               
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
