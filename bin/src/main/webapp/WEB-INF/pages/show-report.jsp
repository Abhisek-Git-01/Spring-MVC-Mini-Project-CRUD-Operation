<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Doctor Report</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #141e30, #243b55);
            color: white;
        }

        .title {
            text-align: center;
            margin-top: 20px;
            font-size: 34px;
            animation: fadeIn 1s ease-in-out;
        }

        .add-btn {
            background: #00c6ff;
            color: white;
            border-radius: 8px;
        }

        .add-btn:hover {
            background: #0072ff;
        }

        table {
            background: rgba(255,255,255,0.1);
            backdrop-filter: blur(8px);
        }

        th {
            background: #00c6ff;
        }

        .success-msg {
            text-align: center;
            color: #00ffcc;
            margin-top: 20px;
        }

        .no-data {
            text-align: center;
            color: #ff4b2b;
        }

        @keyframes fadeIn {
            from {opacity: 0;}
            to {opacity: 1;}
        }
    </style>
</head>

<body>

<h1 class="title">Doctor Report</h1>

<div class="text-center my-3">
    <a href="register" class="btn add-btn">➕ Add Doctor</a>
</div>

<c:choose>
    <c:when test="${!empty listDoctors}">

        <div class="container">
            <table class="table table-bordered text-center text-white">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Address</th>
                        <th>Fee</th>
                        <th>Discount</th>
                        <th>Final Fee</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                </thead>

                <tbody>
                    <c:forEach var="doctor" items="${listDoctors}">
                        <tr>
                            <td>${doctor.doctorId}</td>
                            <td>${doctor.doctorName}</td>
                            <td>${doctor.doctorAddress}</td>
                            <td>${doctor.doctorFee}</td>
                            <td>${doctor.discount}</td>
                            <td>${doctor.finalFee}</td>

                            <td>
                                <a href="update?id=${doctor.doctorId}">
                                    <img src="images/update.png" width="30">
                                </a>
                            </td>

                            <td>
                                <a href="delete?id=${doctor.doctorId}"
                                   onclick="return confirm('Are you sure want to delete?')">
                                    <img src="images/delete.png" width="30">
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>

    </c:when>

    <c:otherwise>
        <h2 class="no-data">No Doctors Found</h2>
    </c:otherwise>
</c:choose>

<c:if test="${not empty resultMsg}">
    <h3 class="success-msg">${resultMsg}</h3>
</c:if>

<c:if test="${not empty updateMsg}">
    <h3 class="success-msg">${updateMsg}</h3>
</c:if>

<c:if test="${not empty deleteMsg}">
    <h3 class="success-msg">${deleteMsg}</h3>
</c:if>

</body>
</html>