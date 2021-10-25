<%-- 
    Document   : sweetalert
    Created on : 2 Oct, 2021, 7:05:14 PM
    Author     : yasee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet type="text/css" href= "css/style.css">;;;
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>
    </head>
    <body>
        <section>
            
            <button id="submit" class="btn btn-primary" name="login">Submit</button>11
        </section>

        <script type=""text/javascript" >
                $("#submit").click(function(){
                swal("yayy!", "You have loggined!", "success");
                });11
    </script>
    <style>
        body{
            background:#000;
            color:#fff;
            font-family:lato;
            padding:100px;
            text-align:center;
        }
        button{
            background: cornflowerblue;
            padding:10px 30px;
            margin:10px 10px;
            font-size:20px;
            cursor:pointer;
        }
    </style>

</body>
</html>
