<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: splas
  Date: 30.05.2022
  Time: 12:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>

<h3>Information for all employees</h3>
<br><br>

<security:authorize access="hasRole('HR')">
<input type="button" value="Salary"
onclick="window.location.href = 'hr_info'">
Only for HR staff
</security:authorize>
<br><br>
<security:authorize access="hasRole('MANAGER')">
<input type="button" value="Performance"
       onclick="window.location.href = 'manager_info'">
Only for manager staff
</security:authorize>
<body>

</body>
</html>
