<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>Student Enrollment Form</title>

        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Times New Roman', Times, serif;
            }

            /* Body */

            body {
                background: linear-gradient(135deg, #74ebd5, #9face6);
                padding-top: 100px;
            }

            /* Navbar */

            nav {
                width: 100%;
                height: 70px;
                background: #1e293b;
                display: flex;
                justify-content: space-between;
                align-items: center;
                padding: 0 60px;
                position: fixed;
                top: 0;
                left: 0;
                box-shadow: 0 5px 15px rgba(0, 0, 0, .2);
            }

            .logo {
                color: white;
                font-size: 30px;
                font-weight: bold;
                letter-spacing: 1px;
            }

            nav ul {
                list-style: none;
                display: flex;
            }

            nav ul li {
                margin-left: 30px;
            }

            nav ul li a {
                text-decoration: none;
                color: white;
                font-size: 18px;
                font-weight: bold;
                padding: 10px 18px;
                border-radius: 6px;
                transition: .3s;
            }

            nav ul li a:hover {
                background: #4CAF50;
            }

            /* Form Container */

            .container {
                width: 500px;
                margin: 30px auto;
                background: white;
                padding: 30px;
                border-radius: 12px;
                box-shadow: 0 10px 25px rgba(0, 0, 0, .2);
            }

            h2 {
                text-align: center;
                color: #1e293b;
                margin-bottom: 20px;
            }

            .success {
                color: green;
                text-align: center;
                margin-bottom: 20px;
                font-size: 20px;
                font-weight: bold;
            }

            label {
                display: block;
                font-size: 18px;
                font-weight: bold;
                margin-bottom: 6px;
                color: #333;
            }

            input[type=text],
            input[type=email],
            select,
            textarea {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 6px;
                margin-bottom: 15px;
                font-size: 16px;
            }

            textarea {
                height: 80px;
                resize: none;
            }

            .radio-group,
            .checkbox-group {
                margin-bottom: 18px;
            }

            button {
                width: 100%;
                padding: 12px;
                background: #4CAF50;
                color: white;
                border: none;
                border-radius: 6px;
                font-size: 18px;
                cursor: pointer;
                transition: .3s;
            }

            button:hover {
                background: #2e7d32;
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