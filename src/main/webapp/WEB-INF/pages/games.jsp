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
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
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

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>

</head>
<body>
<a href="../../index.jsp">Back to main page</a>

<br/>
<br/>

<h1>Games Library</h1>

<c:if test="${!empty listGames}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">Title</th>
            <th width="120">Genre</th>
            <th width="120">Developer</th>
            <th width="120">Price</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listGames}" var="game">
            <tr>
                <td>${game.id}</td>
                <td>${game.title}</td>
                <td>${game.genre}</td>
                <td>${game.developer}</td>
                <td>${game.price/100}.${game.price%100}</td>
                <td><a href="<c:url value='/edit/${game.id}'/>">Edit</a> </td>
                <td><a href="<c:url value='/remove/${game.id}'/>">Delete</a> </td>
            </tr>
        </c:forEach>
    </table>
</c:if>

<h1>Add a Game</h1>

<c:url var="addAction" value="/games/add"/>

<form:form action="${addAction}" commandName="game">
    <table>
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
                    <input type="submit"
                           value="<spring:message text="Edit Game"/>"/>
                </c:if>
                <c:if test="${empty game.title}">
                    <input type="submit"
                           value="<spring:message text="Add Game"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>

</body>
</html>
