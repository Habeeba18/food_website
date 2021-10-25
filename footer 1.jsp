<%-- 
    Document   : footer 1
    Created on : 1 Oct, 2021, 1:57:41 PM
    Author     : yasee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="UTF-8">

        <link rel="stylesheet" href="style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css"/>
    </head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins',sans-serif;
            text-decoration: none;

        }
        footer{
            width: 100%;

            bottom: 0;
            left: 0;
            background: #111; /*background colour*/
            margin-top: auto;
        }
        footer .content{
            max-width: 1350px;
            margin: auto;
            padding: 20px;
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        footer .content p,a{
            color: #fff;
        }
        footer .content .box{
            width: 33%;
            transition: all 0.4s ease;
        }
        footer .content .topic{
            font-size: 22px;
            font-weight: 600;
            color: #fff;
            margin-bottom: 16px;

        }
        footer .content p{
            text-align: justify;
        }
        footer .content .lower .topic{
            margin: 24px 0 5px 0;
        }
        footer .content .lower i{
            padding-right: 16px;
        }
        footer .content .middle{
            padding-left: 80px;
        }
        footer .content .middle a{
            line-height: 32px;
        }


        .content1 {
            display: block;
            padding: 10px;
            margin: 0px auto;
            text-align: center;
            font: 25px Georgia, "Times New Roman", Times, serif;
            font-size: 14px;
            width:250px;
        }
        .content1 img {
            height:80px;
            width: 150px;
            float:left;
        }
        footer .content .media-icons a{
            font-size: 16px;
            height: 45px;
            width: 45px;
            display: inline-block;
            text-align: center;
            line-height: 44px;
            border-radius: 5px;
            border: 2px solid #222222;
            margin: 30px 5px 0 0;
            transition: all 0.3s ease;
        }
        .content .media-icons a:hover{
            border-color: #eb2f06;
        }
        footer .bottom{
            width: 100%;
            text-align: left;
            color:white;
            padding: 0 40px 8px 0;
            padding-right: 40px;
            padding-left: 100px;
        }
        footer .bottom a{
            color: white;
        }
        footer a{
            transition: all 0.3s ease;
        }
        footer a:hover{
            color: #eb2f06;
        }
        @media (max-width:1100px) {
            footer .content .middle{
                padding-left: 50px;
            }
        }
        @media (max-width:950px){
            footer .content .box{
                width: 50%;
            }
            .content .right{
                margin-top: 40px;
            }
        }
        @media (max-width:560px){
            footer{
                position: relative;
            }
            footer .content .box{
                width: 100%;
                margin-top: 30px;
            }
            footer .content .middle{
                padding-left: 0;
            }
        }
    </style>
    <body>
        <footer>
            <div class="content">
                <div class="left box">
                    <div class="upper">
                        <div class="siteFooterBar">

                        </div>
                        <div class="topic">About us</div>
                        <div><p>Pick From a Wide Selection Of Restaurants and Get Lightning Fast Delivery. Good Food Is All It Takes To Make Things Right. Order Delicious Food Now. Super Quick Delivery. </p></div>
                    </div>
                    <div class="lower">
                        <div class="content1">
                            <img src="images/fq img.jpg" >
                        </div>
                    </div>
                </div>
                <div class="middle box">
                    <div class="topic">company</div>
                    <div><a href="#"> help</a></div>
                    <div><a href="#"> FAQ</a></div>
                    <div><a href="#"> careers</a></div>
                    <div><a href="#"> become a partner</a></div>
                    <div><a href="#"> support</a></div>

                </div>
                <div class="right box">
                    <div class="topic">follow us</div>
                    <form action="#">

                        <div class="media-icons">
                            <a href="https://www.instagram.com/gmit_dvg"><i class="fab fa-facebook-f"></i></a>
                            <a href="https://www.instagram.com/gmit_dvg"><i class="fab fa-instagram"></i></a>
                            <a href="#"><i class="fab fa-twitter"></i></a>
                            <a href="#"><i class="fab fa-youtube"></i></a>
                            <a href="#"><i class="fab fa-linkedin-in"></i></a>

                        </div>
                    </form>
                </div>
            </div>
            <div class="bottom">
                <p>Copyright © 2020 foodquest  All rights reserved</p>
            </div>
        </footer>

    </body>
</html>
