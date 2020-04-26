<%-- 
    Document   : NewProvider
    Created on : Jul 12, 2018, 1:14:36 PM
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
        <jsp:include page="/header.jsp"/>

        <div class="container-fluid row">

            <jsp:include page="/functionBar.jsp"/>

            <div class="col-sm-7">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 style="text-align: center">CREATE NEW ACCOUNT</h3>
                    </div>
                    <div class="panel-body">
                        <form>
                            <div class="form-group">
                                <label for="type">Type:</label>
                                <select class="form-control" id="type" name="type" onchange="document.forms[4].submit()">
                                    <option value="provider" ${param.type == 'provider' ? "selected" : ""}>Provider</option>
                                    <option value="student" ${param.type == 'student' ? "selected" : ""}>Student</option>
                                    <option value="admin" ${param.type == 'admin' ? "selected" : ""}>Administrator</option>
                                </select>
                            </div>
                        </form>
                        <form action="/ServiceforStudentManagement/AdminController" method="POST">
                            <div class="form-group">
                                <label for="fullname">Full Name</label>
                                <input type="text" class="form-control" id="fullname" placeholder="Enter full name" name="fullname">
                            </div>
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" id="username" placeholder="Enter username" name="username">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
                            </div>
                            <div class="form-group">
                                <label for="repwd">Re-password:</label>
                                <input type="password" class="form-control" id="repwd" placeholder="Re-enter password" name="repwd">
                            </div>
                            <c:if test="${param.type == 'student'}">
                                <div class="form-group">
                                    <label for="roleNumber">Role Number:</label>
                                    <input type="text" class="form-control" id="roleNumber" placeholder="Enter role number" name="roleNumber">
                                </div>
                            </c:if>
                            <div class="form-group">
                                <label for="email">Email:</label>
                                <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone:</label>
                                <input type="text" class="form-control" id="phone" placeholder="Enter phone" name="phone">
                            </div>
                            <div class="form-group">
                                <label for="address">Address:</label>
                                <textarea class="form-control" rows="5" id="address"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Gender:</label>
                                <label class="radio-inline">
                                    <input type="radio" name="optradio">Male
                                </label>
                                <label class="radio-inline">
                                    <input type="radio" name="optradio">Female
                                </label>
                            </div>
                            <div class="form-group">
                                <label for="date">Date of birth:</label>
                                <input type="date" class="form-control" id="date" placeholder="Enter date" name="date">
                            </div>
                            <div style="text-align:center">
                                <button type="submit" class="btn btn-success">Create</button>
                                <button type="reset" class="btn btn-warning">Clear</button>
                            </div>
                            <input type="hidden" name="link" value="${pageContext.request.requestURL}"/>
                            <input type="hidden" name="action" value="newAccount"/>
                        </form>
                    </div>
                </div>
            </div>

            <jsp:include page="/informationBar.jsp"/>            
        </div>
    </body>
</html>