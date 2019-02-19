<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Allowance Calculator" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<%--<div class="container">--%>

<h1>Allowance Calculator</h1>
<div class="header">
    In order for you to receive your allowance, you must follow all of the rules and complete all of your chores.
    <span>Your allowance is $10 per week to be used during a trip to the Dollar Tree.</span>
</div>

<hr>

<c:forEach var="rule" items="${rules}">
    <c:out value="${rule.rule}"/>
</c:forEach>
<%--<section class="rules card" >--%>
<%--<div class="rulesTitle card-header">Rules</div>--%>
<%--<div class="listOfRules card-body">--%>
<%----%>
<%--</div>--%>
<%--<div id="addRule" class="card-footer">--%>
<%--<input id="rule" type="text" placeholder="Add a rule">--%>
<%--<button id="addRuleBtn" name="addRule">Add Rule</button>--%>
<%--</div>--%>

<%--<hr>--%>
<%--</section>--%>
<%--</div>--%>

<jsp:include page="/WEB-INF/partials/script.jsp" />

</body>
</html>