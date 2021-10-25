<%-- 
    Document   : scroll top
    Created on : 16 Oct, 2021, 4:23:36 PM
    Author     : yasee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Northstreet Restaurant">
    <meta name="author" content="A.K.">

    <title>Restaurant Northstreet</title>


    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script> 
    <script>
        
        /* ***** Slideanim  ***** */
        $(window).scroll(function () {
            $(".slideanim").each(function () {
                var pos = $(this).offset().top;

                var winTop = $(window).scrollTop();
                if (pos < winTop + 600) {
                    $(this).addClass("slide");
                }
            });
        });
        
        /* ***** Smooth Scrolling  ***** */
        $(document).ready(function () {
            $(".navbar a, #service a").on('click', function (event) {

                if (this.hash !== "") {
                    event.preventDefault();
                    var hash = this.hash;

                    $('html, body').animate({
                        scrollTop: $(hash).offset().top
                    }, 900, function () {

                        window.location.hash = hash;
                    });
                }
            });
            
        /* ***** Scroll to Top ***** */
        $(window).scroll(function () {
            if ($(this).scrollTop() >= 300) {
                $('.to-top').fadeIn(200);
            } else {
                $('.to-top').fadeOut(200);
            }
        });
        $('.to-top').click(function () {
            $('.body,html').animate({
                scrollTop: 0
            }, 500);
        });
    </script>
    <style>
        html, body {
            overflow-x: hidden;
            font-family: 'Lato', sans-serif;
            width: 100%;

        }
        .slideanim {
            visibility: hidden;
        }

        .slide {
            animation-name: slide;
            -webkit-animation-name: slide;
            -moz-animation-name: slide;
            animation-duration: 1.5s;
            -webkit-animation-duration: 1.5s;
            -moz-animation-duration: 1.5s;
            visibility: visible;
        }

        @keyframes slide {
            0% {
                opacity: 0;
                transform: translateX(50%);
            }

            100% {
                opacity: 1;
                transform: translateX(0%);
            }
        }

        @-webkit-keyframes slide {
            0% {
                opacity: 0;
                -webkit-transform: translateX(50%);
                transform: translateX(50%);
            }

            100% {
                opacity: 1;
                -webkit-transform: translateX(0%);
                transform: translateX(0%);
            }
        }
        

        


        #footer .to-top {
            color: #fff;
            font-size: 30px;
            position: fixed;
            right: 12px;
            bottom: 12px;
            height: 40px;
            width: 40px;
            text-decoration: none;
            -moz-border-radius: 50%;
            -webkit-border-radius: 50%;
            border-radius: 50%;
            text-align: center;
            background: rgba(0, 0, 0, 0.5); 
            background-repeat: no-repeat;
            background-position: center;
        }

        #footer .to-top:hover {
            background-color: #222;
            color: #fff;
            -webkit-transition: all 1s ease;
            -moz-transition: all 1s ease;
            -ms-transition: all 1s ease;
            -o-transition: all 1s ease;
            transition: all 1s ease;
        }

    </style>
    <body id="myPage"  data-spy="scroll" data-target=".navbar" data-offset="60">
        <a class="to-top" href="#myPage" title="toTop">
            <i class="fa fa-chevron-up"></i>
        </a>
    </body>
