<%-- 
    Document   : Restaurants
    Created on : 30 Sep, 2021, 3:57:30 PM
    Author     : yasee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Categories Page</title>
        <style>
            /*<!-- categories-->*/

            .categories
            {
                background-color: black;
                margin:40px 0;
            }
            .small-container
            {
                max-width: 1080px;
                margin:auto;
                padding-left: 25px;
                padding-right: 25px;
            }

            .title{
                text-align: center;
                margin: 0 auto 80px;
                position: relative;
                line-height: 60px;
                
                background-color: #85FFBD;
                background-image: linear-gradient(45deg, #85FFBD 0%, #FFFB7D 100%);

            }

            .title::after{
                content: '';
                background: orangered;
                width: 100px;
                height: 5px;
                border-radius: 15px;
                position: absolute;
                bottom: 0;
                left: 50%;
                transform: translateX(-50%);
            }
            .row{
                display: flex;
                align-items:center;
                flex-wrap: wrap;
                justify-content:space-around;
            }

            .categories .col-3{
                flex-basis: 30%;
                min-width: 250px;
                margin-bottom: 0px;
                text-align: center;
                padding: 40px 10px;
                /*box-shadow: 0 0 20px 0px rgba(0,0,0,0.1);*/
                cursor: pointer;
                transition: transform 0.5s;

            }

            .categories .col-3 img
            {
                width: 150px;
                height:150px;
                margin-top: 20px;
                border-radius: 50%;
            }

            .categories .col-3:hover
            {
                transform: translateY(-10px);
                background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(148,187,233,1) 100%);
            }

        </style>
    </head>
    <body>
        <div class="categories">
            <div class="small-container">
                <h2 class="title">Restaurants near you</h2>
                <div class="row">
                    <div class="col-3">
                        <a href="Display.jsp?food=pizza"> <img src="images/dominos_1.jpeg"><br>Dominos</a>
                    </div>
                    <div class="col-3">
                        <a href="Display.jsp?food=MCDonalds"> <img src="images/macsonalds.jfif"><br>MCDonalds</a>
                    </div>
                    <div class="col-3">
                        <a href="Display.jsp?food=KFC"> <img src="images/kfc.jpeg"><br>KFC</a>
                    </div>
                    <div class="col-3">
                        <a href="Display.jsp?food=DUNKINDONUTS"> <img src="images/dunkin donuts.png"><br>DUNKINDONUTS</a>
                    </div>
                    <div class="col-3">
                        <a href="Display.jsp?food=taco"> <img src="images/taco bell.png"><br>Taco bell</a>
                    </div>
                    <div class="col-3">
                        <a href="Display.jsp?food=recipe"> <img src="images/Recipes.png"><br>Recipes</a>
                    </div>
                    <div class="col-3">
                        <a href="Display.jsp?food=kfc"> <img src="images/baskin robbins.png" ><br>Baskin Robbins</a>
                    </div>
                    <div class="col-3">
                        <a href="Display.jsp?food=cafe"> <img src="images/coffe.png"><br>Cafe Coffe Day</a>
                    </div>
                    <div class="col-3">   
                        <a href="Display.jsp?food=niki"> <img src="images/raghavendra.jfif"><br>Raghavendra Shavige Hotel</a>
                    </div>
                    <div class="col-3">
                        <a href="Display.jsp?food=hungry"> <img src="images/hungry kya.png"><br>Hungry kya</a>
                    </div>
                    <div class="col-3">
                        <a href="Display.jsp?food=kfc"> <img src="images/good foodd.png"><br>Good Food</a>
                    </div>
                    <div class="col-3">
                        <a href="Display.jsp?food=benne"> <img src="images/benne dose.jfif"><br>Sagar Benne dosa</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

