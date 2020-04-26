<%-- 
    Document   : header
    Created on : Jun 29, 2018, 8:13:06 AM
    Author     : Tu Khac Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/ServiceforStudentManagement/Home.jsp">Service for Student Management</a>
                </div>
                <ul class="nav navbar-nav">
                    <li><a href="AboutUs.jsp">About Us</a></li>
                    <li><a href="ContactUS.jsp">Contact Us</a></li>
                        <c:if test="${not empty sessionScope.account}">
                        <li><a href="#">Notification<span class="badge">5</span></a></li>
                        <li><a href="/ServiceforStudentManagement/user/MyProfile.jsp">Profile</a></li>
                        <li><a href="/ServiceforStudentManagement/studentProvider/Service.jsp">Service</a></li>
                        </c:if>

                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <c:if test="${empty sessionScope.account}">
                        <li><a href="#signupModal" data-toggle="modal"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                        <li><a href="#loginModal" data-toggle="modal"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                        </c:if>
                        <c:if test="${not empty sessionScope.account}">
                        <li><a>Hello, ${sessionScope.account.fullname}</a></li>
                        <li><a href="/ServiceforStudentManagement/HeaderController"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
                        </c:if>
                </ul>
            </div>
        </nav>

        <c:if test="${param.error == 'loginError'}">
            <script type="text/javascript">
                $(window).on('load', function () {
                    $('#loginModal').modal('show');
                });
            </script>
        </c:if>

        <c:if test="${param.error == 'signupError'}">
            <script type="text/javascript">
                $(window).on('load', function () {
                    $('#signupModal').modal('show');
                });
            </script>
        </c:if>


        <!-- Login Modal -->
        <div id="loginModal" class="modal fade in" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-body">
                        <form action="/ServiceforStudentManagement/HeaderController" method="POST">
                            <div class="form-group">
                                <label for="username">Username</label>
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
                            <input type="hidden" name="action" value="login"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Sign up Modal -->
        <div id="signupModal" class="modal fade in" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-body">
                        <form data-toggle="validator" role="form">
                            <div class="form-group">
                                <label for="username">Username</label>
                                <input type="text" class="form-control" id="username" placeholder="Enter username" name="username" required>
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd" required>
                            </div>
                            <div class="form-group">
                                <label for="repwd">Re-password:</label>
                                <input type="password" class="form-control" id="repwd" data-match="#pwd"
                                       data-match-error="Doesn't match" placeholder="Re-enter password" name="repwd" required>
                            </div>
                            <div class="form-group">
                                <label for="roleNumber">Role Number:</label>
                                <input type="text" class="form-control" id="roleNumber" placeholder="Enter role number" name="roleNumber" required>
                            </div>
                            <div class="form-group">
                                <label for="phone">Phone:</label>
                                <input type="number" data-minlength="9" data-maxlength="10" class="form-control" id="phone" placeholder="Enter phone" name="phone" required>
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
                                <label for="date">Date:</label>
                                <input type="date" class="form-control" id="date" placeholder="Enter date" name="date" required>
                            </div>
                            <div style="text-align:center">
                                <button type="submit" class="btn btn-success">Register</button>
                                <button type="button" class="btn btn-warning" data-toggle="modal" data-target="#forgotModal" data-dismiss="modal">Forgot Password</button>
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Forgot Modal -->
        <div id="forgotModal" class="modal fade" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-body">
                        <form action="">
                            <div class="form-group">
                                <label for="email">Email</label>
                                <input type="email" class="form-control" id="username" placeholder="Enter username" name="username">
                            </div>
                            <div class="form-group">
                                <label for="pwd">Password:</label>
                                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
                            </div>
                            <div class="form-group">
                                <label for="repwd">Re-password:</label>
                                <input type="password" class="form-control" id="repwd" placeholder="Re-enter password" name="repwd">
                            </div>
                            <div style="text-align:center">
                                <button type="submit" class="btn btn-success">Reset Password</button>
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        
    </body>
</html>
