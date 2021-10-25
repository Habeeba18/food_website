<%-- 
    Document   : search 3
    Created on : 7 Oct, 2021, 10:26:15 PM
    Author     : yasee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <style>
            body {
               background-image: linear-gradient(to right,#cb2d3e,#ef473a);
            }

            .searchBox {
                position: absolute;
                top: 10%;
                left: 30%;
                transform:  translate(-50%,50%);
                background: #2f3640;
                height: 40px;
                border-radius: 40px;
                padding: 10px;

            }

            .searchBox:hover > .searchInput {
                width: 240px;
                padding: 0 6px;
            }

            .searchBox:hover > .searchButton {
                background: white;
                color : #2f3640;
            }

            .searchButton {
                color: white;
                float: right;
                width: 40px;
                height: 40px;
                border-radius: 50%;
                background: #2f3640;
                display: flex;
                justify-content: center;
                align-items: center;
                transition: 0.4s;
            }

            .searchInput {
                border:none;
                background: none;
                outline:none;
                float:right;
                padding: 0;
                color: white;
                font-size: 16px;
                transition: 0.4s;
                line-height: 40px;
                width: 0px;

            }

            @media screen and (max-width: 620px) {
                .searchBox:hover > .searchInput {
                    width: 150px;
                    padding: 0 6px;
                }
            }
        </style>
        <div class="searchBox">
        
             <input class="searchInput"type="text" name="" placeholder="Search">
            <button class="searchButton" href="#">
                <i class="material-icons">
                </i>
                <img src="https://img.icons8.com/ios/20/000000/search--v5.png"/>
            </button>
              </form>
        </div>
         
</html>
