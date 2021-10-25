<%-- 
    Document   : demo
    Created on : 10 Oct, 2021, 3:24:44 PM
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

//            win.scroll(function () {
//
//                if (doc.scrollTop() > 80) {
//                    nav.addClass('scrolled');
//                } else {
//                    nav.removeClass('scrolled');
//                }
//
//            });

            win.scroll();

        });


//        /* ***** Btn More-Less ***** */
//        $("#more").click(function () {
//            var $this = $(this);
//            $this.toggleClass('more');
//            if ($this.hasClass('more')) {
//                $this.text('More');
//            } else {
//                $this.text('Less');
//            }
//        });




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
//                    $('html, body').animate({
//                        scrollTop: $(hash).offset().top
//                    }, 900, function () {
//
//                        window.location.hash = hash;
//                    });
                
            });


//            /* ***** Scroll to Top ***** */
//            $(window).scroll(function () {
//                if ($(this).scrollTop() >= 300) {
//                    $('.to-top').fadeIn(200);
//                } else {
//                    $('.to-top').fadeOut(200);
//                }
//            });
            $('.to-top').click(function () {
                $('.body,html').animate({
                    scrollTop: 0
                }, 500);
            });

        });
    </script>
    <style>

/*        html, body {
            overflow-x: hidden;
            font-family: 'Lato', sans-serif;
            width: 100%;

        }

        a {
            text-decoration: none;
        }

        ul {
            list-style-type: none;
        }*/

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

/*        hr {
            border-color: #ffc266;
            border-width: 5px;
            max-width: 100%;
        }


        .container-h1 {
            font-family: 'Lora', serif;
            text-align: center;
            font-size: 50px;
            font-weight: 700;
            margin: 50px auto;
            color: #333;
            font-family: 'Ubuntu', sans-serif;

        }*/

/*        .btn {
            color: #fff;
            background-color: #182c39;
            margin: 20px auto;
            border-radius: 0;
            font-weight: 500;
            display: table;
            padding: 10px;


        }

        .btn:hover{
            color: #182c39;
            background-color: transparent;
            border: 1px solid #182c39;
        }*/


        .hr-h3s {
            border: 3px solid #E94B3C;
            width: 70px;
            margin: 0 auto 35px auto;
        }


/*        textarea {
            resize: none;
        }*/

        section {
            align-items: center;
            padding: 50px 60px;

        }
/*        .bg-section h2 {
            font-family: 'Montserrat', sans-serif;
            text-transform: none;
            color: #ffc266;
            background-color: #182c39;
            margin: 50px 0;
            padding: 25px 20px;
            border-radius: 50px;
        }*/

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

/*        @-webkit-keyframes slide {
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
        }*/


        /*  ******* Header + Navigation ******* */

/*        .navbar {
            background-color: #182c39;
            border-color: rgb(51, 17, 0);
            border-color: rgba(51, 17, 0, 0.2);
            font-family: 'Leckerli One', cursive;
            font-weight: 700;
            padding: 15px 0;
            transition: padding .5s;
        }

        .navbar .navbar-brand {
            color: #fff;
            font-family: 'Leckerli One', cursive;
            font-weight: 500;
            text-transform: none;
            font-size: 25px;
            padding-left: 15px;
            text-shadow: black 0.3em 0.3em 0.3em;
        }

        .navbar .navbar-brand:hover,
        .navbar .navbar-brand:focus {
            color: #ffc266;
            transition: color 1s;
        }

        .navbar .navbar-nav {
            padding-right: 50px;
        }

        .navbar .navbar-nav > li > a {
            text-transform: uppercase;
            font-weight: 600;
            font-size: 14px;
            color: #fff;
            margin: auto 5px;
            font-family: 'Lato', sans-serif; 
            text-shadow: #222 0.3em 0.3em 0.3em;   
        }

        .navbar .navbar-nav > li > a:hover,
        .navbar .navbar-nav > li > a:focus:hover {
            color: #ffc266;
            transition: color 1s; 
        }


        .navbar .navbar-nav > li.active > a:hover,
        .navbar .navbar-nav > li.active > a:focus:hover {
            background-color: transparent;
        }

        .navbar.scrolled {
            box-shadow: 0 3px 3px rgba(0,0,0,0.1);
            padding: 5px 0;
            opacity: 0.9;
        }

        .jumbotron {
            margin-bottom: 0px;
            background-image: url('https://res.cloudinary.com/dbte0ueti/image/upload/v1536951689/new/jumbotron.jpg');
            background-position: 0% 25%;
            background-size: cover;
            background-repeat: no-repeat;
            color: white;
            text-shadow: black 0.3em 0.3em 0.3em;
            height: 700px;
        }


        .jumbotron .header-content-inner {
            font-weight: 700;
            text-transform: none;
            margin-bottom: 0;
            margin: 200px;
            font-family: 'Roboto', sans-serif;
        }

        .jumbotron h1 {
            font-size: 45px;
        }

        .jumbotron h3 {
            font-size: 25px;
        }
*/


        /* ******* About ******* */

