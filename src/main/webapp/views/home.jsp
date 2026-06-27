<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Enrollment System</title>

<style>

*{
    margin:0;
    padding:0;
    box-sizing:border-box;
    font-family:'Times New Roman', Times, serif;
}

body{
    background:#f4f6f9;
}

/* Navbar */

nav{
    background:#1e293b;
    height:70px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:0 60px;
}

.logo{
    color:white;
    font-size:32px;
    font-weight:bold;
}

nav ul{
    list-style:none;
    display:flex;
}

nav ul li{
    margin-left:25px;
}

nav ul li a{
    color:white;
    text-decoration:none;
    font-size:18px;
    padding:10px 18px;
    border-radius:5px;
    transition:.3s;
}

nav ul li a:hover{
    background:#4CAF50;
}

/* Hero */

.hero{
    height:500px;
    background:linear-gradient(135deg,#74ebd5,#9face6);
    display:flex;
    justify-content:center;
    align-items:center;
    flex-direction:column;
    text-align:center;
}

.hero h1{
    font-size:55px;
    color:#1e293b;
}

.hero p{
    margin-top:20px;
    font-size:22px;
    color:#333;
    width:70%;
}

.hero a{
    margin-top:35px;
    text-decoration:none;
    background:#1e293b;
    color:white;
    padding:15px 35px;
    border-radius:8px;
    font-size:20px;
    transition:.3s;
}

.hero a:hover{
    background:#4CAF50;
}

/* Features */

.features{
    display:flex;
    justify-content:center;
    gap:30px;
    margin:60px;
    flex-wrap:wrap;
}

.card{
    width:300px;
    background:white;
    padding:25px;
    border-radius:12px;
    box-shadow:0 10px 20px rgba(0,0,0,.15);
    text-align:center;
    transition:.3s;
}

.card:hover{
    transform:translateY(-10px);
}

.card h2{
    color:#1e293b;
    margin-bottom:15px;
}

.card p{
    color:#555;
    line-height:1.6;
}

/* Footer */

footer{
    background:#1e293b;
    color:white;
    text-align:center;
    padding:20px;
    margin-top:50px;
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
<li><a href="/students">Student List</a></li>
<li><a href="/about">About</a></li>
</ul>

</nav>

<section class="hero">

<h1>Welcome to Student Enrollment System</h1>

<p>
Manage student enrollments quickly and efficiently.
Register students, maintain records, and simplify administration
with our modern Student Portal.
</p>

<a href="/enroll">Enroll Student</a>

</section>

<section class="features">

<div class="card">
<h2>Student Registration</h2>
<p>
Register new students with complete details including qualification,
timings, address, and contact information.
</p>
</div>

<div class="card">
<h2>Student Management</h2>
<p>
View, update, delete, and manage student records in one place using
a simple and user-friendly interface.
</p>
</div>

<div class="card">
<h2>Fast & Secure</h2>
<p>
Built with Spring MVC and JSP to provide secure, reliable,
and efficient student data management.
</p>
</div>

</section>

<footer>

<h3>Student Enrollment System</h3>

<p>© 2026 All Rights Reserved.</p>

</footer>

</body>
</html>
```
