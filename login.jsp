<%-- 
    Document   : login
    Created on : 30 Sep, 2021, 3:58:19 PM
    Author     : yasee
--%>

<html>
    <head>
        <title>Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <script type = "text/javascript" src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
    </head>
    <body >
        <%@include file="header.jsp"%>
        <script>
            jQuery.validator.addMethod("checkemail", function (value, element) {
                return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
            }, "Please enter the email format as abc@gmail.com");


            jQuery(document).ready(function ($) {
                $("#login").validate({
                    rules: {
                        email: {
                            required: true,
                            checkemail: true
                        },
                        pw: {
                            required: true,
                            minlength: 6
                        },
                    },
                    messages: {
                        email: {
                            required: "Please enter the email.",
                        },
                        pw: {
                            required: "Please enter the password.",
                            minlength: "Please enter the password greater than or equal to 6.",
                        },
                    }
                });

            });
        </script>
        <style>

            .error{
                color:red;
            }
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            body{
                background-color: #FDC830;
                background-size: cover;
            }
            .button{
                padding: 5px;
                width: 6%;
                background: cornflowerblue;
                color:black;

            }
            /*.button{
                background: cornflowerblue;
                padding:20px 50px;
                margin:10px;
                font-size:20px;
                cursor:pointer;
            }*/

            #msg
            {
                background: red;
                color:black;
                border: 1px solid red;
                width:70%;
                font-weight: bold;
                font-size: 25px;
                padding: 5px;
                margin:50px 100px;

            }
            #Container
            {
                width: 100%;
                height: 100%;
                position: relative;
                overflow: hidden;
                z-index: 999;
            }

            #Container video {
                position: absolute;
                left: 50%;
                top: 50%;
                /* The following will size the video to fit the full container. Not necessary, just nice.*/
                min-width: 100%;
                min-height: 100%;
                -webkit-transform: translate(-50%,-50%);
                -moz-transform: translate(-50%,-50%);
                -ms-transform: translate(-50%,-50%);
                transform: translate(-50%,-50%);
                z-index: -100;
            }
            form
            {
                background-size: 100% 200%;
                border-style: solid;
                border-width: 2px;
                background-color: rgba(0,0,0,0.3) ;
                border-radius: 15px;
                position:relative;
                text-align: center;
                padding: 60px;
                width: 450px;
                margin: 60px 50px;
                position: relative;
                top: 10px;   
            }
        </style>

    <center>
        <div id="Container">
            <video src="images/pine.mp4" class="video" autoplay muted loop ></video>
            
            <% if (request.getAttribute("status") != null) {%>
            <div id="msg">  <%= request.getAttribute("status")%></div>
            <%}%>
            <form method="POST" id="login" action="register">
                <font color="black" size="4">
                <h2> Login  </h2>
                </font>
                <br>
                <div class="container ">
                    <div class="form-group ">
                        <label >Email address</label>
                        <input type="email" class="form-control" placeholder="Enter email"  name="email">
                    </div>
                    <div class="form-group ">
                        <label >Password</label>
                        <input type="password" class="form-control"  placeholder="Enter Password" name="pw">
                    </div>
                    <button type="submit" class="btn btn-primary" name="login">Submit</button>
                    <div style="text-align: center; margin-top: 15px;">
                        <a href="forgotpass.jsp">Forgot password?</a>
                    </div>
                </div> 
            </form>
        </div>
    </center>

    <%@include file="footer.jsp"%>
</body>
</html>