/*        .bg-about {
            margin: auto 50px;
            background-color: white;
        }

        #about h3 {
            font-family: 'Roboto', sans-serif;
            color: #E94B3C;


        }

        #about .restaurant-history p {
            padding: 20px 80px;
            font-family: 'Roboto', sans-serif;
            font-size: 15px;
            color: #444;
        }

        p.first::first-letter {
            font-size: 150%;
            color: #000;
        }

        #about h1 {
            padding-top: 35px;
        }


        #about .image {
            display: block;
            width: 100%;
            height: auto;
        }



        #about .hov-img * {
            box-sizing: border-box;
        }

        #about .hov-img {
            position: relative;
            display: inline-block;
            overflow: hidden;
            max-width: 100%;
            height: auto;
            margin-bottom: 10px;
        }

        #about .hov-img img {
            max-width: 100%;
        }

        #about .hov-img-bottom {
            display: block;
        }

        #about .hov-img-top {
            opacity: 0;
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.6);
            color: #fff;
            -moz-transition: all 0.4s ease-in-out 0s;
            -webkit-transition: all 0.4s ease-in-out 0s;
            -ms-transition: all 0.4s ease-in-out 0s;
            transition: all 0.4s ease-in-out 0s;
        }

        #about .hov-img:hover .hov-img-top {
            opacity: 1;
        }

        #about .hov-img-text {
            text-align: center;
            font-size: 18px;
            display: inline-block;
            position: absolute;
            text-shadow: black .2em .2em .2em; 
            top: 50%;
            left: 50%;
            -moz-transform: translate(-50%, -50%);
            -webkit-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);
        }

        #about .hov-img-text p {
            font-size: 15px;
            line-height: 1.2em;
        }

        #about .hov-img-slideup {
            -moz-transform: translateY(100%);
            -webkit-transform: translateY(100%);
            -ms-transform: translateY(100%);
            transform: translateY(100%);
        }

        #about .hov-img:hover .hov-img-slideup {
            -moz-transform: translateY(0);
            -webkit-transform: translateY(0);
            -ms-transform: translateY(0);
            transform: translateY(0);
        }



         ******* Menu ******* 

        .bg-menu {
            margin: auto 50px;
        }

        #menu .nav-pills {
            background-color: #182c39;
            border-color: transparent;
            font-weight: 500;
            color: #000;
            margin: 25px;
        }

        #menu .nav-pills > li > a,
        #menu .nav-pills > li > a:focus {
            font-weight: 500;
            font-size: 15px;
            color: #fff;
            border-radius: 0;
            border: 1px solid #fff;
            text-transform: uppercase;
            font-family: 'Roboto', sans-serif;

        }

        #menu .nav-pills > li > a:hover,
        #menu .nav-pills > li > a:focus:hover {
            color: #fff;
            background-color: #944743;
        }

        #menu .nav-pills > li > a.active,
        #menu .nav-pills > li  > a.active:focus {
            background-color: #944743;
            color: #fff;
        }




        #menu .hr-menu {
            border: 2px solid #182c39;
            width: 100%;
        }

        #menu .list-group-item {
            background-color: transparent;
            border: none;
            border-bottom: 1px solid #555;
            padding: 0 auto;
        }

        #menu .tab-content  .tab-pane  h3 {
            text-align: center;
            font-family: 'Leckerli One', cursive;
        }

        #menu .list-group-item:first-child {
            border-top-right-radius: 0;
            border-top-left-radius: 0;
        }

        #menu .list-group-item:last-child {
            border-bottom-right-radius: 0;
            border-bottom-left-radius: 0;
        }

        #menu .list-group-item  h4 {
            text-align: left;
            color: #182c39;
            text-transform: none;
            font-size: 18px;
        }

        #menu .list-group-item  p {
            text-align: left;
            color: #555555;
            font-weight: 500;
            font-style: italic;
            text-transform: none;
            font-size: 14px;
        }

        #menu .badge {
            border-radius: 0;
            background-color: #444;
            font-size: 12px;
            color: #fff;
        }

        #menu .right-cover {
            background-color: #fff;
            color: #DC4C46;
            text-shadow: #DC4C46 .4em .4em .4em;
            padding: 10px;
            text-transform: none;
        }


         ******* Service ******* 


        #service .service-round {
            height: 100px;
            width: 100px;
            -webkit-border-radius: 50%;
            -moz-border-radius: 50%;
            border-radius: 50%;
            border: 8px solid #182c39;
            text-align: center;
            display: inline-block;
            padding: 10px;
            color: #182c39;
        }

        #service .service-round  i {
            color: #182c39;

        }

        #service h4 {
            margin: 10px auto;
            font-size: 20px;
            color: #555;
        }

        #service .round:hover .fa {
            color: #ffc266;
            transition: color 2s;

        }

        #service .round:hover .service-round {
            border-color: #ffc266;
            transition: border-color 2s;
        }




         ******* Gallery ******* 


        #gallery h3 {
            font-family: 'Lato', sans-serif;
            text-transform: none;
            color: #182c39;
            margin: 50px auto 10px auto;
            font-weight: 700;
        }

        #gallery .gallery {
            margin: 0px 80px;
        }

        #gallery .no-gutter > [class*="col-"] {
            padding-right: 0;
            padding-left: 0;
        }

        #gallery .caption-content {	
            position: absolute;
            bottom: 100%;
            left: 0;
            right: 0;
            background: rgba(0, 0, 0, 0.8); 
            color: #f1f1f1;
            overflow: hidden;
            width: 100%;
            height: 0;
            transition: .5s ease;
        }

        #gallery .portfolio-item:hover .caption-content {
            bottom: 0;
            height: 100%;
        }

        #gallery .caption-content .fa {
            white-space: nowrap;
            color: white;
            font-size: 40px;
            position: absolute;
            overflow: hidden;
            top: 50%;
            left: 50%;
            -webkit-transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            -moz-transform: translate(-50%, -50%);
            -o-transform: translate(-50%, -50%);
            transform: translate(-50%, -50%);

        }

        #gallery .more-img {
            margin: 0 80px;
            background-color: #182c39;
        }

        #gallery .more-img .to-gallery {
            text-align: center;
            text-transform: none;
            color: #fff;
            padding: 10px;
            margin: 0px auto;
        }

        #gallery .more-img .to-gallery h4 {
            text-transform: none;
            color: #fff;
            padding: 5px;
            margin: auto;
            font-size: 16px;
        }

        #gallery .more-img .social-networks .fa {
            font-size: 20px;
            margin: 5px 5px;
            color: #fff;
        }

        #gallery .more-img .social-networks .fa:hover {
            color: #ffc266;
        }
*/


        /* ******* Our staff ******* */



        #staff .thumbnail-row {
            margin: auto 60px;
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



        /* ******* Testimonials ******* */
