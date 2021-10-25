<%-- 
    Document   : cate_scroll
    Created on : 18 Oct, 2021, 4:33:09 PM
    Author     : yasee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Lorem ipsum</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&display=swap" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Abril+Fatface&family=Inter:wght@100;200;300;500;600;700;800&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="style.css">
    </head>
    <script>
        Element.prototype.removeAttributes = function (...attrs) {
        attrs.forEach((attr) = > this.removeAttribute(attr));
        };
        function r(num) {
        return Math.round((num + Number.EPSILON) * 100) / 100;
        }

//remove svg whitespace
        function svgRemoveWhitespace(svg) {
        let box = svg.getBBox(),
                viewBox = [r(box.x), r(box.y), r(box.width), r(box.height)].join(" ");
        svg.setAttribute("viewBox", viewBox);
        svg.removeAttributes("width", "height"); //optional
        // showNewViewbox(svg, viewBox);
        }

//shows the new viewbox above the svg
        function showNewViewbox(el, result) {
        let output = document.createElement("div");
        output.classList.add("output");
        output.textContent = result;
        el.insertAdjacentElement("beforebegin", output);
        }

        const svgs = document.querySelectorAll("svg");
        svgs.forEach((svg) = > svgRemoveWhitespace(svg));
//----------remove whitespace around svgs-----------------//

// make the carousel scrollable
        const carousel = document.querySelector(".products-carousel");
        carousel.addEventListener("wheel", (evt) = > {
        evt.preventDefault();
        carousel.scrollLeft += evt.deltaY;
        });
    </script>
    <style>
        * {
            margin: 0;
            padding: 0;
            -webkit-box-sizing: border-box;
            box-sizing: border-box;
        }

        html,
        body {
            height: 100vh;
            font-family: "Inter", sans-serif;
        }

        body {
            overflow-x: hidden;
        }
/*
        ul {
            list-style: none;
        }

        a {
            text-decoration: none;
        }

        h1 {
            font-family: "Abril Fatface", cursive;
        }

        .mobile-nav {
            display: none;
        }

        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            height: 100vh;
            width: 20vw;
            padding-left: 4.4rem;
        }

        .navbar .header {
            margin: 4rem 0 4.5rem 0;
        }

        .navbar .header .brand {
            font-size: 2.5rem;
            font-weight: 400;
            line-height: 2.7rem;
        }

        .navbar .nav-links li {
            margin-bottom: 3.4rem;
            position: relative;
            height: 1.3rem;
        }

        .navbar .nav-links li a {
            position: absolute;
            color: #818181;
            font-size: 1.1rem;
            font-weight: 300;
            -webkit-transition: all 0.3s ease;
            transition: all 0.3s ease;
        }

        .navbar .nav-links li a:hover {
            color: black;
            font-size: 1.5rem;
        }

        .navbar .nav-links li:nth-child(1) a {
            -webkit-text-decoration: line-through solid 2px #ff4e4e;
            text-decoration: line-through solid 2px #ff4e4e;
        }

        .navbar .cart-button {
            display: inline-block;
            background-color: #ff4e4e;
            padding: 1.2rem 3.8rem;
            border-radius: 40px;
            color: white;
            font-size: 1.1rem;
            margin-top: 2.3rem;
            -webkit-transition: all 0.3s ease;
            transition: all 0.3s ease;
        }

        .navbar .cart-button:hover {
            -webkit-box-shadow: 0 0 15px #ff4e4e;
            box-shadow: 0 0 15px #ff4e4e;
        }*/

        .content {
            margin-left: 20vw;
            padding-top: 9rem;
            padding-bottom: 2rem;
        }
/*
        .content .hero-container {
            width: 100%;
            padding-left: 3.3rem;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
        }

        .content .hero-container h1 {
            width: 67.5%;
            font-size: 5rem;
            font-weight: 400;
        }

        .content .hero-container .description {
            padding-top: 1rem;
            width: 20%;
        }

        .content .hero-container .description .description-text {
            color: #818181;
            font-size: 1.1rem;
            line-height: 2rem;
            font-weight: 300;
        }

        .content .hero-container .description .description-line {
            background-color: #ff4e4e;
            height: 3px;
            width: 4rem;
            margin-top: 1.5rem;
        }*/

        .content .products-carousel {
            overflow-x: hidden;
            width: 100%;
            display: -webkit-box;
            display: -ms-flexbox;
            display: flex;
            padding: 7rem 0 7rem 3.3rem;
        }

        .content .products-carousel .product-container {
            padding: 2rem;
            margin-right: 1.5rem;
            border-radius: 20px;
            -webkit-box-shadow: 20px 20px 50px rgba(0, 0, 0, 0.2);
            box-shadow: 20px 20px 50px rgba(0, 0, 0, 0.2);
            background-color: white;
        }

        .content .products-carousel .product-container .image {
            width: 9rem;
            height: 9rem;
            border-radius: 50%;
            -o-object-fit: cover;
            object-fit: cover;
            -o-object-position: center;
            object-position: center;
        }

        .content .products-carousel .product-container .product-name {
            font-weight: 800;
            font-size: 1.1rem;
            text-align: center;
            white-space: nowrap;
            margin-top: 1.7rem;
        }

