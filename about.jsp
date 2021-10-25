<%-- 
    Document   : about
    Created on : 15 Oct, 2021, 11:20:19 AM
    Author     : yasee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>About us</title>
        <link
            rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
            integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
            crossorigin="anonymous"
            referrerpolicy="no-referrer"
            />
        <link rel="stylesheet" href="style.css" />
    </head>
    <style>
        #about {
            padding: 50px 0;
            background: #f5f5f7;
        }

        .about-wrapper {
            display: flex;
            flex-wrap: wrap;
        }

        #about h2 {
            font-size: 2.3rem;
        }

        #about p {
            font-size: 1.2rem;
            color: #555;
        }

        #about .small {
            font-size: 1.2rem;
            color: #666;
            font-weight: 600;
        }

        .about-img {
            flex: 1 1 400px;
            padding: 30px;
            transform: translateX(200%);
            animation: about-img-animation 2s ease-in-out forwards;
        }

        @keyframes about-img-animation {
            100% {
                transform: translate(0);
            }
        }

        .about-text {
            flex: 1 1 400px;
            padding: 30px;
            margin: auto;
            transform: translate(-100%);
            animation: about-text-animation 2s ease-in-out forwards;
        }

        @keyframes about-text-animation {
            100% {
                transform: translate(0);
            }
        }

        .about-img img {
            display: block;
            height: 400px;
            max-width: 100%;
            margin: auto;
            object-fit: cover;
            object-position: right;
        }
    </style>
    <body>
     <li><a href="#about">About</a></li> 
    <section id="about">
        <div class="about-wrapper container">
            <div class="about-text">
                <p class="small">About Us</p>
                <h2>We've been making healthy food last for 10 years</h2>
                <p>
                    Lorem, ipsum dolor sit amet consectetur adipisicing elit. Esse ab
                    eos omnis, nobis dignissimos perferendis et officia architecto,
                    fugiat possimus eaque qui ullam excepturi suscipit aliquid optio,
                    maiores praesentium soluta alias asperiores saepe commodi
                    consequatur? Perferendis est placeat facere aspernatur!
                </p>
            </div>
            <div class="about-img">
                <img src="https://i.postimg.cc/mgpwzmx9/about-photo.jpg" alt="food" />
            </div>
        </div>
    </section>
