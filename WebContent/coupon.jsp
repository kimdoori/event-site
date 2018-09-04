<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠폰</title>
<link rel="stylesheet" href="css/coupon.css">
</head>
<body>


  <div class="box">
        <div class='inner'>
        <h1>JUJU New menu free coupon</h1>
        <div class='info clearfix'>
            <div class='wp'>Tickets<h2>1</h2></div>
            <div class='wp'>Code<h2><%=UUID.randomUUID().toString().replaceAll("-", "") %></h2></div>
        </div>
        <div class='total clearfix'>
            <h2>Phone : <p><%=request.getParameter("phone") %></p></h2>
        </div>
        </div>
    </div>

</body>
</html>
