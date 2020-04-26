<%-- 
    Document   : Home
    Created on : Jul 6, 2018, 3:43:25 PM
    Author     : Tu Khac Hieu
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
            img {
                width: 100%;
                height: 300px!important;
            }
        </style>
    </head>
    <body>
        <jsp:include page="header.jsp"/>

        <div class="container-fluid row">
            <div class="col-sm-1"></div>
            
            <div class="col-sm-7">
                
                <!--image-->
                <div id="img-carousel" data-ride="carousel" class="carousel slide">
                    <!-- Indicators-->
                    <ol class="carousel-indicators">
                        <li data-target="#img-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#img-carousel" data-slide-to="1"></li>
                        <li data-target="#img-carousel" data-slide-to="2"></li>
                    </ol>
                    <!-- Wrapper for slides-->
                    <div role="listbox" class="carousel-inner">
                        <div class="item active">
                            <img src="src/image/1.png" alt="">
                        </div>
                        <div class="item">
                            <img src="src/image/2.png" alt="">
                        </div>
                        <div class="item">
                            <img src="src/image/3.png" alt="">
                        </div>
                    </div>
                    <!-- Controls--><a href="#img-carousel" role="button" data-slide="prev" class="left carousel-control"><i aria-hidden="true" class="fa fa-chevron-left"></i><span class="sr-only">Previous</span></a><a href="#img-carousel" role="button" data-slide="next" class="right carousel-control"><i aria-hidden="true" class="fa fa-chevron-right"></i><span class="sr-only">Next</span></a>
                </div>
                
                <br/>
                
                <!--text-->
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4>ABOUT US</h4>
                    </div>
                    <div class="panel-body">
                        <p>Student management is the job of managing all processes and study of students in universities also to improve on information technology. Student management in the major universities is the management of the learning process, including all student records and grades during the course of study at the university are stored in the "Student Management". In management students have many points, there are many subjects and scores of multiple examinations.</p>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4>OUR BENEFIT</h4>
                    </div>
                    <div class="panel-body">
                        <p>Developing student management program to support management of name, date of birth, and score. The problem is that analyzing the design of the information system poses a problem as to why it must be managed. And how to manage the j and manage how to work effectively, saving time for employees.</p>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4>TESTIMONIAL</h4>
                    </div>
                    <div class="panel-body">
                        <p>Student management in the major universities is the management of the learning process, including all student records and grades during the course of study at the university are stored in the "Student Management".</p>
                    </div>
                </div>
            </div>

            <jsp:include page="informationBar.jsp"/>
            
        </div>           
        
    </body>
</html>
