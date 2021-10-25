<%-- 
    Document   : demo_3
    Created on : 24 Oct, 2021, 5:18:55 PM
    Author     : yasee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>complete responsive food website design tutorial </title>

        <!-- font awesome cdn link  -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

        <!-- custom css file link  -->
        <link rel="stylesheet" href="css/style.css">

    </head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Nunito:wght@200;300;400;600;700&display=swap');

        :root{
            --red:#ff3838;
        }

        *{
            font-family: 'Nunito', sans-serif;
            margin:0; padding:0;
            box-sizing: border-box;
            outline: none; border:none;
            text-decoration: none;
            text-transform: capitalize;
/*            transition:all .2s linear;*/
        }
        html{
            font-size: 62.5%;
            overflow-x: hidden;
            scroll-behavior: smooth;
            scroll-padding-top: 6rem;
        }

        body{
            background:#f7f7f7;
        }

        section{
            padding:10rem 9%;
        }
        .home{
            display: flex;
            flex-wrap: wrap;
            gap:1rem;
            min-height: 100vh;
            align-items: center;
            background:url(../images/home-bg.jpg) no-repeat;
            background-size: cover;
            background-position: center;
        }

        .home .content{
            flex:1 1 40rem;
            padding-top: 6.5rem;
        }

        .home .image{
            flex:1 1 40rem;
        }

        .home .image img{
            width:70%;
            padding:1rem;
            animation:float 3s linear infinite;
        }

        @keyframes float{
            0%, 100%{
                transform: translateY(0rem);
            }
            50%{
                transform: translateY(3rem);
            }
        }

        .home .content h3{
            font-size: 5rem;
            color:#333;
        }

        .home .content p{
            font-size: 1.7rem;
            color:#666;
            padding:1rem 0;
        }

    </style>
    <body>
        <section class="home" id="home">

            <div class="content">
                <h3>food made with love</h3>
                <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Voluptas accusamus tempore temporibus rem amet laudantium animi optio voluptatum. Natus obcaecati unde porro nostrum ipsam itaque impedit incidunt rem quisquam eos!</p>
                <a href="#" class="btn">order now</a>
            </div>
            <div class="image">
                <img src="images/home-img-removebg.png" alt="">
            </div>

        </section>
    </body>
</html>
