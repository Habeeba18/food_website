<%-- 
    Document   : SA 2
    Created on : 17 Oct, 2021, 9:20:31 PM
    Author     : yasee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <script>
        document.getElementById('b3').onclick = function () {
            swal("Good job!", "You clicked the button!", "success");
        };
    </script>
    <style>
        .example button {
           
            background-color: #4E3E55;
            color: white;
            border: none;
            box-shadow: none;
            font-size: 17px;
            font-weight: 500;
            font-weight: 600;
            border-radius: 3px;
            padding: 15px 35px;
            margin: 50px 50px;
            cursor: pointer; 
        }
        .example button:focus{
            outline: none; 
        }
        .example button:hover{
            background-color: #33DE23; 
        }
        .example button:active{
            background-color: #81ccee; 
        }
    </style>
    <body>
        <div class="example">
            <button id="b3">A success message!</button>
        </div>
    </body>
</html>
