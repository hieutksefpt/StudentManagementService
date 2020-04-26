<%-- 
    Document   : functionTab
    Created on : Jul 14, 2018, 3:27:24 PM
    Author     : Phong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <body>
        <div class="col-sm-2">
            <!--Basic function-->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 style="text-align: center">Basic Function</h4>
                </div>
                <div class="list-group">
                    <a href="/ServiceforStudentManagement/user/MyProfile.jsp" class="list-group-item">View My Profile</a>
                    <a href="#pwdModal" data-toggle="modal" class="list-group-item">Change Password</a>
                </div>                    
            </div>

            <!--User function-->
            <div class="panel panel-default">
                <div class="panel-heading">
                    <h4 style="text-align: center">User Function</h4>
                </div>
                <div class="list-group">
                    <!--student-->
                    <c:if test="${sessionScope.account.type == 1}">
                        <a href="/ServiceforStudentManagement/studentProvider/Feedback.jsp" class="list-group-item">Feedback Service</a>
                    </c:if>

                    <!--provider-->
                    <c:if test="${sessionScope.account.type == 2}">
                        <a href="/ServiceforStudentManagement/provider/ListProduct.jsp" class="list-group-item">List Product</a>
                        <a href="/ServiceforStudentManagement/provider/RegisterService.jsp" class="list-group-item">Register Service</a>
                        <a href="#" class="list-group-item">Make Bill</a>
                        <a href="/ServiceforStudentManagement/provider/ListServiceUser.jsp" class="list-group-item">List Service's Users</a>
                    </c:if>

                    <!--student and provider-->
                    <c:if test="${sessionScope.account.type < 3}">
                        <a href="/ServiceforStudentManagement/studentProvider/Feedback.jsp" class="list-group-item">Feedback to Admin</a>
                        <a href="/ServiceforStudentManagement/studentProvider/Transaction.jsp" class="list-group-item">Transaction</a>
                        <a href="/ServiceforStudentManagement/studentProvider/Service.jsp" class="list-group-item">View Service</a>
                        <a href="/ServiceforStudentManagement/studentProvider/ViewOrder.jsp" class="list-group-item">View Order</a>
                    </c:if>

                    <!--provider and administrator-->
                    <c:if test="${sessionScope.account.type > 1}">
                        <a href="/ServiceforStudentManagement/providerAdmin/ListFeedBack.jsp" class="list-group-item">List Feedback</a>
                    </c:if>

                    <!--administrator-->
                    <c:if test="${sessionScope.account.type == 3}">
                        <a href="/ServiceforStudentManagement/admin/ListAccount.jsp" class="list-group-item">List Account</a>
                        <a href="/ServiceforStudentManagement/admin/ListService.jsp" class="list-group-item">List Service</a>
                        <a href="/ServiceforStudentManagement/admin/ListTransaction.jsp" class="list-group-item">List Transaction</a>
                        <a href="/ServiceforStudentManagement/admin/NewAccount.jsp" class="list-group-item">New Account</a>
                    </c:if>
                </div>                    
            </div>
        </div>

        <c:if test="${param.error == 'changePasswordError'}">
            <script type="text/javascript">
                $(window).on('load', function () {
                    $('#pwdModal').modal('show');
                });
            </script>
        </c:if>

        <!--change password-->
        <div class="modal fade in" id="pwdModal" role="dialog">
            <div class="modal-dialog">
                <!--content-->
                <div class="modal-content">
                    <!--header-->
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title text-center">Change Password</h4>
                    </div>
                    <!--body-->
                    <div class="modal-body">
                        <form action="/ServiceforStudentManagement/AccountController" method="POST">
                            <div class="form-group">
                                <label for="oldPwd">Old Password:</label>
                                <input type="password" class="form-control" id="oldPwd" placeholder="Enter old Password" name="txtOldPwd">
                            </div>
                            <div class="form-group">
                                <label for="newPwd">New Password:</label>
                                <input type="password" class="form-control" id="newPwd" placeholder="Enter new password" name="txtNewPwd">
                            </div>
                            <div class="form-group">
                                <label for="reNewPwd">New Password:</label>
                                <input type="password" class="form-control" id="reNewPwd" placeholder="Re-enter new password" name="txtReNewPwd">
                            </div>
                            <div style="text-align:center">
                                <button type="submit" class="btn btn-success">Submit</button>
                                <button type="reset" class="btn btn-warning">Clear</button>
                                <button type="button" class="btn btn-danger" data-dismiss="modal">Cancel</button>
                            </div>
                            <input type="hidden" name="link" value="${pageContext.request.requestURL}"/>
                            <input type="hidden" name="action" value="changePassword"/>
                        </form>
                    </div>
                </div>
            </div>
        </div>
                            
    </body>
</html>
