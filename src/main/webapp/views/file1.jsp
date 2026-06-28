<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Student Enrollment Form</title>

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
    padding-top:100px;
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
    position:fixed;
    top:0;
    left:0;
    box-shadow:0 5px 15px rgba(0,0,0,.25);
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
    border-radius:30px;
    transition:0.3s;
}

nav ul li a:hover{
    background:#38bdf8;
    color:#0f172a;
}

/* ================= FORM CONTAINER ================= */

.container{
    width:550px;
    margin:30px auto;
    background:white;
    padding:35px;
    border-radius:18px;
    box-shadow:0 15px 35px rgba(0,0,0,.25);
}

.container h2{
    text-align:center;
    color:#0f172a;
    margin-bottom:25px;
    font-size:32px;
}

.success{
    color:#16a34a;
    text-align:center;
    margin-bottom:20px;
    font-size:20px;
    font-weight:bold;
}

/* ================= FORM ================= */

label{
    display:block;
    margin-bottom:8px;
    font-size:18px;
    font-weight:bold;
    color:#1e293b;
}

input[type=text],
input[type=email],
select,
textarea{
    width:100%;
    padding:12px;
    border:2px solid #cbd5e1;
    border-radius:10px;
    margin-bottom:18px;
    font-size:16px;
    outline:none;
    transition:0.3s;
}

input:focus,
select:focus,
textarea:focus{
    border-color:#2563eb;
    box-shadow:0 0 12px rgba(37,99,235,.25);
}

textarea{
    resize:none;
    height:90px;
}

.radio-group,
.checkbox-group{
    margin-bottom:18px;
    font-size:17px;
}

.radio-group input,
.checkbox-group input{
    margin-right:5px;
}

.radio-group label,
.checkbox-group label{
    display:inline;
    margin-right:18px;
    font-weight:normal;
}

/* ================= BUTTON ================= */

button{
    width:100%;
    padding:14px;
    border:none;
    border-radius:10px;
    background:linear-gradient(135deg,#2563eb,#7c3aed);
    color:white;
    font-size:19px;
    font-weight:bold;
    cursor:pointer;
    transition:0.3s;
}

button:hover{
    transform:translateY(-2px);
    box-shadow:0 10px 20px rgba(37,99,235,.35);
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

            <h2>Student Enrollment Form</h2>

            <h3 class="success">${msg}</h3>

            <form:form action="savestudent" method="post" modelAttribute="student">

                <label>Name</label>
                <form:input path="name" />

                <label>Email</label>
                <form:input path="email" />

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
                    <form:radiobutton path="gender" value="Male" /> Male
                    &nbsp;&nbsp;&nbsp;
                    <form:radiobutton path="gender" value="Female" /> Female
                </div>

                <label>Timings</label>

                <div class="checkbox-group">
                    <form:checkbox path="timings" value="Morning" /> Morning
                    &nbsp;
                    <form:checkbox path="timings" value="Afternoon" /> Afternoon
                    &nbsp;
                    <form:checkbox path="timings" value="Evening" /> Evening
                </div>

                <label>Address</label>
                <form:textarea path="address" />

                <label>Mobile No</label>
                <form:input path="mobileNo" />

                <button type="submit">Enroll Now</button>

            </form:form>

        </div>

    </body>

    </html>