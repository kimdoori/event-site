<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset ="UTF-8">
<title>이벤트 사이트</title>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link href="https://fonts.googleapis.com/css?family=Bangers" rel="stylesheet">
<style>
body,html{
	width:100%;
	height:100%;
	margin:0px;
	padding:0px;
  	font-family: "Roboto", sans-serif;
  	-webkit-font-smoothing: antialiased;
  	-moz-osx-font-smoothing: grayscale;      
}
#main{
	
}
</style>
</head>
<body>

<%
	String contentpage = request.getParameter("CONTENTPAGE");

%>


<table id="main" width="100%"  border="0" cellspacing="0" >
<tr>
	<td>
		<jsp:include page="top.jsp" flush="false"/>

	</td>
</tr> 
<tr height="850px" >
	
	<td width=85% valign="top">
		<jsp:include page="<%= contentpage %>"></jsp:include>
	</td>
	
	
</tr>

</table>



</body>
</html>
