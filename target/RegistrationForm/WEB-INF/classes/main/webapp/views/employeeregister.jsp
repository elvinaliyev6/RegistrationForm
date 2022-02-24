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
</head>
<body>
<div align="center">
    <h1>Employee Register Form</h1>
    <form action="<%=request.getContextPath() %>/register" method="POST">
        <table style="width: 80%">
            <tr>
                <td>First Name</td>
                <td><input type="text" name="firstName"></td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><input type="text" name="lastName"></td>
            </tr>
            <tr>
                <td>Username</td>
                <td><input type="text" name="username"></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="address"></td>
            </tr>
            <tr>
                <td>Contact No</td>
                <td><input type="text" name="contact"></td>
            </tr>
        </table>
        <input type="submit" value="submit">
    </form>
</div>
</body>
</html>
