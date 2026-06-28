<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student List</title>

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
    transition:0.3s;
}

nav ul li a:hover{
    background:#38bdf8;
    color:#0f172a;
}

/* ================= CONTAINER ================= */

.container{
    width:95%;
    margin:40px auto;
    background:white;
    padding:30px;
    border-radius:18px;
    box-shadow:0 15px 35px rgba(0,0,0,.25);
}

.container h2{
    text-align:center;
    color:#0f172a;
    font-size:34px;
    margin-bottom:25px;
}

/* ================= TABLE ================= */

table{
    width:100%;
    border-collapse:collapse;
    overflow:hidden;
    border-radius:12px;
}

th{
    background:#2563eb;
    color:white;
    padding:15px;
    font-size:18px;
}

td{
    padding:14px;
    text-align:center;
    border-bottom:1px solid #e2e8f0;
}

tr:nth-child(even){
    background:#f8fafc;
}

tr:hover{
    background:#dbeafe;
    transition:0.3s;
}

/* ================= BUTTONS ================= */

.update-btn{
    text-decoration:none;
    background:#22c55e;
    color:white;
    padding:8px 15px;
    border-radius:8px;
    font-weight:bold;
    transition:0.3s;
}

.update-btn:hover{
    background:#16a34a;
    box-shadow:0 5px 10px rgba(34,197,94,.3);
}

.delete-btn{
    text-decoration:none;
    background:#ef4444;
    color:white;
    padding:8px 15px;
    border-radius:8px;
    font-weight:bold;
    margin-left:8px;
    transition:0.3s;
}

.delete-btn:hover{
    background:#dc2626;
    box-shadow:0 5px 10px rgba(239,68,68,.3);
}

.no-data{
    text-align:center;
    color:#dc2626;
    font-size:24px;
    font-weight:bold;
    margin-top:30px;
}


</style>

<script>

function confirmDelete(name){

    return confirm("Are you sure you want to delete '" + name + "' ?");

}

</script>

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

<h2>Student List</h2>

<c:choose>

<c:when test="${not empty data}">

<table>

<tr>
    <th>ID</th>
    <th>Name</th>
    <th>Email</th>
    <th>Qualification</th>
    <th>Course</th>
    <th>Gender</th>
    <th>Timings</th>
    <th>Address</th>
    <th>Mobile Number</th>
    <th>Action</th>
</tr>

<c:forEach var="studentss" items="${data}">

<tr>

<td>${studentss.id}</td>
<td>${studentss.name}</td>
<td>${studentss.email}</td>
<td>${studentss.qualification}</td>
<td>${studentss.course}</td>
<td>${studentss.gender}</td>
<td>${studentss.timings}</td>
<td>${studentss.address}</td>
<td>${studentss.mobileNo}</td>

<td>

<a class="update-btn"
   href="update?id=${studentss.id}">
   Update
</a>

<a class="delete-btn"
   href="delete?id=${studentss.id}"
   onclick="return confirmDelete('${studentss.name}')">
   Delete
</a>

</td>

</tr>

</c:forEach>

</table>

</c:when>

<c:otherwise>

<p class="no-data">No Student Records Found.</p>

</c:otherwise>

</c:choose>

</div>

</body>
</html>