<%@ page import="java.sql.*" %>
        <%@ include file="doctor_home.jsp" %>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
    .gradient-custom {
/* fallback for old browsers */
background: #f6d365;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgb(6, 174, 235));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right bottom, rgba(246, 211, 101, 1), rgb(8, 198, 236))
}
</style>
<section class="vh-100" style="background-color: #f4f5f7;">
    <div class="container py-5 h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col col-lg-6 mb-4 mb-lg-0">
          <div class="card mb-3" style="border-radius: .5rem;">
            <div class="row g-0">
              <div class="col-md-4 gradient-custom text-center text-white"
                style="border-top-left-radius: .5rem; border-bottom-left-radius: .5rem;">
                <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava1-bg.webp"
                  alt="Avatar" class="img-fluid my-5" style="width: 80px;" />



                  <c:forEach var="doctord" items="${doctordata}">
                <h5>${doctord.name}</h5>
                
                <p>${doctord.role}</p>
                <!-- <i class="far fa-edit mb-5"></i> -->
              </div>
              <div class="col-md-8">
                <div class="card-body p-4">
                  <h6>Information</h6>
                  <hr class="mt-0 mb-4">
                  <div class="row pt-1">
                    <div class="col-6 mb-3">
                      <h6>Email</h6>
                      <p class="text-muted">${doctord.email}</p>
                    </div>
                    <div class="col-6 mb-3">
                      <h6>Password</h6>
                      <p class="text-muted">${doctord.password}</p>
                    </div>
                  </div>
                  
                  
                  
                      
                </c:forEach>
                  </div>
                  
                </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>