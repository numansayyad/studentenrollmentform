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
    background:linear-gradient(135deg,#74ebd5,#9face6);
}

/* ================= NAVBAR ================= */

nav{
    width:100%;
    height:70px;
    background:#1e293b;
    display:flex;
    justify-content:space-between;
    align-items:center;
    padding:0 60px;
    box-shadow:0 5px 15px rgba(0,0,0,.2);
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

/* ================= CONTAINER ================= */

.container{
    width:95%;
    margin:40px auto;
    background:white;
    border-radius:12px;
    padding:25px;
    box-shadow:0 10px 25px rgba(0,0,0,.2);
}

.container h2{
    text-align:center;
    color:#1e293b;
    margin-bottom:25px;
    font-size:34px;
}

table{
    width:100%;
    border-collapse:collapse;
}

th{
    background:#1e293b;
    color:white;
    padding:14px;
    font-size:18px;
}

td{
    padding:12px;
    text-align:center;
    border-bottom:1px solid #ddd;
}

tr:nth-child(even){
    background:#f8f9fa;
}

tr:hover{
    background:#dff6ff;
    transition:.3s;
}

.no-data{
    text-align:center;
    color:red;
    font-size:22px;
    margin-top:20px;
}

/* Buttons */

.update-btn{
    text-decoration:none;
    background:#28a745;
    color:white;
    padding:6px 12px;
    border-radius:5px;
}

.delete-btn{
    text-decoration:none;
    background:#dc3545;
    color:white;
    padding:6px 12px;
    border-radius:5px;
    margin-left:8px;
}

.update-btn:hover{
    background:#218838;
}

.delete-btn:hover{
    background:#c82333;
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