<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Update Form</title>

<style>
*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Times New Roman', Times, serif;
}

body{
    background:linear-gradient(135deg,#667eea,#764ba2);
    min-height:100vh;
    padding-top:100px;
}

/* ================= NAVBAR ================= */

nav{
    width:100%;
    height:75px;
    background:#111827;
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:0 70px;
    position:fixed;
    top:0;
    left:0;
    box-shadow:0 8px 20px rgba(0,0,0,.3);
    z-index:1000;
}

.logo{
    color:#fff;
    font-size:32px;
    font-weight:bold;
    letter-spacing:2px;
}

nav ul{
    display:flex;
    list-style:none;
}

nav ul li{
    margin-left:25px;
}

nav ul li a{
    text-decoration:none;
    color:white;
    font-size:18px;
    font-weight:bold;
    padding:10px 18px;
    border-radius:25px;
    transition:.3s;
}

nav ul li a:hover{
    background:#8b5cf6;
    color:white;
}

/* ================= FORM ================= */

.container{
    width:540px;
    margin:20px auto;
    padding:35px;
    border-radius:20px;
    background:rgba(255,255,255,.18);
    backdrop-filter:blur(12px);
    border:1px solid rgba(255,255,255,.3);
    box-shadow:0 15px 35px rgba(0,0,0,.25);
}

h2{
    text-align:center;
    color:white;
    margin-bottom:25px;
    font-size:34px;
}

.success{
    text-align:center;
    color:#d1fae5;
    font-size:20px;
    margin-bottom:20px;
    font-weight:bold;
}

label{
    display:block;
    color:white;
    font-size:18px;
    font-weight:bold;
    margin-bottom:8px;
}

input[type=text],
input[type=email],
select,
textarea{
    width:100%;
    padding:12px;
    border:none;
    border-radius:10px;
    margin-bottom:18px;
    font-size:16px;
    outline:none;
    background:rgba(255,255,255,.9);
    transition:.3s;
}

input:focus,
select:focus,
textarea:focus{
    transform:scale(1.02);
    box-shadow:0 0 10px rgba(255,255,255,.6);
}

textarea{
    height:90px;
    resize:none;
}

.radio-group,
.checkbox-group{
    color:white;
    margin-bottom:18px;
    font-size:17px;
}

.radio-group input,
.checkbox-group input{
    margin-right:5px;
}

/* ================= BUTTON ================= */

button{
    width:100%;
    padding:14px;
    border:none;
    border-radius:30px;
    background:linear-gradient(135deg,#ff6a00,#ee0979);
    color:white;
    font-size:19px;
    font-weight:bold;
    cursor:pointer;
    transition:.3s;
}

button:hover{
    transform:translateY(-3px);
    box-shadow:0 12px 20px rgba(238,9,121,.4);
}

button:active{
    transform:scale(.98);
}


</style>

</head>

<body>

<!-- Navbar -->

<nav>

    <div class="logo">
        Student Portal
    </div>

    <ul>
        <li><a href="home">Home</a></li>
        <li><a href="/enroll">Enroll Student</a></li>
<li><a href="/studentslist">Student List</a></li>
        <li><a href="/about">About</a></li>
    </ul>

</nav>

<!-- Form -->

<div class="container">

    <h2>Student Update Form</h2>

    <h3 >${mssg}</h3>

    <form:form action="editstudent" method="post" modelAttribute="student">
         <label>Enter ID</label>
        <form:input path="id"/>

        <label>Name</label>
        <form:input path="name"/>

        <label>Email</label>
        <form:input path="email"/>

        <label>Qualification</label>

        <form:select path="qualification">
            <form:option value="Full Stack Java">Full Stack Java</form:option>
            <form:option value="Full Stack Python">Full Stack Python</form:option>
            <form:option value="Spring Boot Microservices">Spring Boot Microservices</form:option>
            <form:option value="Core Java">Core Java</form:option>
            <form:option value="Python With SQL">Python With SQL</form:option>
            <form:option value="Core Python">Core Python</form:option>
            <form:option value="Web Development">Web Development</form:option>
        </form:select>

        <label>Gender</label>

        <div class="radio-group">
            <form:radiobutton path="gender" value="Male"/> Male
            &nbsp;&nbsp;&nbsp;
            <form:radiobutton path="gender" value="Female"/> Female
        </div>

        <label>Timings</label>

        <div class="checkbox-group">
            <form:checkbox path="timings" value="Morning"/> Morning
            &nbsp;
            <form:checkbox path="timings" value="Afternoon"/> Afternoon
            &nbsp;
            <form:checkbox path="timings" value="Evening"/> Evening
        </div>

        <label>Address</label>
        <form:textarea path="address"/>

        <label>Mobile No</label>
        <form:input path="mobileNo"/>

        <button type="submit">Update Student</button>

    </form:form>

</div>

</body>
</html>