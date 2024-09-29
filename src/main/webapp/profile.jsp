<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="Modul.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="profile.css">

    <!-- FontAwesome 5 -->
</head>
<body>
    <!-- Navbar top -->
    <div class="navbar-top">
        <div class="title">
            <h1>Profile</h1>
        </div>

        <!-- Navbar -->
        <ul>
            <li>
                <a href="update.html">
                    <span class="icon-count">update</span>
                    <i class="fa fa-envelope fa-2x"></i>
                </a>
            </li>
            <li>
                <a href="delete.html">
                    <span class="icon-count">delete</span>
                    <i class="fa fa-bell fa-2x"></i>
                </a>
            </li>
            <li>
                <a href="logout">logout
                    <i class="fa fa-sign-out-alt fa-2x"></i>
                </a>
            </li>
        </ul>
        <!-- End -->
    </div>
    <!-- End -->

    <!-- Sidenav -->
    <div class="sidenav">
        <div class="profile">
            <img src="data:image/jpeg;base64,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" alt="" width="100" height="100">

            <div class="name">
                hello, i am Bhushan
            </div>
            <div class="job">
               JAVA Developer
            </div>
        </div>

        <div class="sidenav-url">
            <!-- <div class="url">
                <a href="logout" class="active">logout</a>
                <hr align="center">
            </div> -->
            
        </div>
    </div>
    <!-- End -->

    <!-- Main -->
    <div class="main">
        <h2>IDENTITY</h2>
        <div class="card">
            <div class="card-body">
                <i class="fa fa-pen fa-xs edit"></i>
                <%
	User user = (User) session.getAttribute("student_info");
	%>
                <table>
                    <tbody>
                    <tr>
                            <td>ID</td>
                            <td>:</td>
                            <td><%=user.getId()%></td>
                        </tr>
                        <tr>
                            <td>Name</td>
                            <td>:</td>
                            <td><%=user.getName()%></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td>:</td>
                            <td><%=user.getEmail()%></td>
                        </tr>
                        <tr>
                            <td>gender</td>
                            <td>:</td>
                            <td><%=user.getGender()%></td>
                        </tr>
                        <tr>
                            <td>city</td>
                            <td>:</td>
                            <td><%=user.getCity()%></td>
                        </tr>
                        <tr>
                            <td>Login Time</td>
                            <td>:</td>
                            <td><%=user.getTime()%></td>
                        </tr>
                       
                    </tbody>
                </table>
            </div>
        </div>

       
     </div>
    
    <a href="logout" style="color:blue;border: 2px solid black;">logout</a>
    <!-- End -->
</body>

<%-- 
	<%
	User user = (User) session.getAttribute("student_info");
	%>

	<h1 style="text-align: center; color:green">welcome, <%=user.getName()%></h1>

	<h3>
		student name  :-
		<h3 style="color:red"><%=user.getName()%></h3></h3>
	<h3>
		student email id  :-
		<h3 style="color:red"><%=user.getEmail()%></h3></h3>
	<h3>
		student gender  :-
		<h3 style="color:red"><%=user.getGender()%> </h3></h3>
	<h3>
		student city  :-
		<h3 style="color:red"><%=user.getCity()%></h3></h3>
		
		<a href="logout" style="color:blue;border: 2px solid black;">logout</a>
 --%>

</html>