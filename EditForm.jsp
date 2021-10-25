<%-- 
    Document   : EditForm
    Created on : 30 Sep, 2021, 3:57:11 PM
    Author     : yasee
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.student"%>
<%@page import="Model.Registration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
    </head>
    <style>
        td input{
            display:block;
        }
        .jumbotron{
            border-style: solid;
            border-width: 2px;
            background-color: rgba(0,0,0,0.3) ;
            border-radius: 15px;
            padding: 40px;
            width: 400px;
            margin: auto;
            
        }
        body
            {
               background-image: linear-gradient(to top, #fad0c4 0%, #ffd1ff 100%);
               background-size: cover;
            }
           form-group
           {
               color: white;
           }
    </style>
    <body>
        <%@include file="header.jsp"%>
    <center>
        <% if (session.getAttribute("uname") != null) {
                Registration reg = new Registration(session);
                student s = reg.getInfo();%>
        <font color="black" size="5"><br>
        <h2> Edit Profile</h2>
        </font>
        <form action='register' method='POST'>
            <div class="container ">
                <div class="jumbotron">
                    <div class="form-group ">
                        <label >Name</label>
                        <input type="text" class="form-control"  name="name" value="<%=s.getName()%>">
                    </div>
                    <div class="form-group ">
                        <label >Phone Number</label>
                        <input type="number" class="form-control"  name="phone" value="<%=s.getphone()%>">
                    </div>
                    <div class="form-group ">
                        <label >Email</label>
                        <input type="email" class="form-control"  name="email" value="<%=s.getemail()%>" readonly="readonly">
                    </div>
                    <button type="submit" class="btn btn-primary" name="submit">Update</button>
                </div>
            </div>
        </form>
        <%}%> 
    </center>
    <%@include file="footer.jsp"%>
</body>
</html>
