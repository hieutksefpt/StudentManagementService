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

            <section id="intro">


                <div id="intro-carousel" class="owl-carousel" >
                    <div class="item" style="background-image: url('img/intro-carousel/1.jpg');"></div>
                    <div class="item" style="background-image: url('img/intro-carousel/2.jpg');"></div>
                    <div class="item" style="background-image: url('img/intro-carousel/3.jpg');"></div>
                    <div class="item" style="background-image: url('img/intro-carousel/4.jpg');"></div>
                    <div class="item" style="background-image: url('img/intro-carousel/5.jpg');"></div>
                </div>

            </section><!-- #intro -->

            <main id="main">

                <!--==========================
                  About Section
                ============================-->
                <section id="about" class="wow fadeInUp">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-6 about-img">
                                <img src="img/1_118472.jpg" alt="">
                            </div>

                            <div class="col-lg-6 content">
                                <h2>Service for Student Management</h2>
                                <h4>This system plays a role like an intermediary between service users (students) and service
                                    provider, such as: dormitory, clean up, library, food. </h4>

                                <ul>
                                    <li><i class="ion-android-checkmark-circle"></i> Designed base on Model-View-
                                        Controller architecture.</li>
                                    <li><i class="ion-android-checkmark-circle"></i> The View part will interact with people who use this
                                        system.</li>
                                    <li><i class="ion-android-checkmark-circle"></i> The task of Controller will be call and processing
                                        functions that characters click in View. It will be invisible
                                        with all users.</li>
                                </ul>

                            </div>
                        </div>

                    </div>
                </section><!-- #about -->

                <!--==========================
                  Services Section
                ============================-->
                <section id="services">
                    <div class="container">
                        <div class="section-header">
                            <h2>Services</h2>
                            <p>There are three types of characters in SSM (Service for Student Management) system:
                                Provider (Service Provider), Student (Service User), and Admin (Administrator). Each of these
                                types plays a different role in SSM system.</p>
                        </div>

                        <div class="row">

                            <div class="col-lg-6">
                                <div class="box wow fadeInLeft">
                                    <div class="icon"><i class="fa fa-bar-chart"></i></div>
                                    <h4 class="title"><a href="">View</a></h4>
                                    <p class="description">The View part will interact with people who use this
                                        system. It will display functions that allowed to use for them.
                                        Depend on each character, not only the number of functions
                                        but also the screen is different.</p>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="box wow fadeInRight">
                                    <div class="icon"><i class="fa fa-picture-o"></i></div>
                                    <h4 class="title"><a href="">Model</a></h4>
                                    <p class="description">The Model will execute when Controller want to get
                                        data. It will work with Database and put the result to
                                        Controller.</p>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="box wow fadeInRight" data-wow-delay="0.2s">
                                    <div class="icon"><i class="fa fa-map"></i></div>
                                    <h4 class="title"><a href="">Controller</a></h4>
                                    <p class="description">The task of Controller will be call and processing
                                        functions that characters click in View. It will be invisible
                                        with all users. It will response the result to the View and
                                        change the display of View.</p>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <div class="box wow fadeInLeft" data-wow-delay="0.2s">
                                    <div class="icon"><i class="fa fa-shopping-bag"></i></div>
                                    <h4 class="title"><a href="">Database</a></h4>
                                    <p class="description">Database is a collection of data. It stores all the data of
                                        the system. Only Model can work directly with Database.
                                        Other parts must work through Model if they want to work
                                        with Database.</p>
                                </div>
                            </div>



                        </div>

                    </div>
                </section><!-- #services -->

                <!--==========================
                  Clients Section
                ============================-->
                <section id="clients" class="wow fadeInUp">
                    <div class="container">
                        <div class="section-header">
                            <h2>Clients</h2>
                            <p>Customer or client, a recipient of goods or services in return for monetary or other valuable considerations
                                Client (computing), hardware or software that accesses a remote service on another computer
                                Client, in the system of patronage in ancient Rome, an individual protected and sponsored by a patron
                                Client state, which is economically, politically, or militarily subordinate to another more powerful state</p>
                        </div>

                        <div class="owl-carousel clients-carousel">
                            <img src="img/clients/client-1.png" alt="">
                            <img src="img/clients/client-2.png" alt="">
                            <img src="img/clients/client-3.png" alt="">
                            <img src="img/clients/client-4.png" alt="">
                            <img src="img/clients/client-5.png" alt="">
                            <img src="img/clients/client-6.png" alt="">
                            <img src="img/clients/client-7.png" alt="">
                            <img src="img/clients/client-8.png" alt="">
                        </div>

                    </div>
                </section><!-- #clients -->

                <!--==========================
                  Our Portfolio Section
                ============================-->
                <section id="portfolio" class="wow fadeInUp">
                    <div class="container">
                        <div class="section-header">
                            <h2>Our Portfolio</h2>
                            <p> </p>
                        </div>
                    </div>

                    <div class="container-fluid">
                        <div class="row no-gutters">

                            <div class="col-lg-3 col-md-4">
                                <div class="portfolio-item wow fadeInUp">
                                    <a href="img/portfolio/1.jpg" class="portfolio-popup">
                                        <img src="img/portfolio/1.jpg" alt="">
                                        <div class="portfolio-overlay">
                                            <div class="portfolio-info"><h2 class="wow fadeInUp">Creative Mess</h2></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-4">
                                <div class="portfolio-item wow fadeInUp">
                                    <a href="img/portfolio/2.jpg" class="portfolio-popup">
                                        <img src="img/portfolio/2.jpg" alt="">
                                        <div class="portfolio-overlay">
                                            <div class="portfolio-info"><h2 class="wow fadeInUp">Hola Xanh</h2></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-4">
                                <div class="portfolio-item wow fadeInUp">
                                    <a href="img/portfolio/3.jpg" class="portfolio-popup">
                                        <img src="img/portfolio/3.jpg" alt="">
                                        <div class="portfolio-overlay">
                                            <div class="portfolio-info"><h2 class="wow fadeInUp">Azzan Coffee</h2></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-4">
                                <div class="portfolio-item wow fadeInUp">
                                    <a href="img/portfolio/4.jpg" class="portfolio-popup">
                                        <img src="img/portfolio/4.jpg" alt="">
                                        <div class="portfolio-overlay">
                                            <div class="portfolio-info"><h2 class="wow fadeInUp">Self-Learning</h2></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-4">
                                <div class="portfolio-item wow fadeInUp">
                                    <a href="img/portfolio/5.jpg" class="portfolio-popup">
                                        <img src="img/portfolio/5.jpg" alt="">
                                        <div class="portfolio-overlay">
                                            <div class="portfolio-info"><h2 class="wow fadeInUp">Xu's Outfit</h2></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-4">
                                <div class="portfolio-item wow fadeInUp">
                                    <a href="img/portfolio/6.jpg" class="portfolio-popup">
                                        <img src="img/portfolio/6.jpg" alt="">
                                        <div class="portfolio-overlay">
                                            <div class="portfolio-info"><h2 class="wow fadeInUp">Clock Store</h2></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-4">
                                <div class="portfolio-item wow fadeInUp">
                                    <a href="img/portfolio/7.jpg" class="portfolio-popup">
                                        <img src="img/portfolio/7.jpg" alt="">
                                        <div class="portfolio-overlay">
                                            <div class="portfolio-info"><h2 class="wow fadeInUp">Alarm Coffee</h2></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                            <div class="col-lg-3 col-md-4">
                                <div class="portfolio-item wow fadeInUp">
                                    <a href="img/portfolio/8.jpg" class="portfolio-popup">
                                        <img src="img/portfolio/8.jpg" alt="">
                                        <div class="portfolio-overlay">
                                            <div class="portfolio-info"><h2 class="wow fadeInUp">Analyst Group</h2></div>
                                        </div>
                                    </a>
                                </div>
                            </div>

                        </div>

                    </div>
                </section><!-- #portfolio -->

                <!--==========================
                  Testimonials Section
                ============================-->
                <!--                <section id="testimonials" class="wow fadeInUp">
                                    <div class="container">
                                        <div class="section-header">
                                            <h2>Testimonials</h2>
                                            <p>Sed tamen tempor magna labore dolore dolor sint tempor duis magna elit veniam aliqua esse amet veniam enim export quid quid veniam aliqua eram noster malis nulla duis fugiat culpa esse aute nulla ipsum velit export irure minim illum fore</p>
                                        </div>
                                        <div class="owl-carousel testimonials-carousel">
                
                                            <div class="testimonial-item">
                                                <p>
                                                    <img src="img/quote-sign-left.png" class="quote-sign-left" alt="">
                                                    Proin iaculis purus consequat sem cure digni ssim donec porttitora entum suscipit rhoncus. Accusantium quam, ultricies eget id, aliquam eget nibh et. Maecen aliquam, risus at semper.
                                                    <img src="img/quote-sign-right.png" class="quote-sign-right" alt="">
                                                </p>
                                                <img src="img/testimonial-1.jpg" class="testimonial-img" alt="">
                                                <h3>Saul Goodman</h3>
                                                <h4>Ceo &amp; Founder</h4>
                                            </div>
                
                                            <div class="testimonial-item">
                                                <p>
                                                    <img src="img/quote-sign-left.png" class="quote-sign-left" alt="">
                                                    Export tempor illum tamen malis malis eram quae irure esse labore quem cillum quid cillum eram malis quorum velit fore eram velit sunt aliqua noster fugiat irure amet legam anim culpa.
                                                    <img src="img/quote-sign-right.png" class="quote-sign-right" alt="">
                                                </p>
                                                <img src="img/testimonial-2.jpg" class="testimonial-img" alt="">
                                                <h3>Sara Wilsson</h3>
                                                <h4>Designer</h4>
                                            </div>
                
                                            <div class="testimonial-item">
                                                <p>
                                                    <img src="img/quote-sign-left.png" class="quote-sign-left" alt="">
                                                    Enim nisi quem export duis labore cillum quae magna enim sint quorum nulla quem veniam duis minim tempor labore quem eram duis noster aute amet eram fore quis sint minim.
                                                    <img src="img/quote-sign-right.png" class="quote-sign-right" alt="">
                                                </p>
                                                <img src="img/testimonial-3.jpg" class="testimonial-img" alt="">
                                                <h3>Jena Karlis</h3>
                                                <h4>Store Owner</h4>
                                            </div>
                
                                            <div class="testimonial-item">
                                                <p>
                                                    <img src="img/quote-sign-left.png" class="quote-sign-left" alt="">
                                                    Fugiat enim eram quae cillum dolore dolor amet nulla culpa multos export minim fugiat minim velit minim dolor enim duis veniam ipsum anim magna sunt elit fore quem dolore labore illum veniam.
                                                    <img src="img/quote-sign-right.png" class="quote-sign-right" alt="">
                                                </p>
                                                <img src="img/testimonial-4.jpg" class="testimonial-img" alt="">
                                                <h3>Matt Brandon</h3>
                                                <h4>Freelancer</h4>
                                            </div>
                
                                            <div class="testimonial-item">
                                                <p>
                                                    <img src="img/quote-sign-left.png" class="quote-sign-left" alt="">
                                                    Quis quorum aliqua sint quem legam fore sunt eram irure aliqua veniam tempor noster veniam enim culpa labore duis sunt culpa nulla illum cillum fugiat legam esse veniam culpa fore nisi cillum quid.
                                                    <img src="img/quote-sign-right.png" class="quote-sign-right" alt="">
                                                </p>
                                                <img src="img/testimonial-5.jpg" class="testimonial-img" alt="">
                                                <h3>John Larson</h3>
                                                <h4>Entrepreneur</h4>
                                            </div>
                
                                        </div>
                
                                    </div>
                  
                
                <!--==========================
                  Our Team Section
                ============================-->
                <section id="team" class="wow fadeInUp">
                    <div class="container">
                        <div class="section-header">
                            <h2>Our Team</h2>
                        </div>
                        <div class="row">
                            <div class="col-lg-2 col-md-6">
                                <div class="member">
                                    <div class="pic"><img src="img/tem1.jpg" alt=""></div>
                                    <div class="details">
                                        <h4>Từ Khắc Hiếu</h4>
                                        <span>Front-end Developer</span>
                                        <div class="social">
                                            <a href=""><i class="fa fa-twitter"></i></a>
                                            <a href=""><i class="fa fa-facebook"></i></a>
                                            <a href=""><i class="fa fa-google-plus"></i></a>
                                            <a href=""><i class="fa fa-linkedin"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-2 col-md-6">
                                <div class="member">
                                    <div class="pic"><img src="img/tem2.jpg" alt=""></div>
                                    <div class="details">
                                        <h4>Trần Tuấn Phong</h4>
                                        <span>Product Manager</span>
                                        <div class="social">
                                            <a href=""><i class="fa fa-twitter"></i></a>
                                            <a href=""><i class="fa fa-facebook"></i></a>
                                            <a href=""><i class="fa fa-google-plus"></i></a>
                                            <a href=""><i class="fa fa-linkedin"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-2 col-md-6">
                                <div class="member">
                                    <div class="pic"><img src="img/tem3.jpg" alt=""></div>
                                    <div class="details">
                                        <h4>Trịnh Quang Tùng</h4>
                                        <span>Back-end Developer</span>
                                        <div class="social">
                                            <a href=""><i class="fa fa-twitter"></i></a>
                                            <a href=""><i class="fa fa-facebook"></i></a>
                                            <a href=""><i class="fa fa-google-plus"></i></a>
                                            <a href=""><i class="fa fa-linkedin"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-2 col-md-6">
                                <div class="member">
                                    <div class="pic"><img src="img/tem4.jpg" alt=""></div>
                                    <div class="details">
                                        <h4>Phạm Quốc Đạt</h4>
                                        <span>Tester</span>
                                        <div class="social">
                                            <a href=""><i class="fa fa-twitter"></i></a>
                                            <a href=""><i class="fa fa-facebook"></i></a>
                                            <a href=""><i class="fa fa-google-plus"></i></a>
                                            <a href=""><i class="fa fa-linkedin"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-2 col-md-6">
                                <div class="member">
                                    <div class="pic"><img src="img/tem5.jpg" alt=""></div>
                                    <div class="details">
                                        <h4>Tiến Dũng</h4>
                                        <span>Architecture Designer</span>
                                        <div class="social">
                                            <a href=""><i class="fa fa-twitter"></i></a>
                                            <a href=""><i class="fa fa-facebook"></i></a>
                                            <a href=""><i class="fa fa-google-plus"></i></a>
                                            <a href=""><i class="fa fa-linkedin"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-lg-2 col-md-6">
                                <div class="member">
                                    <div class="pic"><img src="img/tem6.jpg" alt=""></div>

                                </div>
                            </div>
                        </div>
                    </div>

                    </div>
                </section><!-- #team -->

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