/*        #testimonials .hr-testimonials {
            border: 1px solid #182c39;
            width: 50%;
            margin: 0 auto 35px auto;
        }

        #testimonials h3 {
            color: #182c39;
            margin: 40px auto;
        }

        #testimonials .carousel {
            float: none;
            margin: auto;
        }


        #testimonials .carousel-indicators li {
            border: 2px solid #182c39;
            background-color: #fff;
            height: 10px;
            width: 10px;
            border-radius: 50%;
        }

        #testimonials .carousel-indicators li.active {
            border-color: #fff;
            background-color: #182c39;
        }



        #testimonials .carousel-item h4 {
            font-size: 18px;
            line-height: 1.2em;
            font-weight: 500;
            padding-bottom: 20px;
        }

        #testimonials .carousel-item h5 {
            font-size: 15px;
            font-weight: 500;
            margin-bottom: 80px;
            font-style: italic;
        }




         ******* Contact ******* 

        #contact .form-group input, 
        #contact .form-group textarea {
            border: 1px solid #000;
            border-radius: 0;


        }

        #contact .form-group input:hover,
        #contact .form-group textarea:hover {
            border-color: #ababee;
            box-shadow: 2px 2px 2px rgba(0,0,0, .2);

        }

        #contact .contact-buttons input, 
        #contact .contact-buttons input:focus {
            color: #fff;
            background-color: #182c39;
            margin: 20px auto 40px auto;
            border-radius: 0;
            font-weight: 500;
            padding: 10px;
            border: 1px solid #182c39;
            cursor: pointer;
        }

        #contact .contact-buttons input:hover {
            color: #182c39;
            background-color: #fff;

        }

        #contact .left-box {
            background-color: #182c39;
            margin: 0 20px;
            font-size: 15px;
            text-transform: none;
            line-height: 1.8em;
            font-weight: 500;
            padding: 30px 50px;
            color: #fff;
        }

        #contact .left-box .span-contact {
            color: #ffc266;
            font-weight: 700;
            padding-right: 20px;
            font-size: 17px;
        }

        #contact #googleMap {
            -webkit-filter: grayscale(100%);
            filter: grayscale(100%);
        }



         ***** Footer ***** 

        #footer {
            background-color: #182c39;
            color: white;
            font-family: 'Roboto', sans-serif;
        }

        #footer ul {
            list-style-type: none;
            padding-left: 0;
            line-height: 2.2;
        }

        #footer h5 {
            font-size: 18px;
            color: white;
            margin-top: 40px;
            margin-bottom: 10px;
            text-transform: uppercase;
        }

        #footer a {
            color: #aaa;
        }

        #footer a:hover,
        #footer a:focus {
            text-decoration: none;
            color: white;
        }

        #footer .social-networks {
            padding-top: 20px;
            padding-bottom: 25px;
        }

        #footer .footer-items .fa {
            font-size: 17px;
            margin-bottom: 5px;
            background-color: white;
            color: #182c39;
            border-radius: 50%;
            padding-bottom: 25px;
            height: 30px;
            width: 30px;
            text-align: center;
            line-height: 31px;
            text-decoration: none;
            transition: color 1s;
        }

        #footer .footer-items {
            margin: auto;
            padding-left: 50px;
            font-size: 15px;
        }

        #footer .fa-facebook:hover,
        #footer .fa-instagram:hover {
            border: 1px solid #fff;
            color: #fff;
            background-color: #182c39;
        }


        .footer-copyright {
            background-color: #10222e;
        }

        .footer-copyright p {
            text-align: center;
            color: #ccc;
            font-size: 15px;
            padding: 10px 0;
            margin-bottom: 0;
        }

        #footer .hr-foot {
            width: 80%;
            margin: 10px auto;
            border: 1px solid #fff;
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

*/



    </style>

