<%@ include file="component/appointment_navbar.jsp" %>
  <%@ include file="component/cdn.jsp" %>
    <section class="vh-100" style="background-color: #eee;">
      <div class="container h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
          <div class="col-lg-12 col-xl-11">
            <div class="card text-black" style="border-radius: 25px;">

              <div class="card-body p-md-5">
                <div class="row justify-content-center">
                  <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                    <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Login</p>

                    <form class="mx-1 mx-md-4" action="login" method="post" onsubmit="return validateLoginForm()">
                      
                      <div class="d-flex flex-row align-items-center mb-4">
                        <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                        <div class="form-outline flex-fill mb-0">
                          <input type="email" class="form-control" name="email" />
                          <label class="form-label" for="email">Email</label>
                          <span id="emailError" class="text-danger"></span>
                        </div>
                      </div>
                      <div class="d-flex flex-row align-items-center mb-4">
                        <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                        <div class="form-outline flex-fill mb-0">
                          <input type="password" class="form-control" name="password" />
                          <label class="form-label" for="password">Password</label>
                          <span id="passwordError" class="text-danger"></span>
                        </div>
                      </div>
                      <!-- <div class="d-flex flex-row align-items-center mb-4">
                        <div class="form-outline flex-fill mb-0">
                          <select name="role" class="form-control">
                        <option value="faculty">Doctor</option>
                        <option value="user">User</option>
                      </select>
                        </div>
                      </div> -->
                      <br>
                      <br>
                      <br>
                      <br>
                      <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                        <input type="submit" class="btn" value="Login">
                        &nbsp;&nbsp; &nbsp;&nbsp;
                        <a href="signup" class="btn" type="submit">Register</a>
                      </div>
                    </form>
                    <h1>${sms}</h1>
                  </div>
                  <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">
                    <img src="assets/img/gallery/doctor-signup-700.png" class="img-fluid" alt="Sample image">
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <script>
        function validateLoginForm() {
         var email = document.getElementsByName('email')[0].value.trim();
         var password = document.getElementsByName('password')[0].value.trim();
         var isValid = true;
     
         // Regular expression for email validation
         var emailRegex = /^[^\s@]+@[^\s@]+$/;
     
         if (email === '') {
             alert('Please enter your email');
             isValid = false;
         } else if (!emailRegex.test(email)) {
             alert('Please enter a valid email address');
             isValid = false;
         }
     
         if (password === '') {
             alert('Please enter your password');
             isValid = false;
         }
     
         return isValid;
     }
     </script>