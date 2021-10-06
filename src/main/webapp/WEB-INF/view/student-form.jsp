<%--
  Created by IntelliJ IDEA.
  User: ray
  Date: 10/6/21
  Time: 8:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Student Registration Form</title>
</head>
<body>
    <form:form action="processForm" modelAttribute="student">
        First name: <form:input path="firstName" />
        <br><br>
        Last name: <form:input path="lastName" />
        <br><br>
        Country:
        <form:select path="country" >
            <form:options items="${student.countryOptions}"/>
        </form:select>
        <br><br>
        Favorite Sport:
        Soccer <form:radiobutton path="favoriteSport" value="Soccer" />
        E-Sport <form:radiobutton path="favoriteSport" value="E-Sport" />
        Tennis <form:radiobutton path="favoriteSport" value="Tennis" />
        Boxing <form:radiobutton path="favoriteSport" value="Boxing" />
        <br><br>
        Programming Language:
        Java <form:checkbox path="programmingLanguage" value="Java" />
        PHP <form:checkbox path="programmingLanguage" value="PHP" />
        C# <form:checkbox path="programmingLanguage" value="C#" />
        Javascript <form:checkbox path="programmingLanguage" value="Javascript" />
        <br><br>

        <input type="submit" value="Submit"/>
    </form:form>
</body>
</html>
