<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Game Details</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
            text-align: center;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            text-align: center;
            padding: 10px 5px;
            border-style: solid;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            text-align: center;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }
    </style>

</head>
<body>

<br>
<h1 style="text-align: center">Game Details</h1>
<br>

    <table align="center" class="tg">
        <tr>
            <th style="width: 50px">ID</th>
            <th style="width: 120px">Title</th>
            <th style="width: 120px">Genre</th>
            <th style="width: 120px">Developer</th>
            <th style="width: 80px">Price</th>
        </tr>
        <tr>
            <td>${game.id}</td>
            <td>${game.title}</td>
            <td>${game.genre}</td>
            <td>${game.developer}</td>
            <td>${game.price}</td>
        </tr>
    </table>

</body>
</html>
