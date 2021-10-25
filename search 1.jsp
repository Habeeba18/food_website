<%-- 
    Document   : search 1
    Created on : 7 Oct, 2021, 7:54:54 PM
    Author     : yasee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP page</title>
        <link rel="stylesheet" href="style.css" />
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    </head>

    <body>

        <style>
            body{
                background-image: url("images/back.jpg");
                height: 100vh;
                display: flex;

            }

            .container {
                margin: 200px auto;
                background: #fff;
                height: 30px;
                border-radius: 30px;
                padding: 10px 20px;
                display: flex;
                align-items: center;
                cursor: pointer;
                transition:0.8s;
                box-shadow: 0 0 25px 0 rgba(0, 0, 0, 0.4);
            }
            .container:hover .form-control {
                width: 400px;

            }
            .container .form-control {
                float:left;
                border: none;
                outline: none;
                width: 0px;
                font-weight: 500;
                font-size: 16px;
                transition: 0.7s;
            }

            .container .btn .fas {
                color: #aa00ff;

            }


        </style>
        <div class="container">
            <form action="register" method="POST">
                <input type="text" name="foodname" placeholder="Search..." class="form-control" />
                <a href="#" class="btn">
                    <i class="fas fa-search"></i>
                </a>
                <button type="submit" class="btn btn-primary" name="submit1">Search</button>
            </form>
        </div>
    </body>
</html>