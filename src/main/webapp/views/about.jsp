<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About - Student Portal</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Times New Roman', Times, serif;
}

body{
    background:linear-gradient(135deg,#4facfe,#00f2fe);
    min-height:100vh;
}

/* ================= NAVBAR ================= */

nav{
    width:100%;
    height:75px;
    background:#0f172a;
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:0 70px;
    box-shadow:0 5px 15px rgba(0,0,0,.25);
}

.logo{
    color:white;
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
    border-radius:30px;
    transition:.3s;
}

nav ul li a:hover{
    background:#38bdf8;
    color:#0f172a;
}

/* ================= ABOUT SECTION ================= */

.container{
    width:75%;
    margin:60px auto;
    background:white;
    padding:40px;
    border-radius:18px;
    box-shadow:0 15px 35px rgba(0,0,0,.25);
}

.container h1{
    text-align:center;
    color:#0f172a;
    font-size:42px;
    margin-bottom:25px;
}

.container p{
    color:#555;
    font-size:20px;
    line-height:1.9;
    text-align:justify;
}

/* ================= FEATURE CARDS ================= */

.features{
    display:flex;
    justify-content:center;
    gap:30px;
    margin-top:45px;
    flex-wrap:wrap;
}

.card{
    flex:1;
    min-width:250px;
    background:#ffffff;
    padding:30px;
    border-radius:18px;
    text-align:center;
    box-shadow:0 10px 25px rgba(0,0,0,.15);
    transition:.3s;
}

.card:hover{
    transform:translateY(-10px);
    background:#eff6ff;
    box-shadow:0 15px 35px rgba(0,0,0,.25);
}

.card h2{
    color:#2563eb;
    margin-bottom:15px;
    font-size:24px;
}

.card p{
    color:#555;
    font-size:17px;
    line-height:1.7;
    text-align:center;
}

/* ================= FOOTER ================= */

footer{
    margin-top:50px;
    background:#0f172a;
    color:white;
    text-align:center;
    padding:25px;
    font-size:18px;
}

</style>

</head>

<body>

<nav>

<div class="logo">
Student Portal
</div>

<ul>
    <li><a href="/">Home</a></li>
    <li><a href="/enroll">Enroll Student</a></li>
    <li><a href="/studentslist">Student List</a></li>
    <li><a href="/about">About</a></li>
</ul>

</nav>

<div class="container">

<h1>About Student Portal</h1>

<p>
The Student Portal is a simple web application developed using
Spring Boot, Spring MVC, JSP, Hibernate, and MySQL.
It helps educational institutes manage student information efficiently.
Users can register new students, update student details,
view all student records, and delete records whenever required.
The system provides an easy-to-use interface with secure data management,
making student administration faster and more organized.
</p>

<div class="features">

<div class="card">
<h2>Student Registration</h2>
<p>
Enroll students quickly with complete personal and course details.
</p>
</div>

<div class="card">
<h2>Student Management</h2>
<p>
View, update, and delete student information with ease.
</p>
</div>

<div class="card">
<h2>Modern Technology</h2>
<p>
Built using Spring Boot, Spring MVC, JSP, Hibernate, and MySQL.
</p>
</div>

</div>

</div>

<footer>

<h3>Student Portal Management System</h3>

<p>© 2026 All Rights Reserved.</p>

</footer>

</body>
</html>
```