<!--    <body id="myPage"  data-spy="scroll" data-target=".navbar" data-offset="60">-->

<!--        <nav class="navbar navbar-expand-md bg-dark navbar-dark fixed-top">
            <a class="navbar-brand" href="#">Restaurant Northstreet</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#about">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#menu">Menu</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#service">Service</a>
                    </li>  
                    <li class="nav-item">
                        <a class="nav-link" href="#contact">Contact</a>
                    </li>  
                </ul>
            </div>  
        </nav>

        <div class="jumbotron">
            <div class="container-fluid">
                <div class="header-content-inner">
                    <h1>Welcome to Northstreet restaurant</h1> 
                    <h3>We are proud of our long history of making delicious meals, warm and 
                        friendly atmosphere and professional staff.</h3>
                </div>
            </div>
        </div>

        <section class="bg-about bg-section" id="about">
            <div class="container-fluid">
                <h1 class="container-h1">About</h1>
                <div class="row">
                    <div class="col-sm-5">

                        <div class="hov-img">
                            <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536951746/new/warm_welcome.jpg" alt="Warm welcome" class="hov-img-bottom img-fluid">
                            <div class="hov-img-top hov-img-slideup">
                                <div class="hov-img-text">
                                    <h5>Warm welcome</h5>
                                    <p>It had separate tables, a menu, and specialized in soups made with a base of meat and eggs, which were said to be restaurants or, in English "restoratives".</p>
                                </div>
                            </div>
                        </div>                    

                        <div class="hov-img">
                            <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536951746/new/delicious_meals.jpg" alt="Delicious meals" class="hov-img-bottom img-fluid">
                            <div class="hov-img-top hov-img-slideup">
                                <div class="hov-img-text">
                                    <h5>Delicious meals</h5>
                                    <p> In about 1765 a new kind of eating establishment, called a "Bouillon", was opened on rue des Poulies, near the Louvre, by a man named Boulanger.</p>
                                </div>
                            </div>
                        </div>

                        <div class="hov-img">
                            <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536951746/new/professional_staff.jpg" alt="Professional staff" class="hov-img-bottom img-fluid">
                            <div class="hov-img-top hov-img-slideup">
                                <div class="hov-img-text">
                                    <h5>Professional staff</h5>
                                    <p>For centuries Paris had taverns which served food at large common tables, but they were notoriously crowded, noisy, not very clean, and served food of dubious quality.</p>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="col-sm-7">
                        <div class="row ">
                            <div class="restaurant-history slideanim text-center">
                                <h3 class="section-heading">Restaurant Northstreet</h3>
                                <p class="about-history first">The modern idea of a restaurant – as well as the term itself – appeared in Paris in the 18th century. For centuries Paris had taverns which served food at large common tables, but they were notoriously crowded, noisy, not very clean, and served food of dubious quality. In about 1765 a new kind of eating establishment, called a "Bouillon", was opened on rue des Poulies, near the Louvre, by a man named Boulanger.<br /> <br >
                                    It had separate tables, a menu, and specialized in soups made with a base of meat and eggs, which were said to be restaurants or, in English "restoratives". Other similar bouillons soon opened around Paris.
                                    In about 1765 a new kind of eating establishment, called a "Bouillon", was opened on rue des Poulies, near the Louvre, by a man named Boulanger.
                                    It had separate tables, a menu, and specialized in soups made with a base of meat and eggs, which were said to be restaurants or, in English "restoratives". Other similar bouillons soon opened around Paris.
                                </p>

                                <button type="button" class="btn more" id="more" data-toggle="collapse" data-target="#demo">More</button>
                                <div id="demo" class="collapse">  
                                    <p class="about-history"> Thanks to Boulanger and his imitators, these soups moved from the category of remedy into the category of health food and ultimately into the category of ordinary food. Their existence was predicated on health, not gustatory, requirements.</p>
                                </div>
                            </div>
                        </div>
                    </div> 
                </div>     
            </div>
        </section>-->

