<%--
  Created by IntelliJ IDEA.
  User: ray
  Date: 10/6/21
  Time: 8:55 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Customer registration form</title>
    <style>
        .error {color: red}
    </style>
</head>
<body>
    <form:form action="processForm" modelAttribute="customer">
        First name: <form:input path="firstName" />
        <br><br>
        Last name (*): <form:input path="lastName" />
        <form:errors path="lastName" cssClass="error" />
        <br><br>
        Age: <form:input path="age" />
        <form:errors path="age" cssClass="error"/>
        <br><br>
        PostalCode: <form:input path="postalCode" />
        <form:errors path="postalCode" cssClass="error"/>
        <br><br>
        Course Code: <form:input path="courseCode"/>
        <form:errors path="courseCode" cssClass="error"/>
        <br><br>
        <input type="submit" value="Submit" />
    </form:form>
</body>
</html>
