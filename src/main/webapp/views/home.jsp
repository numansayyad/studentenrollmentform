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
    list-style:none;
    display:flex;
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

/* ================= HERO SECTION ================= */

.hero{
    height:520px;
    background:linear-gradient(135deg,#4facfe,#00f2fe);
    display:flex;
    justify-content:center;
    align-items:center;
    flex-direction:column;
    text-align:center;
    color:white;
}

.hero h1{
    font-size:60px;
    margin-bottom:20px;
    text-shadow:2px 2px 5px rgba(0,0,0,.2);
}

.hero p{
    width:70%;
    font-size:22px;
    line-height:1.8;
    color:#f8fafc;
}

.hero a{
    margin-top:35px;
    text-decoration:none;
    background:#0f172a;
    color:white;
    padding:15px 35px;
    border-radius:30px;
    font-size:20px;
    font-weight:bold;
    transition:.3s;
}

.hero a:hover{
    background:white;
    color:#2563eb;
    transform:translateY(-3px);
}

/* ================= FEATURES ================= */

.features{
    width:90%;
    margin:60px auto;
    display:flex;
    justify-content:center;
    gap:30px;
    flex-wrap:wrap;
}

.card{
    width:320px;
    background:white;
    padding:30px;
    border-radius:18px;
    text-align:center;
    box-shadow:0 15px 30px rgba(0,0,0,.15);
    transition:.3s;
}

.card:hover{
    transform:translateY(-10px);
    box-shadow:0 20px 40px rgba(0,0,0,.25);
}

.card h2{
    color:#0f172a;
    margin-bottom:15px;
}

.card p{
    color:#555;
    font-size:17px;
    line-height:1.8;
}

/* ================= FOOTER ================= */

footer{
    background:#0f172a;
    color:white;
    text-align:center;
    padding:25px;
    margin-top:40px;
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
