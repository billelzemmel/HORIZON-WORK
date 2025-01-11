<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- Initialization of variables --%>
<c:set var="username" value="${param.username}" />
<c:set var="password" value="${param.password}" />
<c:set var="usernameError" value="" />
<c:set var="passwordError" value="" />
<c:set var="hasErrors" value="false" />

<%-- Validation logic --%>
<c:if test="${empty username or username.length() < 5}">
    <c:set var="usernameError" value="Username must be at least 5 characters." />
    <c:set var="hasErrors" value="true" />
</c:if>
<c:if test="${empty password or password.length() < 8}">
    <c:set var="passwordError" value="Password must be at least 8 characters." />
    <c:set var="hasErrors" value="true" />
</c:if>

<%-- If there are errors, redirect back to the registration form --%>
<c:if test="${hasErrors}">
    <jsp:forward page="register.jsp">
        <jsp:param name="username" value="${username}" />
        <jsp:param name="usernameError" value="${usernameError}" />
        <jsp:param name="passwordError" value="${passwordError}" />
    </jsp:forward>
</c:if>

<%-- If no errors, display a success message --%>
<c:if test="${not hasErrors}">
    <h2>Registration Successful!</h2>
    <p>Welcome, ${username}!</p>
</c:if>
