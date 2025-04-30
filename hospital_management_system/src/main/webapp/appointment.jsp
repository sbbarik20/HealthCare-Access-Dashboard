<%@ include file="component/cdn.jsp" %>

<script>
    // Function to validate the form
    function validateForm() {
        var spl = document.forms["appointmentForm"]["spl"].value;
        var doctor = document.forms["appointmentForm"]["doctor"].value;
        var name = document.forms["appointmentForm"]["name"].value;
        var email = document.forms["appointmentForm"]["email"].value;
        var date = document.forms["appointmentForm"]["date"].value;
        var phone_no = document.forms["appointmentForm"]["phone_no"].value;
        

        // Check if any field is empty
        if (spl == "Select A Service" || doctor == "Select Doctor" || name == "" || email == "" || date == "" || phone_no == "") {
            alert("Please fill the all details ");
            return false;
        }

        // Validate email format
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        if (!emailRegex.test(email)) {
            alert("Please enter a valid email address");
            return false;
        }

        // Validate phone number format
        var phoneRegex = /^\d{10}$/;
        if (!phoneRegex.test(phone_no)) {
            alert("Please enter a valid phone number");
            return false;
        }
        return true;
    }
</script>

    <head>
        <meta charset="utf-8">
        <title>Thala Medical</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Favicon -->
        <link href="assets/img1/favicon.ico" rel="icon">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link
            href="https://fonts.googleapis.com/css2?family=Jost:wght@500;600;700&family=Open+Sans:wght@400;600&display=swap"
            rel="stylesheet">

        <!-- Icon Font Stylesheet -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="assets/lib1/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="assets/lib1/animate/animate.min.css" rel="stylesheet">
        <link href="assets/lib1/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />
        <link href="assets/lib1/twentytwenty/twentytwenty.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="assets/css1/bootstrap.min.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="assets/css1/style.css" rel="stylesheet">
    </head>

    <!DOCTYPE html>
    <html lang="en">

    <body>
        <%@ include file="component/appointment_navbar.jsp" %>

            <!-- Full Screen Search Start -->
            <div class="modal fade" id="searchModal" tabindex="-1">
                <div class="modal-dialog modal-fullscreen">
                    <div class="modal-content" style="background: rgba(9, 30, 62, .7);">
                        <div class="modal-header border-0">
                            <button type="button" class="btn bg-white btn-close" data-bs-dismiss="modal"
                                aria-label="Close"></button>
                        </div>
                        <div class="modal-body d-flex align-items-center justify-content-center">
                            <div class="input-group" style="max-width: 600px;">
                                <input type="text" class="form-control bg-transparent border-primary p-3"
                                    placeholder="Type search keyword">
                                <button class="btn btn-primary px-4"><i class="bi bi-search"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Full Screen Search End -->


            <!-- Hero Start -->
            <div class="container-fluid bg-primary py-5 hero-header mb-5">
                <div class="row py-3">
                    <div class="col-12 text-center">
                        <h1 class="display-3 text-white animated zoomIn">Appointment</h1>
                        <a href="" class="h4 text-white">Home</a>
                        <i class="far fa-circle text-white px-2"></i>
                        <a href="" class="h4 text-white">Appointment</a>
                    </div>
                </div>
            </div>
            <!-- Hero End -->


            <!-- Appointment Start -->
            <div class="container-fluid bg-primary bg-appointment mb-5 wow fadeInUp" data-wow-delay="0.1s"
                style="margin-top: 90px;">
                <div class="container">
                    <div class="row gx-5">
                        <div class="col-lg-6 py-5">
                            <div class="py-5">
                                <h1 class="display-5 text-white mb-4">We Are A Certified and Award Winning Medical
                                    Services
                                    You Can Trust</h1>
                                <p class="text-white mb-0">Eirmod sed tempor lorem ut dolores. Aliquyam sit sadipscing
                                    kasd ipsum. Dolor ea et dolore et at sea ea at dolor, justo ipsum duo rebum sea
                                    invidunt voluptua. Eos vero eos vero ea et dolore eirmod et. Dolores diam duo
                                    invidunt lorem. Elitr ut dolores magna sit. Sea dolore sanctus sed et. Takimata
                                    takimata sanctus sed.</p>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="appointment-form h-100 d-flex flex-column justify-content-center text-center p-5 wow zoomIn"
                                data-wow-delay="0.6s">
                                <h1 class="text-white mb-4">Make Appointment</h1>
                                <form method="post" action="makeAppointment" name="appointmentForm" onsubmit="return validateForm()">

                                    <div class="row g-3">
                                        <div class="col-12 col-sm-6">
                                            <select id="spl" name="spl"class="form-select bg-light border-0" style="height: 55px;">
                                                <option selected>Select A Service</option>
                                                <option value="Dentist">Dentist</option>
                                                <option value="Cardiology">Cardiology</option>
                                                <option value="ENT Specialist">ENT Specialist</option>
                                                <option value="Orthopedic">Orthopedic</option>
                                                <option value="Neuroanatomy">Neuroanatomy</option>
                                                <option value="Blood Screening">Blood Screening</option>
                                            </select>
                                        </div>
                                        <div class="col-12 col-sm-6">
                                            <select name="doctor" class="form-select bg-light border-0" style="height: 55px;">
                                                <option selected>Select Doctor</option>
                                                <option value="Doctor 1">Dr. Ateksha Bhardwaj</option>
                                                <option value="Doctor 2">Dr. Nidhi Rawal</option>
                                                <option value="Doctor 3">Dr. Atul Kumar Mittal</option>
                                                <option value="Doctor 4">seeree</option>
                                                <option value="abc">dr.abc</option>
                                            </select>
                                        </div>
                                        <div class="col-12 col-sm-6">
                                            <input type="text" class="form-control bg-light border-0"
                                                name="name"placeholder="Your Name" style="height: 55px;">
                                        </div>
                                        <div class="col-12 col-sm-6">
                                            <input type="email" class="form-control bg-light border-0"
                                              name="email"  placeholder="Your Email" style="height: 55px;">
                                        </div>
                                        <div class="col-12 col-sm-6">
                                            <div class="date" id="date1" data-target-input="nearest">
                                                <input type="date"
                                                     name="date"class="form-control bg-light border-0 datetimepicker-input"
                                                    placeholder="Appointment Date" 
                                                    style="height: 55px;">
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-6">
                                            <div class="time" id="time1" data-target-input="nearest">
                                                <input type="text"
                                                    name="phone_no" class="form-control bg-light border-0 datetimepicker-input"
                                                    placeholder="Enter phone number" 
                                                    style="height: 55px;">
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <button class="btn btn-dark w-100 py-3" type="submit">Make
                                                Appointment</button>
                                        </div>
                                    </div>
                                </form>
                                ${sms}
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Appointment End -->



            <div>
                <span>
                    &nbsp;
                    &nbsp;
                </span>
            </div>
            <!-- Back to Top -->
            <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded back-to-top"><i
                    class="bi bi-arrow-up"></i></a>


            <!-- JavaScript Libraries -->
            <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
            <script src="assets/lib1/wow/wow.min.js"></script>
            <script src="assets/lib1/easing/easing.min.js"></script>
            <script src="assets/lib1/waypoints/waypoints.min.js"></script>
            <script src="assets/lib1/owlcarousel/owl.carousel.min.js"></script>
            <script src="assets/lib1/tempusdominus/js/moment.min.js"></script>
            <script src="assets/lib1/tempusdominus/js/moment-timezone.min.js"></script>
            <script src="assets/lib1/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>
            <script src="assets/lib1/twentytwenty/jquery.event.move.js"></script>
            <script src="assets/lib1/twentytwenty/jquery.twentytwenty.js"></script>

            <!-- Template Javascript -->
            <script src="js1/main.js"></script>
            <!-- footer start -->

            <%@ include file="component/footer.jsp" %>

            <!-- footer end -->
    </body>

    </html>