<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset ="UTF-8">
<title>이벤트 사이트</title>

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
	
	<td width=100% valign="top">
		<jsp:include page="<%= contentpage %>"></jsp:include>
	</td>
	
	
</tr>

</table>



</body>
</html>