<!--        <section class="bg-menu bg-section" id="menu">
            <div class="container-fluid">
                <h1 class="container-h1">Menu</h1>
                <div class="row">

                     Nav pills 
                    <ul class="nav nav-pills" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-toggle="pill" href="#breakfast">Breakfast</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="pill" href="#lunch">Lunch</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="pill" href="#dinner">Dinner</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="pill" href="#dessert">Dessert</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="pill" href="#salads">Salads</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-toggle="pill" href="#drinks">Drinks</a>
                        </li>
                    </ul>


                     Tab panes 
                    <div class="tab-content slideanim">
                        <div id="breakfast" class="tab-pane fade show active">
                            <div class="row">
                                <div class="col-sm-7">
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Spanish tortilla<span class="badge pull-right">5.90 €</span></h4>
                                            <p class="list-group-item-text">potatoes, onion, olive oil, free-range eggs</p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Quick fish cakes<span class="badge pull-right">6.80 €</span></h4>
                                            <p class="list-group-item-text">skinless cod, pollock fillets, Maris Piper, flour, olive oil, fresh green herbs, chives, mayonnaise, eggs</p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Wild rice salad<span class="badge pull-right">5.20 €</span></h4>
                                            <p class="list-group-item-text">mixed rice, wild and long-grain, mixed nuts, fresh basil, fresh mint, dried apricots, extra virgin olive oil
                                            </p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Chicken milanese with spaghetti<span class="badge pull-right">8.70 €</span></h4>
                                            <p class="list-group-item-text">cloves of garlic, fresh basil, olive oil, plum tomatoes, skinless free-range chicken breasts, plain flour, free-range eggs, breadcrumbs, Parmesan cheese, dried spaghetti</p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Mango lassi<span class="badge pull-right">3.10 €</span></h4>
                                            <p class="list-group-item-text">green cardamom pods , optional, ripe mangos, low-fat natural yoghurt, ice cubes, runny honey
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-5">
                                    <div class="right-cover">
                                        <h3>Breakfast</h3>
                                        <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536951905/new/breakfast.jpg" class="menu-img img-fluid" alt="breakfast-img">
                                    </div>
                                </div>
                            </div>      
                        </div>
                        <div id="lunch" class="tab-pane fade">
                            <div class="row">
                                <div class="col-sm-7">
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Spanish tortilla<span class="badge pull-right">5.90 €</span></h4>
                                            <p class="list-group-item-text">potatoes, onion, olive oil, free-range eggs</p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Quick fish cakes<span class="badge pull-right">6.80 €</span></h4>
                                            <p class="list-group-item-text">skinless cod, pollock fillets, Maris Piper, flour, olive oil, fresh green herbs, chives, mayonnaise, eggs</p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Wild rice salad<span class="badge pull-right">5.20 €</span></h4>
                                            <p class="list-group-item-text">mixed rice, wild and long-grain, mixed nuts, fresh basil, fresh mint, dried apricots, extra virgin olive oil
                                            </p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Chicken milanese with spaghetti<span class="badge pull-right">8.70 €</span></h4>
                                            <p class="list-group-item-text">cloves of garlic, fresh basil, olive oil, plum tomatoes, skinless free-range chicken breasts, plain flour, free-range eggs, breadcrumbs, Parmesan cheese, dried spaghetti</p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Mango lassi<span class="badge pull-right">3.10 €</span></h4>
                                            <p class="list-group-item-text">green cardamom pods , optional, ripe mangos, low-fat natural yoghurt, ice cubes, runny honey
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-5">
                                    <div class="right-cover">
                                        <h3>Lunch</h3>
                                        <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536951906/new/lunch.jpg" class="menu-img img-fluid" alt="brekfast-img">
                                    </div>
                                </div>
                            </div>  
                        </div>
                        <div id="dinner" class="tab-pane fade">
                            <div class="row">
                                <div class="col-sm-7">
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Spanish tortilla<span class="badge pull-right">5.90 €</span></h4>
                                            <p class="list-group-item-text">potatoes, onion, olive oil, free-range eggs</p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Quick fish cakes<span class="badge pull-right">6.80 €</span></h4>
                                            <p class="list-group-item-text">skinless cod, pollock fillets, Maris Piper, flour, olive oil, fresh green herbs, chives, mayonnaise, eggs</p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Wild rice salad<span class="badge pull-right">5.20 €</span></h4>
                                            <p class="list-group-item-text">mixed rice, wild and long-grain, mixed nuts, fresh basil, fresh mint, dried apricots, extra virgin olive oil
                                            </p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Chicken milanese with spaghetti<span class="badge pull-right">8.70 €</span></h4>
                                            <p class="list-group-item-text">cloves of garlic, fresh basil, olive oil, plum tomatoes, skinless free-range chicken breasts, plain flour, free-range eggs, breadcrumbs, Parmesan cheese, dried spaghetti</p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Mango lassi<span class="badge pull-right">3.10 €</span></h4>
                                            <p class="list-group-item-text">green cardamom pods , optional, ripe mangos, low-fat natural yoghurt, ice cubes, runny honey
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-5">
                                    <div class="right-cover">
                                        <h3>Dinner</h3>
                                        <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536951906/new/dinner.jpg" class="menu-img img-fluid" alt="brekfast-img">
                                    </div>    
                                </div>
                            </div>
                        </div>
                        <div id="dessert" class="tab-pane fade">
                            <div class="row">
                                <div class="col-sm-7">
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Spanish tortilla<span class="badge pull-right">5.90 €</span></h4>
                                            <p class="list-group-item-text">potatoes, onion, olive oil, free-range eggs</p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Quick fish cakes<span class="badge pull-right">6.80 €</span></h4>
                                            <p class="list-group-item-text">skinless cod, pollock fillets, Maris Piper, flour, olive oil, fresh green herbs, chives, mayonnaise, eggs</p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Wild rice salad<span class="badge pull-right">5.20 €</span></h4>
                                            <p class="list-group-item-text">mixed rice, wild and long-grain, mixed nuts, fresh basil, fresh mint, dried apricots, extra virgin olive oil
                                            </p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Chicken milanese with spaghetti<span class="badge pull-right">8.70 €</span></h4>
                                            <p class="list-group-item-text">cloves of garlic, fresh basil, olive oil, plum tomatoes, skinless free-range chicken breasts, plain flour, free-range eggs, breadcrumbs, Parmesan cheese, dried spaghetti</p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Mango lassi<span class="badge pull-right">3.10 €</span></h4>
                                            <p class="list-group-item-text">green cardamom pods , optional, ripe mangos, low-fat natural yoghurt, ice cubes, runny honey
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-5">
                                    <div class="right-cover">
                                        <h3>Dessert</h3>
                                        <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536951905/new/dessert.jpg" class="menu-img img-fluid" alt="brekfast-img">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="salads" class="tab-pane fade">
                            <div class="row">
                                <div class="col-sm-7">
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Spanish tortilla<span class="badge pull-right">5.90 €</span></h4>
                                            <p class="list-group-item-text">potatoes, onion, olive oil, free-range eggs</p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Quick fish cakes<span class="badge pull-right">6.80 €</span></h4>
                                            <p class="list-group-item-text">skinless cod, pollock fillets, Maris Piper, flour, olive oil, fresh green herbs, chives, mayonnaise, eggs</p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Wild rice salad<span class="badge pull-right">5.20 €</span></h4>
                                            <p class="list-group-item-text">mixed rice, wild and long-grain, mixed nuts, fresh basil, fresh mint, dried apricots, extra virgin olive oil
                                            </p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Chicken milanese with spaghetti<span class="badge pull-right">8.70 €</span></h4>
                                            <p class="list-group-item-text">cloves of garlic, fresh basil, olive oil, plum tomatoes, skinless free-range chicken breasts, plain flour, free-range eggs, breadcrumbs, Parmesan cheese, dried spaghetti</p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Mango lassi<span class="badge pull-right">3.10 €</span></h4>
                                            <p class="list-group-item-text">green cardamom pods , optional, ripe mangos, low-fat natural yoghurt, ice cubes, runny honey
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-5">
                                    <div class="right-cover">
                                        <h3>Salads</h3>
                                        <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536951906/new/salads.jpg" class="menu-img img-fluid" alt="brekfast-img">
                                    </div>    
                                </div>
                            </div>
                        </div>
                        <div id="drinks" class="tab-pane fade">
                            <div class="row">
                                <div class="col-sm-7">
                                    <ul class="list-group">
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Spanish tortilla<span class="badge pull-right">5.90 €</span></h4>
                                            <p class="list-group-item-text">potatoes, onion, olive oil, free-range eggs</p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Quick fish cakes<span class="badge pull-right">6.80 €</span></h4>
                                            <p class="list-group-item-text">skinless cod, pollock fillets, Maris Piper, flour, olive oil, fresh green herbs, chives, mayonnaise, eggs</p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Wild rice salad<span class="badge pull-right">5.20 €</span></h4>
                                            <p class="list-group-item-text">mixed rice, wild and long-grain, mixed nuts, fresh basil, fresh mint, dried apricots, extra virgin olive oil
                                            </p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Chicken milanese with spaghetti<span class="badge pull-right">8.70 €</span></h4>
                                            <p class="list-group-item-text">cloves of garlic, fresh basil, olive oil, plum tomatoes, skinless free-range chicken breasts, plain flour, free-range eggs, breadcrumbs, Parmesan cheese, dried spaghetti</p>
                                        </li>
                                        <li class="list-group-item">
                                            <h4 class="list-group-item-heading">Mango lassi<span class="badge pull-right">3.10 €</span></h4>
                                            <p class="list-group-item-text">green cardamom pods , optional, ripe mangos, low-fat natural yoghurt, ice cubes, runny honey
                                            </p>
                                        </li>
                                    </ul>
                                </div>
                                <div class="col-sm-5">
                                    <div class="right-cover">
                                        <h3>Drink</h3>
                                        <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536951906/new/drink.jpg" class="menu-img img-fluid" alt="brekfast-img">
                                    </div>
                                </div>
                            </div>
                        </div>    
                    </div>             
                </div>
            </div>
        </section>-->

