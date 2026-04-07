<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>

<h1 class="title">Add Doctor</h1>

<div class="form-container">
    <frm:form modelAttribute="doctorVO" class="form-box">

        <div class="form-group">
            <label>Doctor Name</label>
            <frm:input path="doctorName" class="input"/>
        </div>

        <div class="form-group">
            <label>Doctor Address</label>
            <frm:input path="doctorAddress" class="input"/>
        </div>

        <div class="form-group">
            <label>Doctor Fee</label>
            <frm:input path="doctorFee" class="input"/>
        </div>

        <div class="btn-group">
            <input type="submit" value="Register" class="btn submit-btn">
            <input type="reset" value="Cancel" class="btn cancel-btn">
        </div>

    </frm:form>
</div>

<style>

/* Background */
body {
    margin: 0;
    font-family: 'Segoe UI', sans-serif;
    background: linear-gradient(135deg, #1d2671, #c33764);
}

/* Title */
.title {
    text-align: center;
    color: white;
    margin-top: 30px;
    font-size: 32px;
    animation: fadeIn 1s ease-in-out;
}

/* Container */
.form-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 75vh;
}

/* Form box */
.form-box {
    background: rgba(255, 255, 255, 0.1);
    padding: 30px 40px;
    border-radius: 15px;
    backdrop-filter: blur(10px);
    box-shadow: 0 10px 30px rgba(0,0,0,0.4);
    width: 320px;
    animation: slideUp 0.8s ease;
}

/* Form group */
.form-group {
    margin-bottom: 15px;
}

/* Labels */
.form-group label {
    color: #fff;
    font-size: 14px;
}

/* Inputs */
.input {
    width: 100%;
    padding: 8px;
    margin-top: 5px;
    border-radius: 8px;
    border: none;
    outline: none;
}

/* Buttons */
.btn-group {
    display: flex;
    justify-content: space-between;
    margin-top: 20px;
}

.btn {
    padding: 8px 15px;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    transition: 0.3s;
}

/* Submit button */
.submit-btn {
    background: #00c6ff;
    color: white;
}

.submit-btn:hover {
    background: #0072ff;
}

/* Cancel button */
.cancel-btn {
    background: #ff4b2b;
    color: white;
}

.cancel-btn:hover {
    background: #ff1e00;
}

/* Animations */
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