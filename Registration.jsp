<%-- 
    Document   : Registration
    Created on : 30 Sep, 2021, 3:56:14 PM
    Author     : yasee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Register page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <script type = "text/javascript" src = "https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <script>



            //            jQuery.validator.addMethod( name, method [, message ] )
//            
// value---> "current value of the validated element".
//elememt---> " element to be validated ".

            jQuery.validator.addMethod("checkemail", function(value, element) {
                return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
            });
            jQuery(document).ready(function($) {
                $("#signup").validate({
                    //ignore: [],
                    rules: {
                        name: {
                            required: true
                        },
                        email: {
                            required: true,
                            checkemail: true
                        },
                        phone: {
                            required: true,
                            minlength: 10,
                            maxlength: 10
                        },
                        pw: {
                            required: true,
                            minlength: 6
                        },
                        cp: {
                            required: true,
                            minlength: 6,
                            equalTo: "#pw"
                        }
                    },
                    messages: {
                        name: {
                            required: "Please enter the name."
                        },
                        email: {
                            required: "Please enter the email.",
                            email: "Please enter valid email id"
                        },
                        phone: {
                            required: "Please enter the number.",
                            minlength: "Please enter the  10 digit number .",
                            maxlength: "more than 10 digits."
                        },
                        pw: {
                            required: "Please enter the password.",
                            minlength: "Please enter the password greater than or equal to  6.",
                        },
                        cp: {
                            required: "Please reenter the password.",
                            minlength: "Please enter the password greater than or equal to 6.",
                            equalTo: "mismatch password"
                        }
                    }
                });
            });
        </script>
        <style>
            .error{   
                color:red;
            }
            input{
                display: block;
            }
            
            #msg
            {
                background: red;
                color:black;
                border: 1px solid red;
                width:24%;
                font-weight: bold;
                font-size: 25px;
                padding: 5px;
            }
            body
            {   
            background-image: url("images/registration.jpeg");
            background-color: #cccccc;
            background-size: cover;
            }
            form
            {
            border-style: solid;
            border-width: 2px;
            background-color: rgba(0,0,0,0.3);
            border-radius: 15px;
            padding: 50px;
            width: 450px;
            margin: auto;
            }
        </style>
    <center>

        <br><br>
        

        <% if (request.getAttribute("status") != null) {%>
        <div id="msg">  <%= request.getAttribute("status")%></div>
        <%}%>


        <form method="POST" id ="signup" action="register">   
            <font color="white" size="4"> 
            
            <h2> Register</h2>
            </font>
            <table>
                <tr>
                    <td> NAME  </td>
                    <td> <input type="text" id="name" name="name"</td>
                </tr>   
                <tr>
                    <td> PHONE NUMBER   </td>
                    <td> <input type="number" name="phone" > </td>
                </tr>
                <tr>
                    <td> EMAIL  </td>
                    <td>   <input type="email" name="email"></td>
                </tr>
                <tr>
                    <td> PASSWORD  </td>
                    <td>   <input type="password" id="pw" name="pw"></td>
                </tr>
                <tr>
                    <td> CONFIRM PASSWORD  </td>
                    <td>   <input type="password" name="cp"></td> 
                </tr>
                <tr>
                    <td> </br> <input type="submit" name="register" value="Register"</td>
                </tr>
            </table>
        </form>
    </center>
      <%@include file="footer.jsp"%>
</body>
</html>


