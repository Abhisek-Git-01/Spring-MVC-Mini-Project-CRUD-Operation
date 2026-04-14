<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>

<!DOCTYPE html>
<html>
<head>
    <title>Add Doctor</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #1d2671, #c33764);
        }

        .title {
            text-align: center;
            color: white;
            margin-top: 30px;
            font-size: 32px;
            animation: fadeIn 1s ease-in-out;
        }

        .form-box {
            background: rgba(255, 255, 255, 0.1);
            padding: 30px;
            border-radius: 15px;
            backdrop-filter: blur(10px);
            box-shadow: 0 10px 30px rgba(0,0,0,0.4);
            animation: slideUp 0.8s ease;
        }

        .form-label {
            color: white;
        }

        .form-control {
            border-radius: 8px;
        }

        .btn-custom {
            width: 48%;
        }

        @keyframes fadeIn {
            from {opacity: 0;}
            to {opacity: 1;}
        }

        @keyframes slideUp {
            from {
                transform: translateY(50px);
                opacity: 0;
            }
            to {
                transform: translateY(0);
                opacity: 1;
            }
        }
    </style>
</head>

<body>

<h1 class="title">Add Doctor</h1>

<div class="container d-flex justify-content-center align-items-center" style="height: 80vh;">

    <frm:form modelAttribute="doctorVO" class="form-box col-md-4">

        <div class="mb-3">
            <label class="form-label">Doctor Name</label>
            <frm:input path="doctorName" class="form-control"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Doctor Address</label>
            <frm:input path="doctorAddress" class="form-control"/>
        </div>

        <div class="mb-3">
            <label class="form-label">Doctor Fee</label>
            <frm:input path="doctorFee" class="form-control"/>
        </div>

        <div class="d-flex justify-content-between mt-4">
            <input type="submit" value="Register" class="btn btn-info text-white btn-custom">
            <input type="reset" value="Cancel" class="btn btn-danger btn-custom">
        </div>

    </frm:form>

</div>

</body>
</html>