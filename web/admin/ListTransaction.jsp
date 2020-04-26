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
                                    <option>Top-up</option>
                                    <option>Payment</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select class="form-control" id="type">
                                    <option>All</option>
                                    <option>Student</option>
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
                            <h3 style="text-align: center">TRANSACTION HISTORY</h3>
                        </div>
                        <div class="panel-body">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Number</th>
                                        <th>Order ID</th>
                                        <th>Service ID</th>
                                        <th>Provider ID</th>  
                                        <th>User ID</th>  
                                        <th>Price</th>  
                                        <th>Status</th>                   
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>O1</td>
                                        <td>S1</td>
                                        <td>PV1</td>
                                        <td>U1</td>
                                        <td>50000</td>
                                        <td>Finished</td>                                   
                                    </tr>
                                    <tr>
                                    <tr>
                                        <td>2</td>
                                        <td>O2</td>
                                        <td>S2</td>
                                        <td>PV2</td>
                                        <td>U2</td>
                                        <td>500000</td>
                                        <td>In Use</td>                                   
                                    </tr>
                                    <tr>
                                    <tr>
                                        <td>3</td>
                                        <td>O3</td>
                                        <td>S3</td>
                                        <td>PV3</td>
                                        <td>U3</td>
                                        <td>5000000</td>
                                        <td>Waiting</td>                                   
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