<!--        <section class="bg-service bg-section" id="service">
            <div class="container-fluid text-center">
                <h1 class="container-h1">Service</h1>

                <div class="row service-round-3 slideanim">
                    <div class="col-sm-4 text-center round">
                        <div class="service-round b-party">
                            <i class="fa fa-4x fa fa-birthday-cake sr-icons"></i>
                        </div>
                        <h4>Birthday party</h4>
                        <p>For more information please contact us.</p>
                    </div>
                    <div class="col-sm-4 text-center round">
                        <div class="service-round wedding">
                            <i class="fa fa-4x fa fa-heart sr-icons"></i>
                        </div>    
                        <h4>Wedding</h4>
                        <p>For more information please contact us</p>
                    </div>
                    <div class="col-sm-4 text-center round">
                        <div class="service-round b-dinner">
                            <i class="fa fa-4x fa fa-suitcase  sr-icons"></i>
                        </div>
                        <h4>Business dinner</h4>
                        <p>For more information please contact us.</p>
                    </div>
                </div>
                <a href="#contact" class="btn">Contact us</a>
            </div>
        </section>




        <section id="gallery" class="bg-gallery no-padding">
            <div class="container-fluid">
                <h3>Gallery</h3>
                <hr class="hr-h3s">
                <div class="row no-gutter gallery slideanim"> 

                    <div class="col-sm-4 portfolio-item">
                        <a href="#" class="portfolio-link">
                            <div class="caption">
                                <div class="caption-content">
                                    <i class="fa fa-instagram fa-3x"></i>
                                </div>
                            </div>
                            <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536952203/new/s1.jpg" class="img-fluid
                                 " alt="">     
                        </a>
                    </div>
                    <div class="col-sm-4 portfolio-item">
                        <a href="#" class="portfolio-link">
                            <div class="caption">
                                <div class="caption-content">
                                    <i class="fa fa-instagram fa-3x"></i>
                                </div>
                            </div>
                            <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536952203/new/s2.jpg" class="img-fluid" alt="">
                        </a>
                    </div>
                    <div class="col-sm-4 portfolio-item">
                        <a href="#" class="portfolio-link">
                            <div class="caption">
                                <div class="caption-content">
                                    <i class="fa fa-instagram fa-3x"></i>
                                </div>
                            </div>
                            <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536952203/new/s3.jpg" class="img-fluid" alt="">
                        </a>
                    </div>
                    <div class="col-sm-4 portfolio-item">
                        <a href="#" class="portfolio-link">
                            <div class="caption">
                                <div class="caption-content">
                                    <i class="fa fa-instagram fa-3x"></i>
                                </div>
                            </div>
                            <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536952203/new/s4.jpg" class="img-fluid" alt="">
                        </a>
                    </div>
                    <div class="col-sm-4 portfolio-item">
                        <a href="#" class="portfolio-link">
                            <div class="caption">
                                <div class="caption-content">
                                    <i class="fa fa-instagram fa-3x"></i>
                                </div>
                            </div>
                            <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536952203/new/s5.jpg" class="img-fluid" alt="">
                        </a>
                    </div>
                    <div class="col-sm-4 portfolio-item">
                        <a href="#" class="portfolio-link">
                            <div class="caption">
                                <div class="caption-content">
                                    <i class="fa fa-instagram fa-3x"></i>
                                </div>
                            </div>
                            <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536952203/new/s6.jpg" class="img-fluid" alt="">
                        </a>
                    </div>
                </div>
                <div class="row more-img">

                    <div class="to-gallery">
                        <h4>For more pictures visit us on</h4>
                        <div class="social-networks">
                            <a href="https://www.instagram.com" target="_blank" class="instagram"><i class="fa fa-instagram"></i></a>
                            <a href="https://www.facebook.com" target="_blank" class="facebook"><i class="fa fa-facebook"></i></a>
                        </div>
                    </div>

                </div>

            </div>
        </section>-->

        <section class="bg-staff" id="staff">
            <div class="container-fluid">
                <h3>Our staff</h3>
                <hr class="hr-h3s"> 
                <div class="row text-center slideanim thumbnail-row">
                    <div class="col-sm-3">
                        <div class="staff">
                            <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536952566/new/manager.jpg" class="" alt="chef-img" style="width:170px; height: 170px">
                            <h5 class="">John Johnson</h5>
                            <h6>Manager</h6>    
                        </div>
                    </div>
                    <div class="col-sm-3">  
                        <div class="staff">
                            <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536952565/new/chef1.jpg" class="" alt="chef-img" style="width:170px; height: 170px">
                            <h5 class="">Anna Schmidt</h5>
                            <h6>Chef</h6>         
                        </div>
                    </div>  
                    <div class="col-sm-3">  
                        <div class="staff">
                            <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536952566/new/chef3.jpg" class="" alt="chef-img" style="width:170px; height: 170px">
                            <h5 class="">Ivan Gonzales</h5>
                            <h6>Chef</h6>
                        </div>
                    </div>
                    <div class="col-sm-3">  
                        <div class="staff">
                            <img src="https://res.cloudinary.com/dbte0ueti/image/upload/v1536952566/new/chef2.jpg" class="" alt="chef-img" style="width:170px; height: 170px">
                            <h5 class="">Joseph Martinez</h5>
                            <h6>Chef</h6>
                        </div>
                    </div>
                </div>
            </div>
        </section>

