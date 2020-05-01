<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>

<html>
<head>
    <title>Library page</title>

    <style type="text/css">
        .tg {
            text-align: center;
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            text-align: center;
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            text-align: center;
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }
    </style>

</head>
<body>
<a href="../../index.jsp">Back to main page</a>

<br/>
<br/>
<h1 style="text-align: center">Games Library</h1>
<form align="center">
    <input style="text-align: center" type="search" name="search" placeholder="Search"/>
    <input style="text-align: center" type="submit" value="Search">
</form>
<br/>
<br/>

<c:if test="${!empty listGames}">
    <table align="center" class="tg">
        <tr>
            <th style="width: 50px">ID</th>
            <th style="width: 120px">Title</th>
            <th style="width: 120px">Genre</th>
            <th style="width: 120px">Developer</th>
            <th style="width: 80px">Price</th>
            <th style="width: 80px">Edit</th>
            <th style="width: 80px">Delete</th>
        </tr>
        <c:forEach items="${listGames}" var="game">
            <tr>
                <td>${game.id}</td>
                <td><a href="/gamedata/${game.id}" target="_blank">${game.title}</a></td>
                <td>${game.genre}</td>
                <td>${game.developer}</td>
                <td>${game.price}</td>
                <td><a href="<c:url value='/edit/${game.id}'/>">Edit</a> </td>
                <td><a href="<c:url value='/remove/${game.id}'/>">Delete</a> </td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<br>
<h1 style="text-align: center">Add a Game</h1>

<c:url var="addAction" value="/games/add"/>

<form:form action="${addAction}" commandName="game">
    <table align="center">
        <c:if test="${!empty game.title}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true" size="8" disabled="true"/>
                    <form:hidden path="id"/>
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="title">
                    <spring:message text="Title"/>
                </form:label>
            </td>
            <td>
                <form:input path="title"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="genre">
                    <spring:message text="Genre"/>
                </form:label>
            </td>
            <td>
                <form:input path="genre"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="developer">
                    <spring:message text="Developer"/>
                </form:label>
            </td>
            <td>
                <form:input path="developer"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="price">
                    <spring:message text="Price"/>
                </form:label>
            </td>
            <td>
                <form:input path="price"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty game.title}">
                    <input align="center" type="submit"
                           value="<spring:message text="Edit Game"/>"/>
                </c:if>
                <c:if test="${empty game.title}">
                    <input align="center" type="submit" value="<spring:message text="Add Game"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>

</body>
</html>
