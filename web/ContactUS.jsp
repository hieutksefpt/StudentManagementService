<%-- 
    Document   : AboutUs
    Created on : Jul 19, 2018, 5:22:40 PM
    Author     : Tu Khac Hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <!DOCTYPE html>
    <body>
        <jsp:include page="header.jsp"/>
    <html lang="en">
        <head>
            <meta charset="utf-8">
            <title>Reveal Bootstrap Template</title>
            <meta content="width=device-width, initial-scale=1.0" name="viewport">
            <meta content="" name="keywords">
            <meta content="" name="description">
                        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            
                         <!--Favicons--> 
                        <link href="img/favicon.png" rel="icon">
                        <link href="img/apple-touch-icon.png" rel="apple-touch-icon">
            
                         <!--Google Fonts--> 
                        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800|Montserrat:300,400,700" rel="stylesheet">
            
                         <!--Bootstrap CSS File--> 
                        <link href="/ServiceforStudentManagement/Remote Files/bootstrap.min.css" rel="stylesheet">
                         <!--Libraries CSS Files--> 
                          <link href="lib/font-awesome/css/font-awesome.min.css" rel="stylesheet">
                        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
                        <link href="lib/animate/animate.min.css" rel="stylesheet">
                        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.css">
                        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
                        <link href="lib/ionicons/css/ionicons.min.css" rel="stylesheet">
                        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
                        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.min.js">
            
                        <link href="lib/magnific-popup/magnific-popup.css" rel="stylesheet">
                        <link href="/ServiceforStudentManagement/lib/ionicons/css/ionicons.min.css" rel="stylesheet">
            
                         <!--Main Stylesheet File--> 
                        <link href="lib/css/style.css" rel="stylesheet">
            
            
<!--            
            <!-- =======================================================
              Theme Name: Reveal
              Theme URL: https://bootstrapmade.com/reveal-bootstrap-corporate-template/
              Author: BootstrapMade.com
              License: https://bootstrapmade.com/license/
            ======================================================= -->
        </head>

        <body id="body">

           

                <!--==========================
                  Contact Section
                ============================-->
                <section id="contact" class="wow fadeInUp">
                    <div class="container">
                        

                        <div class="row contact-info">

                            <div class="col-md-4">
                                <div class="contact-address">
                                    <i class="ion-ios-location-outline"></i>
                                    <h3>Address</h3>
                                    <address>Khu Giáo dục và Đào tạo – Khu Công nghệ cao Hòa Lạc – Km29 Đại lộ Thăng Long, Thạch Thất, TP. Hà Nội</address>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="contact-phone">
                                    <i class="ion-ios-telephone-outline"></i>
                                    <h3>Phone Number</h3>
                                    <p><a href="tel:+01647520088">+841647520088</a></p>
                                </div>
                            </div>

                            <div class="col-md-4">
                                <div class="contact-email">
                                    <i class="ion-ios-email-outline"></i>
                                    <h3>Email</h3>
                                    <p><a href="mailto:info@example.com">hieutkse05647@fpt.edu.vn</a></p>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div id="google-map" data-latitude="40.713732" data-longitude="-74.0092704"></div>

                    <div class="container">
                        <div class="form">
                            <div id="sendmessage">Your message has been sent. Thank you!</div>
                            <div id="errormessage"></div>
                            <form action="" method="post" role="form" class="contactForm">
                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <input type="text" name="name" class="form-control" id="name" placeholder="Your Name" data-rule="minlen:4" data-msg="Please enter at least 4 chars" />
                                        <div class="validation"></div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <input type="email" class="form-control" name="email" id="email" placeholder="Your Email" data-rule="email" data-msg="Please enter a valid email" />
                                        <div class="validation"></div>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name="subject" id="subject" placeholder="Subject" data-rule="minlen:4" data-msg="Please enter at least 8 chars of subject" />
                                    <div class="validation"></div>
                                </div>
                                <div class="form-group">
                                    <textarea class="form-control" name="message" rows="5" data-rule="required" data-msg="Please write something for us" placeholder="Message"></textarea>
                                    <div class="validation"></div>
                                </div>
                                <div class="text-center"><button type="submit">Send Message</button></div>
                            </form>
                        </div>

                    </div>
                </section><!-- #contact -->

            </main>

            <!--==========================
              Footer
            ============================-->
            <footer id="footer">
                <div class="container">
                    <div class="copyright">
                        &copy; Copyright <strong>Reveal</strong>. All Rights Reserved
                    </div>
                    <div class="credits">
                        <!--
                          All the links in the footer should remain intact.
                          You can delete the links only if you purchased the pro version.
                          Licensing information: https://bootstrapmade.com/license/
                          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Reveal
                        -->
                        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                    </div>
                </div>
            </footer><!-- #footer -->

            <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

            <!-- JavaScript Libraries -->
            <script src="lib/jquery/jquery.min.js"></script>
            <script src="lib/jquery/jquery-migrate.min.js"></script>
            <script src="lib/bootstrap/js/bootstrap.bundle.min.js"></script>
            <script src="lib/easing/easing.min.js"></script>
            <script src="lib/superfish/hoverIntent.js"></script>
            <script src="lib/superfish/superfish.min.js"></script>
            <script src="lib/wow/wow.min.js"></script>
            <script src="lib/owlcarousel/owl.carousel.min.js"></script>
            <script src="lib/magnific-popup/magnific-popup.min.js"></script>
            <script src="lib/sticky/sticky.js"></script>
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD8HeI8o-c1NppZA-92oYlXakhDPYR7XMY"></script>
            <!-- Contact Form JavaScript File -->
            <script src="contactform/contactform.js"></script>

            <!-- Template Main Javascript File -->
            <script src="js/main.js"></script>


    </html>

</html>
</body>