<%--
  Created by IntelliJ IDEA.
  User: Hp
  Date: 2/24/2022
  Time: 6:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div align="center" class="form-group">
    <h1>Employee Register Form</h1>
    <form action="<%=request.getContextPath() %>/register" method="POST">
        <table style="width: 20%">
            <tr>
                <td>First Name</td>
                <td><input type="text" class="form-control" name="firstName"></td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><input type="text" class="form-control" name="lastName"></td>
            </tr>
            <tr>
                <td>Username</td>
                <td><input type="text" class="form-control" name="username"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" class="form-control" name="password"></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" class="form-control" name="address"></td>
            </tr>
            <tr>
                <td>Contact No</td>
                <td><input type="text" class="form-control" name="contact"></td>
            </tr>
        </table>
        <input type="submit" class="btn btn-primary" value="submit">
    </form>
</div>
</body>
</html>
