<%-- 
    Document   : Payment
    Created on : Jul 10, 2018, 2:09:14 PM
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
        <style>
            .customtable{
                border-collapse: separate;
                border-spacing: 10px;
            }
            a {
                color: orange;
            }
        </style>
    </head>
    <body >
        <jsp:include page="/header.jsp"/>

        <div class="container-fluid row">

            <jsp:include page="/functionBar.jsp"/>

            <div class="col-sm-7">
                <!--payment-->
                <div class="row">
                    <div class="panel panel-primary">
                        <!--heading-->
                        <div class="panel-heading">
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="navbar-brand">TRANSACTION</li>
                                <li role="presentation" class="active">
                                    <a href="#topUp" role="tab" aria-controls="topUp" data-toggle="tab">Top-Up</a>
                                </li>
                                <li role="presentation">
                                    <a href="#trade" role="tab" aria-controls="trade" data-toggle="tab">Payment</a>
                                </li>
                            </ul>
                        </div>

                        <!--body-->
                        <div class="panel-body">
                            <div class="tab-content">
                                <!--top-up-->
                                <div role="tabpanel" class="tab-pane active" id="topUp">
                                    <form action="/ServiceforStudentManagement/AccountController" method="POST">
                                        <div class="form-group">
                                            <label for="amount">Amount:</label>
                                            <input type="text" class="form-control" id="amount" placeholder="Enter amount" name="amount">
                                        </div>
                                        <div class="form-group">
                                            <label for="pwd">Password:</label>
                                            <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
                                        </div>
                                        <div class="form-group">
                                            <label for="rePwd">Re-password:</label>
                                            <input type="password" class="form-control" id="rePwd" placeholder="Re-enter password" name="rePwd">
                                        </div>
                                        <div style="text-align: center">
                                            <button type="submit" class="btn-success">Top-up</button>
                                            <button type="reset" class="btn-warning">Clear</button>
                                        </div>
                                        <input type="hidden" name="link" value="${pageContext.request.requestURL}"/>
                                        <input type="hidden" name="action" value="topUp"/>
                                    </form>
                                </div>
                                <!--trade-->
                                <div role="tabpanel" class="tab-pane" id="trade">
                                    <form action="/ServiceforStudentManagement/AccountController" method="POST">
                                        <div class="form-group">
                                            <label for="receiver">Receiver:</label>
                                            <input type="text" class="form-control" id="receiver" placeholder="Enter receiver name" name="receiver">
                                        </div>
                                        <div class="form-group">
                                            <label for="amount">Amount:</label>
                                            <input type="text" class="form-control" id="amount" placeholder="Enter amount" name="amount">
                                        </div>
                                        <div class="form-group">
                                            <label for="content">Content:</label>
                                            <input type="text" class="form-control" id="content" placeholder="Enter content" name="content">
                                        </div>
                                        <div class="form-group">
                                            <label for="pwd">Password:</label>
                                            <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
                                        </div>
                                        <div class="form-group">
                                            <label for="rePwd">Re-password:</label>
                                            <input type="password" class="form-control" id="rePwd" placeholder="Re-enter password" name="rePwd">
                                        </div>
                                        <div style="text-align: center">
                                            <button type="submit" class="btn-success">Send</button>
                                            <button type="reset" class="btn-warning">Clear</button>
                                        </div>
                                        <input type="hidden" name="link" value="${pageContext.request.requestURL}"/>
                                        <input type="hidden" name="action" value="payment"/>
                                    </form>
                                </div>
                            </div>

                        </div>

                    </div>
                </div>

                <!--history-->
                <div class="row">
                    <div class="panel panel-primary">
                        <div class="panel-heading text-center">
                            <h3>HISTORY</h3>
                        </div>
                        <div class="panel-body">
                            <table class="table table-hover">
                                <thead>
                                    <tr>
                                        <th>Number</th>
                                        <th>Amount</th>
                                        <th>Purpose</th>
                                        <th>Date</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>1000</td>
                                        <td>Top-up</td>
                                        <td>20/10/2010</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <jsp:include page="/informationBar.jsp"/>
        </div>
    </body>
</html>
