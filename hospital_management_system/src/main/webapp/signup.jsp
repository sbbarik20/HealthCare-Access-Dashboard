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

                    <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Sign up</p>

                    <form class="mx-1 mx-md-4" action="sign_up" method="post" onsubmit="return validateForm()">
                      <div class="d-flex flex-row align-items-center mb-4">
                        <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                        <div class="form-outline flex-fill mb-0">
                          <input type="text" class="form-control" name="name" />
                          <label class="form-label" for="name">Name</label>
                          <span id="nameError" class="text-danger"></span>
                        </div>
                      </div>
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
                      <h2>
                        <span hidden>Role</span>
                      </h2>
                      <h3>
                        <div class="form-check">
                          <input name="role" class="form-check-input" type="radio" id="flexRadioDefault1"
                            value="doctor" hidden>
                         
                        </div>
                      </h3>
                      <h3>
                        <div class="form-check">
                          <input name="role" class="form-check-input" type="radio" name="flexRadioDefault"
                            id="flexRadioDefault2" value="user" checked hidden>
                        
                        </div>
                      </h3>
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
                        <input type="submit" class="btn btn-primary btn-lg" value="Register">
                      </div>
                    </form>
                    ${sms}
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
      function validateForm() {
        var name = document.querySelector('input[name="name"]').value.trim();
        var email = document.querySelector('input[name="email"]').value.trim();
        var password = document.querySelector('input[name="password"]').value.trim();
        var role = document.querySelector('input[name="role"]:checked');
    
        var nameError = document.getElementById('nameError');
        var emailError = document.getElementById('emailError');
        var passwordError = document.getElementById('passwordError');
    
        var isValid = true;
    
        // Name validation
        if (name === '') {
          nameError.textContent = 'Name is required';
          isValid = false;
        } else {
          nameError.textContent = '';
        }
    
        // Email validation
        if (email === '') {
          emailError.textContent = 'Email is required';
          isValid = false;
        } else if (!isValidEmail(email)) {
          emailError.textContent = 'Enter a valid email address';
          isValid = false;
        } else {
          emailError.textContent = '';
        }
    
        // Password validation
        if (password === '') {
          passwordError.textContent = 'Password is required';
          isValid = false;
        } else if (password.length < 8) {
          passwordError.textContent = 'Password must be at least 8 characters long';
          isValid = false;
        } else {
          passwordError.textContent = '';
        }
    
        // Role validation
        if (!role) {
          isValid = false;
        }
    
        // Display alert if any field is empty
        if (!isValid) {
          alert('Please fill out all fields.');
        }
    
        return isValid;
      }
    
      function isValidEmail(email) {
        // Regular expression for email validation
        var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailRegex.test(email);
      }
    </script>
    