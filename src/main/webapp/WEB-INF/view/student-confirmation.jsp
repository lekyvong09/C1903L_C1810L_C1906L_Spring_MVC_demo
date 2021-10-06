<%--
  Created by IntelliJ IDEA.
  User: ray
  Date: 10/6/21
  Time: 8:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Confirm student information</title>
</head>
<body>
    The student is confirmed: ${student.firstName} ${student.lastName}
    <br><br>
    Country: ${student.country}
    <br><br>
    Favorite Sport: ${student.favoriteSport}
    <br><br>
    Programming Language:
    <ul>
        <c:forEach items="${student.programmingLanguage}" var="temp">
            <li>${temp}</li>
        </c:forEach>
    </ul>

</body>
</html>
