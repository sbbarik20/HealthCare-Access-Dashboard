<%@ page import="java.sql.*" %>
  <%@ include file="admin_home.jsp" %>
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
      <style>
        .s {
          display: block;
        }

        .h {
          display: none;
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



                    <c:forEach var="admind" items="${admindata}">
                      <h5>
                        <label class="s" id="lblname">${admind.name}</label>
                        <input class="h" id="txtname" type="text" class="h" value="${admind.name}">
                      </h5>

                      <p>
                        <label class="s" id="lblrole">${admind.role}</label>
                      </p>
                      <input type="button" class="s btn btn-outline-primary" value="Edit">
                      <input type="button" class="h btn btn-outline-primary" value="Update">
                  </div>
                  <div class="col-md-8">
                    <div class="card-body p-4">
                      <h6>Information</h6>
                      <hr class="mt-0 mb-4">
                      <div class="row pt-1">
                        <div class="col-6 mb-3">
                          <h6>Email</h6>
                          <p>
                            <label class="s text-muted" id="lblemail">${admind.email}</label>
                            <input class="h" type="text" id="txtemail" value="${admind.email}">
                          </p>
                          
                        </div>
                        <div class="col-6 mb-3">
                          <h6>Password</h6>
                          <p>
                            <label class="s text-muted" id="lblpassword">${admind.password}</label>
                            <input class="h" type="text" id="txtpassword" value="${admind.password}">
                          </p>
                          
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
      <script>
        $(document).ready(function(){
          $("input[type='button']").click(function(){
            var btn=$(this).val();
            var tr=$(this).parents('tr');
            var sl_no=tr.find('#lblsl_no').html();
            var name=tr.find('#txtname').val();
            var email=tr.find('#txtemail').val();
            
          
           if(btn=="Edit"){
            $(this).val('Update');
            tr.find('#lblname').addClass('h').removeClass('s');
            tr.find('#lblemail').addClass('h').removeClass('s');
            tr.find('#lblrole').addClass('h').removeClass('s');
            tr.find('#lblpassword').addClass('h').removeClass('s');
    
            tr.find('#txtname').addClass('s').removeClass('h');
            tr.find('#txtemail').addClass('s').removeClass('h');
            tr.find('#txtpassword').addClass('s').removeClass('h');
  
           }if(btn=="Update"){
            $(this).val('Edit');
            $.ajax({
              url:"/update_admin",
              type:"post",
              data:{sl_no:sl_no,name:name,email:email,role:role,status:status},
              succcess:function(res){
              location.reload();
            }
            });
           }
        });
      });
      </script>