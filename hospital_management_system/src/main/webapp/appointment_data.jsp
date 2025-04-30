<%@ page import="java.sql.*" %>
  <%@ include file="admin_home.jsp" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

      <main class="main-content position-relative border-radius-lg ">
        <!-- Navbar -->
        <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl " id="navbarBlur"
          data-scroll="false">
          <div class="container-fluid py-1 px-3">
            <nav aria-label="breadcrumb">
              <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                <li class="breadcrumb-item text-sm"><a class="opacity-5 text-white" href="javascript:;">Admin's</a></li>
                <li class="breadcrumb-item text-sm text-white active" aria-current="page">Tables</li>
              </ol>
              <h6 class="font-weight-bolder text-white mb-0">Approved Appointment Table</h6>
            </nav>
            <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
              <div class="ms-md-auto pe-md-3 d-flex align-items-center">
                <div class="input-group">
                  <span class="input-group-text text-body"><i class="fas fa-search" aria-hidden="true"></i></span>
                  <input type="text" class="form-control" placeholder="Search here..." id="searchInput">
                </div>
              </div>
              <ul class="navbar-nav  justify-content-end">
                <li class="nav-item d-flex align-items-center">
                  <a href="index" class="nav-link text-white font-weight-bold px-0">
                    <i class="fa fa-user me-sm-1"></i>
                    <span class="d-sm-inline d-none">Logout</span>
                  </a>
                </li>
                <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
                  <a href="javascript:;" class="nav-link text-white p-0" id="iconNavbarSidenav">
                    <div class="sidenav-toggler-inner">
                      <i class="sidenav-toggler-line bg-white"></i>
                      <i class="sidenav-toggler-line bg-white"></i>
                      <i class="sidenav-toggler-line bg-white"></i>
                    </div>
                  </a>
                </li>
                
                
              </ul>
            </div>
          </div>
        </nav>
        <!-- End Navbar -->
        <div class="container-fluid py-4">
          <div class="row">
            <div class="col-12">
              <div class="card mb-4">
                <div class="card-header pb-0">
                  <h6>Approved Appointment table</h6>
                </div>
                <div class="card-body px-0 pt-0 pb-2">
                  <div class="table-responsive p-0">
                    <table class="table align-items-center mb-0" id="dataTable">
                      <thead>
                        <tr>
                          <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Sl No.
                          </th>
                          <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Doctor
                          </th>
                          <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">
                            Specialist
                          </th>
                          <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                            Patient</th>
                          <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                            Patient Number</th>
                          <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                            Patient Email</th>
                          <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                            Appointment Date</th>
                          <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                            Status</th>
                          <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">
                            Action</th>

                        </tr>
                      </thead>
                      <tbody>
                        <c:forEach var="appointment" items="${appointmentd}">
                          <tr>
                            <td id="sl_no">${appointment.sl_no}</td>
                            <td>${appointment.dr_name}</td>
                            <td>${appointment.specialist}</td>
                            <td>${appointment.pt_name}</td>
                            <td>${appointment.pt_phone}</td>
                            <td>${appointment.pt_email}</td>
                            <td>${appointment.apt_date}</td>
                            <td>${appointment.status}</td>
                            <td>
                              <input type="button" class="btn btn-outline-primary" value="Reject"></button>
                            </td>
                          </tr>
                        </c:forEach>
                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>
          </div>
      </main>
      <div class="fixed-plugin">
        <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
          <i class="fa fa-cog py-2"> </i>
        </a>
        <div class="card shadow-lg">
          <div class="card-header pb-0 pt-3 ">
            <div class="float-start">
              <h5 class="mt-3 mb-0">Admin's Control</h5>
              <p>See our dashboard options.</p>
            </div>
            <div class="float-end mt-4">
              <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
                <i class="fa fa-close"></i>
              </button>
            </div>
            <!-- End Toggle Button -->
          </div>
          <hr class="horizontal dark my-1">
          <div class="card-body pt-sm-3 pt-0 overflow-auto">
            <!-- Sidebar Backgrounds -->
            <div>
              <h6 class="mb-0">Sidebar Colors</h6>
            </div>
            <a href="javascript:void(0)" class="switch-trigger background-color">
              <div class="badge-colors my-2 text-start">
                <span class="badge filter bg-gradient-primary active" data-color="primary"
                  onclick="sidebarColor(this)"></span>
                <span class="badge filter bg-gradient-dark" data-color="dark" onclick="sidebarColor(this)"></span>
                <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
                <span class="badge filter bg-gradient-success" data-color="success" onclick="sidebarColor(this)"></span>
                <span class="badge filter bg-gradient-warning" data-color="warning" onclick="sidebarColor(this)"></span>
                <span class="badge filter bg-gradient-danger" data-color="danger" onclick="sidebarColor(this)"></span>
              </div>
            </a>
            <!-- Sidenav Type -->
            <div class="mt-3">
              <h6 class="mb-0">Sidenav Type</h6>
              <p class="text-sm">Choose between 2 different sidenav types.</p>
            </div>
            <div class="d-flex">
              <button class="btn bg-gradient-primary w-100 px-3 mb-2 active me-2" data-class="bg-white"
                onclick="sidebarType(this)">White</button>
              <button class="btn bg-gradient-primary w-100 px-3 mb-2" data-class="bg-default"
                onclick="sidebarType(this)">Dark</button>
            </div>
            <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>
            <!-- Navbar Fixed -->
            <div class="d-flex my-3">
              <h6 class="mb-0">Navbar Fixed</h6>
              <div class="form-check form-switch ps-0 ms-auto my-auto">
                <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed"
                  onclick="navbarFixed(this)">
              </div>
            </div>
            <hr class="horizontal dark my-sm-4">
            <div class="mt-2 mb-5 d-flex">
              <h6 class="mb-0">Light / Dark</h6>
              <div class="form-check form-switch ps-0 ms-auto my-auto">
                <input class="form-check-input mt-1 ms-auto" type="checkbox" id="dark-version" onclick="darkMode(this)">
              </div>
            </div>
            </div>
          </div>
        </div>
      </div>
      <!--   Core JS Files   -->
      <script src="assets/js/core/popper.min.js"></script>
      <script src="assets/js/core/bootstrap.min.js"></script>
      <script src="assets/js/plugins/perfect-scrollbar.min.js"></script>
      <script src="assets/js/plugins/smooth-scrollbar.min.js"></script>
      <script src="assets/jquery.js"></script>
      <script>
        document.getElementById('searchInput').addEventListener('input', function () {
          let searchValue = this.value.toLowerCase();
          let dataTable = document.getElementById('dataTable');
          let rows = dataTable.getElementsByTagName('tr');

          for (let i = 1; i < rows.length; i++) {  // Start from 1 to skip header row
            //let sl_no = rows[i].getElementsByTagName('td')[0].textContent.toLowerCase();
            let dr_name = rows[i].getElementsByTagName('td')[1].textContent.toLowerCase();
            let specialist = rows[i].getElementsByTagName('td')[2].textContent.toLowerCase();
            let pt_name = rows[i].getElementsByTagName('td')[3].textContent.toLowerCase();
            let pt_phone = rows[i].getElementsByTagName('td')[4].textContent.toLowerCase();
            let pt_email = rows[i].getElementsByTagName('td')[5].textContent.toLowerCase();
            let apt_date = rows[i].getElementsByTagName('td')[6].textContent.toLowerCase();
            let status = rows[i].getElementsByTagName('td')[7].textContent.toLowerCase();

            if (dr_name.includes(searchValue) || specialist.includes(searchValue) || pt_name.includes(searchValue) || pt_phone.includes(searchValue) || pt_email.includes(searchValue) || apt_date.includes(searchValue) || status.includes(searchValue)) {
              rows[i].style.display = '';
            } else {
              rows[i].style.display = 'none';
            }
          }
        });
      </script>
      
      <script>
           $(document).ready(function(){
                    
                    $("input[type='button']").click(function(){
                        var tr = $(this).parents('tr');
                        var sl_no=tr.find('#sl_no').html();
                        $.ajax({
                            url: "/reject_appointment",
                            type: "POST",
                            data: {sl_no: sl_no},
                            success: function(res){
                                location.reload();
                            }
                            
                        })
                    })
                })
      </script>
      <!-- Github buttons -->
      <script async defer src="https://buttons.github.io/buttons.js"></script>
      <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
      <script src="assets/js/argon-dashboard.min.js?v=2.0.4"></script>


      </body>

      </html>