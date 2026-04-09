<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <title>Mini Project</title>

    <!-- Bootstrap CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(135deg, #1d2671, #c33764);
            height: 100vh;
        }

        /* Title */
        .title {
            text-align: center;
            color: #fff;
            margin-top: 40px;
            font-size: 36px;
            letter-spacing: 1px;
            animation: fadeIn 1s ease-in-out;
        }

        /* Card */
        .card-custom {
            position: relative;
            border-radius: 15px;
            overflow: hidden;
            text-decoration: none;
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
            transition: transform 0.4s ease, box-shadow 0.4s ease;
        }

        .card-custom img {
            width: 100%;
            height: auto;
        }

        .card-custom:hover {
            transform: scale(1.08);
            box-shadow: 0 20px 40px rgba(0,0,0,0.5);
        }

        /* Overlay */
        .overlay {
            position: absolute;
            bottom: 0;
            background: rgba(0,0,0,0.7);
            color: #fff;
            width: 100%;
            text-align: center;
            padding: 15px;
            transform: translateY(100%);
            transition: transform 0.4s ease;
        }

        .card-custom:hover .overlay {
            transform: translateY(0);
        }

        /* Button link */
        .page-link-btn {
            display: block;
            width: fit-content;
            margin: 30px auto;
            padding: 10px 20px;
            background: #00c6ff;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            transition: 0.3s;
        }

        .page-link-btn:hover {
            background: #0072ff;
        }

        /* Animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>

<body>

    <h1 class="title">Welcome to My Mini Project</h1>

    <div class="container d-flex justify-content-center align-items-center" style="height: 60vh;">
        
        <a href="showReport" class="card-custom col-md-3">
            <img src="images/register.png" alt="Register">
            
            <div class="overlay">
                <h4>Show Report</h4>
                <p>View all registered doctors</p>
            </div>
        </a>

    </div>

    <!-- Page Navigation Button -->
    <a href="/page" class="page-link-btn text-center">
        Go to Pagination Page
    </a>

</body>
</html>