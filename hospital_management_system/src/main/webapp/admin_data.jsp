
    <%@ page import="java.sql.*" %>
        <%@ include file="admin_home.jsp" %>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <link rel="stylesheet" href="assets/css/dashboard_data.css">

                <div class="body-wrapper">

                    <div class="container-fluid">

                        <table class="table table-striped table-primary" border="1px" width="100%">
                            <tr class="table table-primary">
                                <th>Sl no.</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Role</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>

                            <c:forEach var="admin" items="${admind}">
                                <tr>
                                    <td>${admin.sl_no}</td>
                                    <td>${admin.name}</td>
                                    <td>${admin.email}</td>
                                    <td>${admin.role}</td>
                                    <td>${admin.status}</td>
                                    <td>
                                        <button class="btn btn-outline-primary">Update</button>
                                        <button class="btn btn-outline-primary">Delete</button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>