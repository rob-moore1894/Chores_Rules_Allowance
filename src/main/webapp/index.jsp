<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <jsp:include page="WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Allowance Calculator" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />

    <div class="container">
        <h1>Welcome to the Allowance Calculator</h1>
        <form action="/home">
            <input type="submit" name="begin" value="Click Here to Begin">
        </form>
    </div>

    <jsp:include page="WEB-INF/partials/script.jsp" />

</body>
</html>