/*        .content .mobile-description {
            display: none;
        }*/

        @media only screen and (max-width: 1024px) {
            .navbar {
                padding-left: 2.5rem;
            }
/*            .navbar .header .brand {
                font-size: 2rem;
            }
            .navbar .nav-links li {
                margin-bottom: 3rem;
            }
            .navbar .cart-button {
                margin-top: 1.5rem;
                padding: 1rem 2rem;
            }
            .content .hero-container h1 {
                width: 60%;
                font-size: 3rem;
            }
            .content .hero-container .description {
                width: 35%;
            }*/
            .content .products-carousel {
                overflow-x: scroll;
            }
        }

/*        @media only screen and (max-width: 580px) {
            .navbar {
                width: 50vw;
                background-color: white;
                -webkit-box-shadow: 0 20px 15px rgba(0, 0, 0, 0.2);
                box-shadow: 0 20px 15px rgba(0, 0, 0, 0.2);
                padding-left: 2.5rem;
                padding-top: 6rem;
                margin-top: 7rem;
                -webkit-transform: translateX(-100%);
                transform: translateX(-100%);
                -webkit-transition: -webkit-transform 0.3s ease-in;
                transition: -webkit-transform 0.3s ease-in;
                transition: transform 0.3s ease-in;
                transition: transform 0.3s ease-in, -webkit-transform 0.3s ease-in;
            }
            .navbar .header,
            .navbar .cart-button {
                display: none;
            }
            .navbar .nav-links li {
                opacity: 0;
            }
            .mobile-nav {
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                -webkit-box-pack: justify;
                -ms-flex-pack: justify;
                justify-content: space-between;
                -webkit-box-align: center;
                -ms-flex-align: center;
                align-items: center;
                padding: 2.5rem;
            }
            .mobile-nav .hamburger {
                height: 1.5rem;
                width: 2rem;
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                -webkit-box-orient: vertical;
                -webkit-box-direction: normal;
                -ms-flex-direction: column;
                flex-direction: column;
                -webkit-box-pack: justify;
                -ms-flex-pack: justify;
                justify-content: space-between;
            }
            .mobile-nav .hamburger .line1,
            .mobile-nav .hamburger .line2,
            .mobile-nav .hamburger .line3 {
                width: 100%;
                height: 3px;
                background-color: #ff4e4e;
                -webkit-transition: width 0.3s ease, -webkit-transform 0.3s ease;
                transition: width 0.3s ease, -webkit-transform 0.3s ease;
                transition: transform 0.3s ease, width 0.3s ease;
                transition: transform 0.3s ease, width 0.3s ease,
                    -webkit-transform 0.3s ease;
            }
            .mobile-nav .hamburger .line1 {
                width: 65%;
            }
            .mobile-nav .hamburger .line3 {
                width: 85%;
            }
            .mobile-nav .brand {
                font-size: 1.8rem;
                font-weight: 400;
            }
            .mobile-nav .cart-icon {
                padding-top: 0.5rem;
            }
            .mobile-nav .cart-icon svg {
                height: 1.6rem;
            }
            .mobile-nav .cart-icon svg path {
                fill: #ff4e4e;
            }
            .nav-active {
                -webkit-transform: translateX(0%);
                transform: translateX(0%);
            }*/
            .content {
                padding-top: 0;
                margin-left: 0;
            }
