<%-- 
    Document   : index
    Created on : 30 Sep, 2021, 3:55:15 PM
    Author     : yasee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">

        <title>Home Page</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link rel="stylesheet" href=https://txt.1001fonts.net/img/txt/b3RmLjcyLjAwMDAw…lQUkNCUlZVVlRWQSwsLjA,/croissant-one.regular.webphttps://txt.1001fonts.net/img/txt/b3RmLjcyLjAwMDAw…lQUkNCUlZVVlRWQSwsLjA,/croissant-one.regular.webp>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>

    <style> 
        h1{
            font-family: 'Satisfy', cursive;
            font-family: 'Scheherazade New', serif;
            text-align: center;
            text-shadow: 2px 1px 2px black;
        }
        .errmsg{
            background: lightgreen;
            padding: 10px;
            width: 50%;
            color: white;
            font-weight: bold;
        }
            body{   
                background-color:white;
            }

        </style>
        <body>
            <%@include file="header.jsp"%>
        <center>
            <% if (request.getAttribute("status") != null) {%>
            <h1 class="errmsg"> <%= request.getAttribute("status")%></h1>
            <%}%>
            <br>
            <div>
                <h1>FOOD QUEST</h1>
                <!--                <img alt="Croissant One Regular" loading="lazy" src="//txt.1001fonts.net/img/txt/b3RmLjcyLjAwMDAwMC5SazlQUkNCUlZVVlRWQSwsLjA,/croissant-one.regular.png" style="width: auto;">-->
            </div>
            <% if (session.getAttribute("uname") != null) {%>
            <h1>  Welcome <%= session.getAttribute("uname")%></h1>
            <%}%>
            <br>
            <%@include file="demo_3.jsp"%>
            <%@include file="about.jsp"%>
            <%@include file="Restaurants.jsp"%>
            <%@include file="developers.jsp"%>
        </center>
        <%@include file="footer 1.jsp"%>
    </body>
</html>

