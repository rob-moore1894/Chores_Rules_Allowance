<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Child" />
    </jsp:include>
</head>
  <body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <a name="laurelynnCard">
        <div class="container">
            <div class="card-header">Laurelynn</div>
            <div class="card-deck">
                <div class="card-body">
                    <div class="card-header2">Sunday</div>
                    <div class="card-body choice"><label for="lsChore1"><input type="checkbox" class="chore1" id="lsChore1"></label> Bed Made</div>
                    <div class="card-body choice"><label for="lsChore2"><input type="checkbox" name="chore2" id="lsChore2"></label> Room Clean</div>
                    <div class="card-body choice"><label for="lsChore3"><input type="checkbox" name="chore3" id="lsChore3"></label> Cat fed and watered</div>
                    <div class="card-footer"><label for="ls"><input type="radio" class="parentVerified" id="ls" name="parentVerifiedls"></label> Adult Confirmed</div>
                </div>
                <div class="card-body">
                    <div class="card-header2">Monday</div>
                    <div class="card-body choice"><label for="lmChore1"><input type="checkbox" class="chore1" id="lmChore1"></label> Bed Made</div>
                    <div class="card-body choice"><label for="lmChore2"><input type="checkbox" name="chore2" id="lmChore2"></label> Room Clean</div>
                    <div class="card-body choice"><label for="lmChore3"><input type="checkbox" name="chore3" id="lmChore3"></label> Cat fed and watered</div>
                    <div class="card-body choice"><label for="lmChore4"><input type="checkbox" name="chore3" id="lmChore4"></label> Kitchen Clean</div>
                    <div class="card-footer"><label for="lm"><input type="radio" class="parentVerified" id="lm" name="parentVerifiedlm"></label> Adult Confirmed</div>
                </div>
                <div class="card-body">
                    <div class="card-header2">Tuesday</div>
                    <div class="card-body choice"><label for="ltChore1"><input type="checkbox" class="chore1" id="ltChore1"></label> Bed Made</div>
                    <div class="card-body choice"><label for="ltChore2"><input type="checkbox" name="chore2" id="ltChore2"></label> Room Clean</div>
                    <div class="card-body choice"><label for="ltChore3"><input type="checkbox" name="chore3" id="ltChore3"></label> Cat fed and watered</div>
                    <div class="card-body choice"><label for="ltChore4"><input type="checkbox" name="chore3" id="ltChore4"></label> Dishes</div>
                    <div class="card-footer"><label for="lt"><input type="radio" class="parentVerified" id="lt" name="parentVerifiedlt"></label> Adult Confirmed</div>
                </div>
                <div class="card-body">
                    <div class="card-header2">Wednesday</div>
                    <div class="card-body choice"><label for="lwChore1"><input type="checkbox" class="chore1" id="lwChore1"></label> Bed Made</div>
                    <div class="card-body choice"><label for="lwChore2"><input type="checkbox" name="chore2" id="lwChore2"></label> Room Clean</div>
                    <div class="card-body choice"><label for="lwChore3"><input type="checkbox" name="chore3" id="lwChore3"></label> Cat fed and watered</div>
                    <div class="card-body choice"><label for="lwChore4"><input type="checkbox" name="chore4" id="lwChore4"></label> Living Room Clean</div>
                    <div class="card-footer"><label for="lw"><input type="radio" class="parentVerified" id="lw" name="parentVerifiedlw"></label> Adult Confirmed</div>
                </div>
                    <div class="card-body">
                    <div class="card-header2">Thursday</div>
                    <div class="card-body choice"><label for="lrChore1"><input type="checkbox" class="chore1" id="lrChore1"></label> Bed Made</div>
                    <div class="card-body choice"><label for="lrChore2"><input type="checkbox" name="chore2" id="lrChore2"></label> Room Clean</div>
                    <div class="card-body choice"><label for="lrChore3"><input type="checkbox" name="chore3" id="lrChore3"></label> Cat fed and watered</div>
                    <div class="card-body choice"><label for="lrChore4"><input type="checkbox" name="chore4" id="lrChore4"></label> Clean Litter Box</div>
                    <div class="card-footer"><label for="lr"><input type="radio" class="parentVerified" id="lr" name="parentVerifiedlr"></label> Adult Confirmed</div>
                </div>
                <div class="card-body">
                    <div class="card-header2">Friday</div>
                    <div class="card-body choice"><label for="lfChore1"><input type="checkbox" class="chore1" id="lfChore1"></label> Bed Made</div>
                    <div class="card-body choice"><label for="lfChore2"><input type="checkbox" name="chore2" id="lfChore2"></label> Room Clean</div>
                    <div class="card-body choice"><label for="lfChore3"><input type="checkbox" name="chore3" id="lfChore3"></label> Cat fed and watered</div>
                    <div class="card-footer"><label for="lf"><input type="radio" class="parentVerified" id="lf" name="parentVerifiedlf"></label> Adult Confirmed</div>
                </div>
                <div class="card-body">
                    <div class="card-header2">Saturday</div>
                    <div class="card-body choice"><label for="laChore1"><input type="checkbox" class="chore1" id="laChore1"></label> Bed Made</div>
                    <div class="card-body choice"><label for="laChore2"><input type="checkbox" name="chore2" id="laChore2"></label> Room Clean</div>
                    <div class="card-body choice"><label for="laChore3"><input type="checkbox" name="chore3" id="laChore3"></label> Cat fed and watered</div>
                    <div class="card-body choice"><label for="laChore4"><input type="checkbox" name="chore4" id="laChore4"></label> Laundry</div>
                    <div class="card-footer"><label for="la"><input type="radio" class="parentVerified" id="la" name="parentVerifiedla"></label> Adult Confirmed</div>
                </div>
            </div>
            <div class="card-footer"><button class="calculate">Calculate</button></div>
        </div>
    </a>

  </body>
</html>
