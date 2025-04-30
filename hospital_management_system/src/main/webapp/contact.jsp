<!doctype html>
<html class="no-js" lang="zxx">

<%@ include file="component/cdn.jsp" %>

    <body>


        <%@ include file="component/navbar.jsp" %>
            <main>
                <!--? Hero Start -->
                <div class="slider-area2">
                    <div class="slider-height2 d-flex align-items-center">
                        <div class="container">
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="hero-cap hero-cap2 text-center">
                                        <h2>Contact Us</h2>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Hero End -->
                <!-- ================ contact section start ================= -->
                <section class="contact-section">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                <h2 class="contact-title">Get in Touch</h2>
                            </div>
                            <div class="col-lg-8">
                                <form class="form-contact contact_form" action="contactus" method="post" onsubmit="return chk()">
                                    <div class="row">
                                        <div class="col-12">
                                            <div class="form-group">
                                                <textarea name="msg" class="form-control w-100" id="message" cols="30" rows="9" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Message'" placeholder="Enter Message"></textarea>
                                                <span id="sms"></span>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <input class="form-control" name="name" id="name" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter your name'" placeholder="Enter your name">
                                                <span id="smsname"></span>
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <input class="form-control" name="email" id="email" type="email" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter email address'" placeholder="Email">
                                                <span id="smsemail"></span>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="form-group">
                                                <input class="form-control" name="subject" id="subject" type="text" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Subject'" placeholder="Enter Subject">
                                                <span id="smssubject"></span>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group mt-3">
                                        <input type="submit" value="Send" class="button button-contactForm boxed-btn" />
                                    </div>

                                </form>
                                
                            </div>
                            <div class="col-lg-3 offset-lg-1">
                                <div class="media contact-info">
                                    <span class="contact-info__icon"><i class="ti-home"></i></span>
                                    <div class="media-body">
                                        <h3>Bhubaneswar,Odisha</h3>
                                        <p>Odisha 751019</p>
                                    </div>
                                </div>
                                <div class="media contact-info">
                                    <span class="contact-info__icon"><i class="ti-tablet"></i></span>
                                    <div class="media-body">
                                        <h3>+91 1800 200 400</h3>
                                        <p>Mon to Fri 9am to 6pm</p>
                                    </div>
                                </div>
                                <div class="media contact-info">
                                    <span class="contact-info__icon"><i class="ti-email"></i></span>
                                    <div class="media-body">
                                        <h3>ourmedicals@gmail.com</h3>
                                        <p>Send us your query anytime!</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- ================ contact section end ================= -->
            </main>

            <!-- footer start -->

            <%@ include file="component/footer.jsp" %>

                <!-- footer end -->
                <!-- Scroll Up -->
                <div id="back-top">
                    <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
                </div>

                <!-- JS here -->

                <script src="./assets/js/vendor/modernizr-3.5.0.min.js"></script>
                <!-- Jquery, Popper, Bootstrap -->
                <script src="./assets/js/vendor/jquery-1.12.4.min.js"></script>
                <script src="./assets/js/popper.min.js"></script>
                <script src="./assets/js/bootstrap.min.js"></script>
                <!-- Jquery Mobile Menu -->
                <script src="./assets/js/jquery.slicknav.min.js"></script>

                <!-- Jquery Slick , Owl-Carousel Plugins -->
                <script src="./assets/js/owl.carousel.min.js"></script>
                <script src="./assets/js/slick.min.js"></script>
                <!-- One Page, Animated-HeadLin -->
                <script src="./assets/js/wow.min.js"></script>
                <script src="./assets/js/animated.headline.js"></script>

                <!-- Nice-select, sticky -->
                <script src="./assets/js/jquery.nice-select.min.js"></script>
                <script src="./assets/js/jquery.sticky.js"></script>
                <script src="./assets/js/jquery.magnific-popup.js"></script>

                <!-- contact js -->
                <script src="./assets/js/contact.js"></script>
                <script src="./assets/js/jquery.form.js"></script>
                <script src="./assets/js/jquery.validate.min.js"></script>
                <script src="./assets/js/mail-script.js"></script>
                <script src="./assets/js/jquery.ajaxchimp.min.js"></script>

                <!-- Jquery Plugins, main Jquery -->
                <script src="./assets/js/plugins.js"></script>
                <script src="./assets/js/main.js"></script>

                <!-- <script>
                    function chk() {
                        var message = document.getElementById("message").value;
                        var name = document.getElementById("name").value;
                        var email = document.getElementById("email").value;
                        var subject = document.getElementById("subject").value;
                
                        if (message === '') {
                            document.getElementById("sms").innerHTML = "Please enter your message";
                            return false;
                        } else {
                            document.getElementById("sms").innerHTML = "";
                        }
                        if (name === '') {
                            document.getElementById("smsname").innerHTML = "Please enter your name";
                            return false;
                        } else {
                            document.getElementById("smsname").innerHTML = "";
                        }
                        if (email === '') {
                            document.getElementById("smsemail").innerHTML = "Please enter your email";
                            return false;
                        } else {
                            document.getElementById("smsemail").innerHTML = "";
                        }
                        if (subject === '') {
                            document.getElementById("smssubject").innerHTML = "Please enter the subject";
                            return false;
                        } else {
                            document.getElementById("smssubject").innerHTML = "";
                        }
                
                        return true; 
                    }
                </script> -->
                <script>
                    function chk() {
                        var message = document.getElementById("message").value;
                        var name = document.getElementById("name").value;
                        var email = document.getElementById("email").value;
                        var subject = document.getElementById("subject").value;
                        var isvalid = true;
                        var chkemail = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; 
                
                        var valid = msg();
                        if (valid) {
                            return true;
                        } else {
                            return false;
                        }
                
                        function msg() {
                            if (message === '') {
                                document.getElementById("sms").innerHTML = "Please enter your message";
                                isvalid = false;
                            } else {
                                document.getElementById("sms").innerHTML = "";
                            }
                
                            if (name === '') {
                                document.getElementById("smsname").innerHTML = "Please enter your name";
                                isvalid = false;
                            } else {
                                document.getElementById("smsname").innerHTML = "";
                            }
                
                            if (email === '' || !chkemail.test(email)) { 
                                document.getElementById("smsemail").innerHTML = "Please enter a valid email address";
                                isvalid = false;
                            } else {
                                document.getElementById("smsemail").innerHTML = "";
                            }
                
                            if (subject === '') {
                                document.getElementById("smssubject").innerHTML = "Please enter the subject";
                                isvalid = false;
                            } else {
                                document.getElementById("smssubject").innerHTML = "";
                            }
                
                            return isvalid;
                        }
                    }
                </script>
                
                
    </body>

</html>