<!--        <section class="bg-testimonials" id="testimonials">
            <div class="container-fluid">
                <h3 class="">What people say about us</h3>
                <hr class="hr-testimonials">
                <div class="row slideanim">    
                    <div id="myCarousel" class="carousel slide" data-ride="carousel">
                         Indicators 
                        <ul class="carousel-indicators">
                            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                            <li data-target="#myCarousel" data-slide-to="1"></li>
                            <li data-target="#myCarousel" data-slide-to="2"></li>
                        </ul>

                         Wrapper for slides 
                        <div class="carousel-inner" role="listbox">
                            <div class="carousel-item active">
                                <h4>The atmosphere in restaurant is friendly, and the
                                    dishes are delicious.</h4>
                                <h5>Mark Gross</h5>
                            </div>

                            <div class="carousel-item">
                                <h4>Delicious meals, warm welcome, excellent service.</h4>
                                <h5>Nina Hansen</h5>
                            </div>

                            <div class="carousel-item">
                                <h4>Definitely my favourite restaurant, friendly, clean, 
                                    delicious meals.</h4>
                                <h5>Maria Fernandez</h5>
                            </div>
                        </div>

                         Left and right controls 
                        <a class="carousel-control-prev" href="#myCarousel" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#myCarousel" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                </div>
            </div>       
        </section> 

        <section class="bg-contact bg-section" id="contact">
            <div class="container-fluid">
                <h1 class="container-h1">Contact us</h1>
                <div class="row slideanim">
                    <div class="col-md-6 col-sm-6 contact-left">
                        <div class="left-box">
                            <address class="contact">
                                <span class="span-contact">Call:</span>
                                <br>
                                +091 1234 5678
                                <br> 
                                <span class="span-contact">Email:</span> 
                                <br>
                                northstreet@gmail.com
                                <br>
                                <span class="span-contact">Visit:</span>  
                                <br>
                                22, Northstreet Road
                                <br>
                                Melbourne, Victoria
                                <br>
                                Australia
                            </address>
                        </div>
                    </div>

                    <div class="col-md-6 col-sm-6 contact-right" >

                        <form novalidate action="mailto:anttnew@gmmmail.com" name="frm" method="post">
                            <div class="form-group has-feedback">
                                <label class="sr-only">First name:</label>
                                <input type="text" name="name" class="form-control" placeholder="First name" required>

                            </div>
                            <div class="form-group has-feedback">
                                <label class="sr-only">Last name:</label>
                                <input type="text" name="surname" class="form-control" placeholder="Last name" required>

                            </div>
                            <div class="form-group has-feedback">
                                <label class="sr-only">Email:</label>
                                <input type="email" name="email" class="form-control"  placeholder="Email" required>

                            </div>
                            <div class="form-group">
                                <label class="sr-only" name="comment" for="comment">Comment:</label>
                                <textarea class="form-control" rows="5" id="comment" placeholder="Description"></textarea>
                            </div>
                            <div class="contact-buttons pull-left">
                                <input type="submit" name="submit"  value="Send" />
                                <input type="reset" value="Reset" />
                            </div>
                        </form>

                    </div>
                </div>
                <div class="row">
                    <div id="googleMap" style="height:300px;width:100%;"></div>

                     Add Google Maps 
                    <script src="http://maps.googleapis.com/maps/api/js"></script>
                    <script>
        var myCenter = new google.maps.LatLng(-37.817110, 144.959128);

        function initialize() {
            var mapProp = {
                center: myCenter,
                zoom: 12,
                scrollwheel: false,
                draggable: false,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };

            var map = new google.maps.Map(document.getElementById("googleMap"), mapProp);

            var marker = new google.maps.Marker({
                position: myCenter,
            });

            marker.setMap(map);
        }

        google.maps.event.addDomListener(window, 'load', initialize);
                    </script>
                </div>
            </div>    
        </section>--> 

