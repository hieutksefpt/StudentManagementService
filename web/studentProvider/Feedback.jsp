<%-- 
    Document   : Feedback
    Created on : Jul 11, 2018, 8:15:16 AM
    Author     : Tu Khac Hieu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href='https://fonts.googleapis.com/css?family=Open Sans' rel='stylesheet' type='text/css'>

        <link href="https://netdna.bootstrapcdn.com/font-awesome/3.0.2/css/font-awesome.css" rel="stylesheet">
        <link rel="stylesheet" href="../src/css/feedbackAd.css">
        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">-->
        <title>FeedBack</title>
    </head>
    <body>
        <div id="content">
            <h1>Feedback</h1>

            <form action="/ServiceforStudentManagement/FeedbackController" method="post" autocomplete="on">

                <!--<form>-->
                <div class="form-group">

                    <label for="username" class="icon-user"> Reciever 
                        <span class="required">*</span>
                    </label>
                    <select class="form-control" id="type" name="type" onchange="document.forms[0].submit()">
                        <option value="admin" ${param.type == 'admin' ? "selected" : ""}>Administrator</option>
                        <option value="provider" ${param.type == 'provider' ? "selected" : ""}>Provider</option>

                    </select>



                    <c:if test="${param.type == 'provider'}">
                        <div class="form-group">
                            <label for="serviceName" class="icon-user"> Service Name 
                                <span class="required">*</span>
                            </label>
                            <c:if test="${not empty list}">
                                <select class="form-control" id="service" name="type">
                                    <c:forEach var="ser" items="${list}">
                                        <option value="${ser.serviceID}">${ser.serviceName}</option>
                                    </c:forEach>
                                </select>
                            </c:if> 
                        </div>
                    </c:if>    
                </div>
            </form>
            <!--                <p>
                                <label for="usermail" class="icon-envelope"> Time Feedback
                                    <span class="required">*</span>
                                </label>
                                <input type="email" name="usermail" id="usermail" placeholder="I promise I hate spam too!" required="required" />
                            </p>-->



            <p>
                <label for="subject" class="icon-bullhorn"> Subject</label>
                <input type="text" name="subject" id="subject" placeholder="What would you like to talk about?" />
            </p>

            <p>
                <label for="message" class="icon-comment"> Message
                    <span class="required">*</span>
                </label>
                <textarea name="detail" placeholder="Your message here and I'll answer as soon as possible " required="required"></textarea>
            </p>
            <p class="icon-comment">Fields with
                <span class="required"> * </span>are required</p>
            <p>
            <form action="Feedback2">
                <button type="submit" class="btn btn-info" value=" Send this mail ! "  /> Send this mail </button>
                <!--                <input type="submit" value=" Cancel " />-->
            </form>
            <a href="/ServiceforStudentManagement/Home.jsp?">
                <button type="button" class="btn btn-default">Cancel</button>
            </a>

        </div>
    </body>
</html>
