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
    background:linear-gradient(135deg,#74ebd5,#9face6);
}

/* Navbar */

nav{
    width:100%;
    height:70px;
    background:#1e293b;
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:0 60px;
}

.logo{
    color:white;
    font-size:30px;
    font-weight:bold;
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
    padding:10px 18px;
    border-radius:6px;
    transition:.3s;
}

nav ul li a:hover{
    background:#4CAF50;
}

/* About Section */

.container{
    width:70%;
    margin:60px auto;
    background:white;
    padding:40px;
    border-radius:12px;
    box-shadow:0 10px 25px rgba(0,0,0,.2);
}

.container h1{
    text-align:center;
    color:#1e293b;
    margin-bottom:20px;
    font-size:40px;
}

.container p{
    font-size:20px;
    line-height:1.8;
    color:#444;
    text-align:justify;
}

/* Features */

.features{
    display:flex;
    justify-content:space-between;
    margin-top:40px;
    gap:20px;
}

.card{
    flex:1;
    background:#f4f6f9;
    padding:20px;
    border-radius:10px;
    text-align:center;
    transition:.3s;
}

.card:hover{
    transform:translateY(-8px);
    background:#e3f2fd;
}

.card h2{
    color:#1e293b;
    margin-bottom:10px;
}

.card p{
    font-size:18px;
    text-align:center;
}

/* Footer */

footer{
    margin-top:40px;
    background:#1e293b;
    color:white;
    text-align:center;
    padding:20px;
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
