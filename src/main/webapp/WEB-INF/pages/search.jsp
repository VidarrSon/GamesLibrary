<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>

<html>
<head>
    <title>Games Page</title>

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
    </style>
</head>
<body>

<a href="../../index.jsp">Back to main page</a>

<br/>
<br/>
<h1 style="text-align: center">Games Library</h1>
<input style="text-align: center" type="search" name="search" placeholder="Search"/>
<input style="text-align: center" type="submit" value="Search">
<br/>
<br/>

<c:if test="${!empty search}">
    <table class="tg">
        <tr>
            <th style="width: 50px">ID</th>
            <th style="width: 120px">Title</th>
            <th style="width: 120px">Genre</th>
            <th style="width: 120px">Developer</th>
            <th style="width: 80px">Price</th>
            <th style="width: 80px">Edit</th>
            <th style="width: 80px">Delete</th>
        </tr>
        <c:forEach items="${search}" var="game">
            <tr>
                <td>${game.id}</td>
                <td><a href="<c:url value='/gamedata/${game.id}' />" target="_blank">${game.title}</a></td>
                <td>${game.genre}</td>
                <td>${game.developer}</td>
                <td>${game.price}</td>
                <td><a href="<c:url value='/edit/${game.id}'/>">Edit</a> </td>
                <td><a href="<c:url value='/remove/${game.id}'/>">Delete</a> </td>
            </tr>
        </c:forEach>
    </table>
</c:if>

</body>
</html>
