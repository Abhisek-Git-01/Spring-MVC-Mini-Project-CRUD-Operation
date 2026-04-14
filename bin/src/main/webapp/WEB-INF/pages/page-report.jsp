<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Page Report</title>

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #141e30, #243b55);
            color: white;
            overflow-x: hidden;
        }

        /* Title Animation */
        .title {
            text-align: center;
            margin-top: 20px;
            font-size: 34px;
            animation: fadeSlide 1s ease-in-out;
        }

        /* Button */
        .top-bar {
            text-align: center;
            margin: 20px;
            animation: fadeSlide 1.2s ease-in-out;
        }

        .add-btn {
            text-decoration: none;
            background: linear-gradient(45deg, #00c6ff, #0072ff);
            padding: 10px 18px;
            border-radius: 8px;
            color: white;
            font-weight: bold;
            transition: all 0.3s ease;
        }

        .add-btn:hover {
            transform: scale(1.1);
            box-shadow: 0 0 15px #00c6ff;
        }

        /* Table Container */
        .table-container {
            width: 90%;
            margin: auto;
            animation: fadeUp 1.2s ease;
        }

        /* Table */
        table {
            width: 100%;
            border-collapse: collapse;
            background: rgba(255,255,255,0.1);
            backdrop-filter: blur(10px);
            border-radius: 12px;
            overflow: hidden;
            animation: zoomIn 0.8s ease;
        }

        th {
            background: linear-gradient(45deg, #00c6ff, #0072ff);
            padding: 12px;
        }

        td {
            padding: 10px;
            text-align: center;
            transition: 0.3s;
        }

        /* Row Hover Animation */
        tr:hover {
            background: rgba(0,0,0,0.4);
            transform: scale(1.01);
        }

        /* Icons hover */
        img {
            transition: 0.3s;
        }

        img:hover {
            transform: scale(1.2) rotate(5deg);
        }

        /* Pagination */
        .pagination {
            text-align: center;
            margin-top: 25px;
            animation: fadeUp 1.5s ease;
        }

        .pagination a {
            text-decoration: none;
            color: white;
            background: linear-gradient(45deg, #00c6ff, #0072ff);
            padding: 6px 12px;
            margin: 4px;
            border-radius: 6px;
            transition: 0.3s;
        }

        .pagination a:hover {
            transform: scale(1.2);
            box-shadow: 0 0 10px #00c6ff;
        }

        .pagination span {
            margin: 4px;
            padding: 6px 12px;
            background: yellow;
            color: black;
            border-radius: 6px;
            font-weight: bold;
            animation: pulse 1s infinite alternate;
        }

        /* Messages */
        .success-msg {
            text-align: center;
            color: #00ffcc;
            margin-top: 20px;
            animation: fadeSlide 1s ease;
        }

        .no-data {
            text-align: center;
            color: #ff4b2b;
            animation: fadeSlide 1s ease;
        }

        /* Animations */
        @keyframes fadeSlide {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes fadeUp {
            from {
                opacity: 0;
                transform: translateY(40px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes zoomIn {
            from {
                transform: scale(0.9);
                opacity: 0;
            }
            to {
                transform: scale(1);
                opacity: 1;
            }
        }

        @keyframes pulse {
            from {
                transform: scale(1);
            }
            to {
                transform: scale(1.1);
            }
        }

    </style>
</head>

<body>

<h1 class="title">
    Page Report ${pageData.number+1}/${pageData.totalPages+1}
</h1>

<div class="top-bar">
    <a href="register" class="add-btn">➕ Add Doctor</a>
</div>

<c:choose>

    <c:when test="${!empty pageData}">

        <div class="table-container">

            <table>
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
                    <c:forEach var="doctor" items="${pageData.content}">
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
                                <a href="delete?id=${doctor.doctorId}" onclick="return confirm('Are you sure want to delete?')">
                                    <img src="images/delete.png" width="30">
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>

            <div class="pagination">

                <a href="page?page=0">First</a>

                <c:if test="${pageData.number < pageData.totalPages}">
                    <a href="page?page=${pageData.number+1}">Next</a>
                </c:if>

                <c:forEach var="i" begin="0" end="${pageData.totalPages-1}">
                    <c:choose>
                        <c:when test="${pageData.number == i}">
                            <span>${i+1}</span>
                        </c:when>
                        <c:otherwise>
                            <a href="page?page=${i}">${i+1}</a>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>

                <c:if test="${pageData.number>0}">
                    <a href="page?page=${pageData.number-1}">Previous</a>
                </c:if>

                <a href="page?page=${pageData.totalPages}">Last</a>

            </div>

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