<h1 class="title">Welcome to My Mini Project</h1>

<div class="container">
    <a href="showReport" class="card">
        <img src="images/register.png" alt="Register">
        <div class="overlay">
            <h2>Show Report</h2>
            <p>View all registered doctors</p>
        </div>
    </a>
</div>

<style>
/* Background */
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

/* Center container */
.container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 60vh;
}

/* Card */
.card {
    position: relative;
    width: 260px;
    border-radius: 15px;
    overflow: hidden;
    text-decoration: none;
    box-shadow: 0 10px 25px rgba(0,0,0,0.3);
    transition: transform 0.4s ease, box-shadow 0.4s ease;
}

/* Image */
.card img {
    width: 100%;
    height: auto;
    display: block;
}

/* Hover effect */
.card:hover {
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

/* Show overlay on hover */
.card:hover .overlay {
    transform: translateY(0);
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