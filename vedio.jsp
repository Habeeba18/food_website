<%-- 
    Document   : vedio
    Created on : 15 Oct, 2021, 1:34:01 PM
    Author     : yasee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BG Vedio</title>
        <link rel = "stylesheet" href = "style.css">
    </head>
    <body>


    </body>
    <style>

        body, html {
            height: 100%;
        }

        #Container {
            width: 100%;
            height: 100%;
            position: relative;
            overflow: hidden;
        }

        #Container video {
            position: absolute;
            left: 50%;
            top: 50%;
            /* The following will size the video to fit the full container. Not necessary, just nice.*/
            min-width: 100%;
            min-height: 100%;
            -webkit-transform: translate(-50%,-50%);
            -moz-transform: translate(-50%,-50%);
            -ms-transform: translate(-50%,-50%);
            transform: translate(-50%,-50%);
            z-index: 0;
        }

        #Container div {
            position: relative;
            z-index: 1;
        }
    </style>
    <div id="Container">
        <video src="images/pine.mp4" class="video-bg" autoplay muted loop ></video>
        <div></div>
    </div>

</div>
</html>
