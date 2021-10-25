<%-- 
    Document   : login 1
    Created on : 15 Oct, 2021, 7:34:15 PM
    Author     : yasee
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login</title>
        <link rel = "stylesheet" href = "style.css">
        <style>
            body{
                background-image: linear-gradient(180deg, #2af598 0%, #009efd 100%);
            }
            .container{
                width: 300px;
                height:450px;
                margin:7% auto;
                border-radius:25px;
                background-color: rgba(0,0,0,0.1);
                box-shadow: 0 0 17px #fff;
                /*                box-shadow: 2px 2px 5px #fff;*/
            }
            .header{
                text-align:center;
                padding-top:75px;
            }
            .header h1{
                color: #fff;
                font-size:45px;
                margin-bottom: 80px;
            }
            .main{
                text-align: center;
            }
            .main input,button{
                width: 200px;
                height: 45px;
                border-radius: 25px;
                background-color: rgba(0,0,0,0.1);
                border:none;
                /*                outline:none;*/
                box-shadow: 2px 2px 5px #fff;
                padding-left: 38px;
                box-sizing: border-box;
                font-size:15px;
                margin-bottom:20px;
            }
            .main button{
                padding-left: 0;
                border-radius:25px;
                background-color:rgba(0,0,0,0.1);
                letter-spacing:1px;
                font-weight: bold;
                margin-bottom: 70px;  
                box-shadow: 2px 2px 5px #fff;
            }
            main button:hover{
                box-shadow: 2px 2px 5px #fff;
                border-radius: 25px;
                background-color:rgba(0,0,0,0.1);
            }
            .main span{
                position:relative;
            }
            .main i{
                position: absolute;
                left: 15px;
                color: #fff;
                font-size:16px;
                top:2px;
            }
            .col{
                color:#fff;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="header">
                <h1>login</h1>
            </div>
            <div class="main">
                <form>
                    <span>
                        <input type="text" placeholder="Username" name="">
                    </span><br>
                    <span>
                        <input type="password" placeholder="Password" name="">
                    </span><br>
                    <button class="col">
                        login
                    </button>
                </form>
            </div>
        </div>
    </body>
</html>