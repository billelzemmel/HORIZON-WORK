<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Registration</title>
</head>
<body>
<h2>User Registration Form</h2>
<form action="registerProcess.jsp" method="post">
    <label for="username">Username:</label>
    <input type="text" id="username" name="username" value="${param.username}">
    <c:if test="${not empty param.usernameError}">
        <span style="color: red;">${param.usernameError}</span>
    </c:if>
    <br>

    <label for="password">Password:</label>
    <input type="password" id="password" name="password">
    <c:if test="${not empty param.passwordError}">
        <span style="color: red;">${param.passwordError}</span>
    </c:if>
    <br>

    <input type="submit" value="Register">
</form>
</body>
</html>
