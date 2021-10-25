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

    <!-- Custom Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Leckerli+One" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lora" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet"> 

    <!-- Custom CSS -->  
    <link rel="stylesheet" href="style.css" type="text/css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script>
        /* Navbar scroll */
        $(function () {

            var nav = $('.navbar'),
                    doc = $(document),
                    win = $(window);
            win.scroll();
        });
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

                if (this.hash == "") {
                    event.preventDefault();
                    var hash = this.hash;
                }
            });
        });
        $('.to-top').click(function () {
            $('.body,html').animate({
                scrollTop: 0
            }, 500);
        });
    </script>
    <style>
        a:hover,
        a:focus {
            text-decoration: none;
        }


        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
            text-transform: none;
            font-weight: 600;
            font-family: 'Lato', sans-serif;
            text-align: center;
        }
        .hr-h3s {
            border: 3px solid #E94B3C;
            width: 70px;
            margin: 0 auto 35px auto;
        }
        section {
            align-items: center;
            padding: 50px 60px;

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
        /* ******* Our staff ******* */



        #staff .thumbnail-row {
            margin: auto 60px;
            display: flex;
            align-items:center;
            flex-wrap: wrap;
            justify-content:space-around;
        }

        #staff h3 {
            font-family: 'Lato', sans-serif;
            text-transform: none;
            color: #182c39;
            margin: 50px auto 10px auto;
        }

        #staff img {
            border-radius: 50%;
            margin-bottom: 10px;
        }


        #staff  h5 {
            color: #222;
            font-family: 'Roboto', sans-serif;
            font-size: 18px;
        }

        #staff  h6 {
            color: #555;
            font-size: 16px;
        }

        #staff img:hover {
            box-shadow: 2px 2px 2px 0 rgba(0,0,0,0.9);
            transition: .3s;
        }
    </style>
    <!--<body id="myPage"  data-spy="scroll" data-target=".navbar" data-offset="60">-->
    <section class="bg-staff" id="staff">
        <div class="container-fluid">
            <h3>DEVELOPERS</h3>
            <hr class="hr-h3s"> 
            <div class="row text-center slideanim thumbnail-row">
                <div class="">
                    <div class="staff">
                        <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536952566/new/manager.jpg" class="" alt="chef-img" style="width:170px; height: 170px">
                        <h5 class="">Gouthami A P</h5>
                        <h6>Leader</h6>    
                    </div>
                </div>
                <div class="">  
                    <div class="staff">
                        <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536952565/new/chef1.jpg" class="" alt="chef-img" style="width:170px; height: 170px">
                        <h5 class="">HABEEBA</h5>
                        <h6>Chef</h6>         
                    </div>
                </div>  
                <div class="">  
                    <div class="staff">
                        <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536952566/new/chef3.jpg" class="" alt="chef-img" style="width:170px; height: 170px">
                        <h5 class="">RAQIB</h5>
                        <h6>Chef</h6>
                    </div>
                </div>
                <div class="">  
                    <div class="staff">
                        <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536952566/new/chef2.jpg" class="" alt="chef-img" style="width:170px; height: 170px">
                        <h5 class="">PRATEEK</h5>
                        <h6>Chef</h6>
                    </div>
                </div>
                <div class="">  
                    <div class="staff">
                        <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536952566/new/chef2.jpg" class="" alt="chef-img" style="width:170px; height: 170px">
                        <h5 class="">ARSHIYA</h5>
                        <h6>Chef</h6>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--</body>-->
</html>