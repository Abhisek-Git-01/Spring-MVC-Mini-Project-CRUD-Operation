<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<h1 class="title">Doctor Report</h1>

<div class="top-bar">
    <a href="register" class="add-btn">
        ➕ Add Doctor
    </a>
</div>

<c:choose>
    <c:when test="${!empty listDoctors}">
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
                    <c:forEach var="doctor" items="${listDoctors}">
                        <tr>
                            <td>${doctor.doctorId}</td>
                            <td>${doctor.doctorName}</td>
                            <td>${doctor.doctorAddress}</td>
                            <td>${doctor.doctorFee}</td>
                            <td>${doctor.discount}</td>
                            <td>${doctor.finalFee}</td>
							<td><a href="update?id=${doctor.doctorId}"><img src="images/update.png" width="30px" height="40px"></a></td>
							<td><a href="delete?id=${doctor.doctorId}" onclick="return confirm('Are you sure want to delete?')"><img src="images/delete.png" width="30px" height="40px"></a></td>
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
<style>

/* Background */
body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(135deg, #141e30, #243b55);
    color: white;
}

/* Title */
.title {
    text-align: center;
    margin-top: 20px;
    font-size: 34px;
    animation: fadeIn 1s ease-in-out;
}

/* Top bar */
.top-bar {
    text-align: center;
    margin: 20px;
}

/* Add button */
.add-btn {
    text-decoration: none;
    background: #00c6ff;
    padding: 10px 18px;
    border-radius: 8px;
    color: white;
    font-weight: bold;
    transition: 0.3s;
}

.add-btn:hover {
    background: #0072ff;
}

/* Table container */
.table-container {
    display: flex;
    justify-content: center;
    margin-top: 20px;
}

/* Table */
table {
    border-collapse: collapse;
    width: 80%;
    background: rgba(255,255,255,0.1);
    backdrop-filter: blur(8px);
    border-radius: 10px;
    overflow: hidden;
}

/* Header */
th {
    background: #00c6ff;
    padding: 12px;
}

/* Rows */
td {
    padding: 10px;
    text-align: center;
}

/* Zebra effect */
tr:nth-child(even) {
    background: rgba(255,255,255,0.05);
}

/* Hover */
tr:hover {
    background: rgba(0,0,0,0.3);
    transition: 0.3s;
}

/* No data */
.no-data {
    text-align: center;
    color: #ff4b2b;
}

/* Success message */
.success-msg {
    text-align: center;
    color: #00ffcc;
    margin-top: 20px;
}

/* Animation */
@keyframes fadeIn {
    from {opacity: 0;}
    to {opacity: 1;}
}

</style>