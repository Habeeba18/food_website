<%-- 
    Document   : Cart
    Created on : 30 Sep, 2021, 3:56:27 PM
    Author     : yasee
--%>

<%@page import="Model.Cart"%>
<%@page contentType="text/html"%>
<%@page import="Model.Registration"%>
<%@page import="java.util.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Add To Cart</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

        <style>
            .container{
                max-width: 1500px;
                margin:auto;
                padding-left: 25px;
                padding-right: 25px;
            }
            .table-responsive {
                margin: 30px 0;
            }
            .table-wrapper {
                background-image: linear-gradient( 103.3deg,  rgba(252,225,208,1) 30%, rgba(255,173,214,1) 55.7%, rgba(162,186,245,1) 81.8% );
                background: #fff;
                padding: 20px 25px;
                border-radius: 3px;
                min-width: 1000px;
                box-shadow: 0 1px 1px rgba(0,0,0,.05);
            }
            .table-title {        
                padding-bottom: 15px;
                background: #E80505;
                color: #fff;
                padding: 16px 30px;
                min-width: 100%;
                margin: -20px -25px 10px;
                border-radius: 3px 3px 0 0;
            }
            .table-title h2 {
                margin: 5px 0 0;
                font-size: 24px;
            }
            table.table tr th, table.table tr td {
                border-color: #e9e9e9;
                padding: 12px 15px;
                vertical-align: middle;
            }
            table.table tr th:first-child {
                width: 60px;
            }
            table.table tr th:last-child {
                width: 100px;
            }
            table.table-striped tbody tr:nth-of-type(odd) {
                background-color: #fcfcfc;
            }
            table.table-striped.table-hover tbody tr:hover {
                background: #f5f5f5;
            }
            table.table th i {
                font-size: 13px;
                margin: 0 5px;
                cursor: pointer;
            }	
            table.table td:last-child i {
                opacity: 0.9;
                font-size: 22px;
                margin: 0 5px;
            }
            table.table td a {
                font-weight: bold;
                color: #566787;
                display: inline-block;
                text-decoration: none;
                outline: none !important;
            }
            table.table td a:hover {
                color: #2196F3;
            }
            table.table td a.edit {
                color: #FFC107;
            }
            table.table td a.delete {
                color: white;
            }
            table.table td i {
                font-size: 19px;
            }
            table.table .avatar {
                border-radius: 50%;
                vertical-align: middle;
                margin-right: 10px;
            }
            .cost{
                float: right;
                font-size: 25px;
                color: black;
                padding-top: 20px;
                padding-right: 300px;
            }
            .btn btn-warning
            {


                margin-top: 17px
            }
            body{
                background-color: burlywood;
            }
        </style>
    </head>
    <body>
        <%@include file="header.jsp"%> 
        <div class="header">
            <div class="container">

            </div>
        </div>
        <% if (session.getAttribute("uname") != null) {%>
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-4">
                                <h2>Manage <b>Cart Products</b></h2>
                            </div>
                        </div>
                    </div>  
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Image</th>
                                <th>Product Name</th>
                                <th>Product cost</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% int tcost = 0;
                                Registration s1 = new Registration(session);
                                ArrayList<Cart> ar = s1.getcartinfo();
                                Iterator<Cart> itr = ar.iterator();
                                while (itr.hasNext()) {
                                    Cart s = itr.next();
                                    tcost = tcost + Integer.parseInt(s.getC_cost());
                            %> 
                            <tr>
                                <td><img src="images/<%=s.getC_image()%>" width="100px" height="100px"></td>
                                <td><%=s.getC_name()%></td>
                                <td> ₹<%=s.getC_cost()%></td>
                                <td>
                                    <form action="addtocart" method="post">
                                        <input type="hidden" name="cid" value="<%=s.getC_id()%>"/>
                                        <button type="submit" name="delete">Delete</button>
                                    </form>
                                </td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>
                </div>
            </div>        
        </div>
        <div class="cost">
            Total:  ₹<%=tcost%>
        </div>
    <center>
        <a href="Booking.jsp"><button type="button" class="btn btn-warning" style="margin-top:17px"> Buy now </button></a>
    </center>

    <%}%>
    <br><br><br><br><br><br>

    <%@include file="footer.jsp"%>

</body>
</html>



