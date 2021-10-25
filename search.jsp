<%-- 
    Document   : search
    Created on : 30 Sep, 2021, 3:58:32 PM
    Author     : yasee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >

    </head>
    <body>
        <%@include file="header.jsp"%>
        <style>
            .jumbotron{
                background-color: white;
            }

            body{
                background-image: url("images/back.jpg");
                background-color: #cccccc;
                background-size: cover;
            }
            .container{
                position: relative;
                top: 130px; 
            }

            form{
                border-style: solid;
                border-width: 2px;
                background-color: rgba(0,0,0,0.3) ;
                border-radius: 15px;
                padding: 50px;
                width: 450px;
                margin: auto;
            }
            .footer {
                /*    position: fixed;*/
                /*  height: 10%;*/
                margin-top: 100px;               /*According to ur project do the style for   footer*/
                /*    bottom: 0;*/
                width: 100%;
                padding: 0px !important;
            }
        </style>
    <center>
        <div class="container">
            
            <form action="register" method="POST">
                <div class="form-group ">
                    <font color="white" size="4">
                    <label >Search for food</label><br>
                    <input type="text" name="foodname" class="form-control" ><br>
                </div>
                <button type="submit" class="btn btn-primary" name="submit1">Search</button>
            </form>

        </div>
    </center>
    <%@include file="footer.jsp"%>
</body>

</html>