/*            .content .hero-container {
                padding: 1.3rem 2.5rem 1rem 2.5rem;
            }
            .content .hero-container h1 {
                font-size: 2rem;
                width: 100%;
            }
            .content .hero-container .description {
                display: none;
            }*/
            .content .products-carousel {
                -ms-flex-wrap: wrap;
                flex-wrap: wrap;
                overflow-x: visible;
                overflow-y: visible;
                padding: 2rem 2.5rem;
                -webkit-box-pack: justify;
                -ms-flex-pack: justify;
                justify-content: space-evenly;
            }
            .content .products-carousel .product-container {
                padding: 1.4rem 1.4rem 1.8rem 1.4rem;
                margin-right: 0;
                margin-bottom: 1.3rem;
            }
            .content .products-carousel .product-container .image {
                height: 7rem;
                width: 7rem;
            }
            .content .products-carousel .product-container .product-name {
                font-size: 0.8rem;
            }
            .content .mobile-description {
                display: block;
                padding: 0 2.5rem;
            }
            .content .mobile-description .description-text {
                color: #818181;
                font-size: 1.1rem;
                font-weight: 300;
            }
            .content .mobile-description .description-line {
                height: 3px;
                width: 5rem;
                margin-top: 2rem;
                background-color: #ff4e4e;
            }
            .toggle .hamburger .line1 {
                width: 2rem;
                -webkit-transform: rotate(-45deg) translateY(0.95rem);
                transform: rotate(-45deg) translateY(0.95rem);
            }
            .toggle .hamburger .line2 {
                opacity: 0;
            }
            .toggle .hamburger .line3 {
                width: 2rem;
                -webkit-transform: rotate(45deg) translateY(-0.9rem);
                transform: rotate(45deg) translateY(-0.9rem);
            }
            }

        @media only screen and (max-width: 440px) {
            .content .products-carousel {
                justify-content: space-between;
            }
        }

/*        @-webkit-keyframes navLinkFade {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes navLinkFade {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }*/
        /*# sourceMappingURL=style.css.map */

    </style>
    <body>
<!--        <div class="mobile-nav">
            <div class="hamburger">
                <div class="line1"></div>
                <div class="line2"></div>
                <div class="line3"></div>
            </div>
            <h1 class="brand">Lorem</h1>
            <a class="cart-icon" href="#">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24">
                <path d="M24 3l-.743 2h-1.929l-3.474 12h-13.239l-4.615-11h16.812l-.564 2h-13.24l2.937 7h10.428l3.432-12h4.195zm-15.5 15c-.828 0-1.5.672-1.5 1.5 0 .829.672 1.5 1.5 1.5s1.5-.671 1.5-1.5c0-.828-.672-1.5-1.5-1.5zm6.9-7-1.9 7c-.828 0-1.5.671-1.5 1.5s.672 1.5 1.5 1.5 1.5-.671 1.5-1.5c0-.828-.672-1.5-1.5-1.5z" />
                </svg>
            </a>
        </div>-->
        <!--        <div class="navbar">
                    <div class="header">
                        <h1 class="brand">Lorem</h1>
                        <h1 class="brand">Ipsum</h1>
                    </div>
                    <ul class="nav-links">
                        <li><a href="#">About</a></li>
                        <li><a href="#">Services</a></li>
                        <li><a href="#">Cuisine</a></li>
                        <li><a href="#">Gallery</a></li>
                        <li><a href="#">Contact</a></li>
                        <li><a href="#">Book</a></li>
                    </ul>
                    <a class="cart-button" href="#">Cart</a>
                </div>-->
        <section class="content">
            <!--            <div class="hero-container">
                            <h1>What are you <br />having for Lunch?</h1>
                            <div class="description">
                                <p class="description-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio vitae minus.</p>
                                <div class="description-line"></div>
                            </div>
                        </div>-->
            <div class="products-carousel">
                <div class="product-container">
                    <img src="https://images.unsplash.com/photo-1565299585323-38d6b0865b47?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2028&q=80" alt="Mexican Taco" class="image">
                    <p class="product-name">Mexican Taco</p>
                </div>
                <div class="product-container">
                    <img src="https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=714&q=80" alt="Farmhouse Pizza" class="image">
                    <p class="product-name">Farmhouse Pizza</p>
                </div>
                <div class="product-container">
                    <img src="https://images.unsplash.com/photo-1565299507177-b0ac66763828?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=664&q=80" alt="Chicken Burger" class="image">
                    <p class="product-name">Chicken Burger</p>
                </div>
                <div class="product-container">
                    <img src="https://images.unsplash.com/photo-1568289801407-a1e2b4809aec?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80" alt="Loaded Nachos" class="image">
                    <p class="product-name">Loaded Nachos</p>
                </div>
                <div class="product-container">
                    <img src="https://images.unsplash.com/photo-1600490036275-35f5f1656861?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80" alt="Hakka Noodles" class="image">
                    <p class="product-name">Hakka Noodles</p>
                </div>
                <div class="product-container">
                    <img src="https://images.unsplash.com/photo-1565299585323-38d6b0865b47?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2028&q=80" alt="Mexican Taco" class="image">
                    <p class="product-name">Mexican Taco</p>
                </div>
                <div class="product-container">
                    <img src="https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=714&q=80" alt="Farmhouse Pizza" class="image">
                    <p class="product-name">Farmhouse Pizza</p>
                </div>
            </div>
            <!--            <div class="mobile-description">
                            <p class="description-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Distinctio vitae minus.</p>
                            <div class="description-line"></div>
                        </div>-->
        </section>
        <script src="./app.js"></script>
    </body>

</html>