<!--        <footer class="-bg-footer" id="footer">
            <div class="container-fluid">
                <div class="row footer-align">
                    <div class="col-md-4 col-sm-4">
                        <h5>Northstreet</h5>
                        <hr class="hr-foot">
                        <div class="footer-items">
                            <p class="footer">
                                The EU-27 has an estimated 1.6m businesses involved in 'accommodation and food services', more than 75% of which are small and medium enterprises.
                            </p>
                            <ul class="social-networks">
                                <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
                                <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <h5>Our contact</h5>
                        <hr class="hr-foot">
                        <div class="footer-items">
                            <address>
                                22, Northstreet Road
                                <br>
                                Melbourne, Victoria
                                <br>
                                Australia
                                <br>
                                <i class="fa fa-phone address"></i> +091 1234 5678
                                <br>
                                <i class="fa fa-fax address"></i> +876 5432 1234
                                <br>
                                <i class="fa fa-envelope address"></i> <a href="mailto:northstreet@gmail.com">northstreet@gmail.com</a>
                            </address>
                        </div>
                    </div>
                    <div class="col-md-4 col-sm-4">
                        <h5>Open hours</h5>
                        <hr class="hr-foot">
                        <div class="footer-items">
                            <ul>
                                <li>Mon-Fri: 08:00-22:00</li>
                                <li>Sat    : 09:00-22:00</li>
                                <li>Sun    : 09:00-16:00</li> 
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <a class="to-top" href="#myPage" title="toTop">
                <i class="fa fa-chevron-up"></i>
            </a>
        </footer>
        <div class="footer-copyright">
            <p>&copy 2020 Copyright by  <a href="http://www.antenagames.com" target="blank">antenagames.com</a></p>
        </div>
        <script src="script.js"></script>-->
<!--    </body>-->
</html>
