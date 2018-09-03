<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<title>이벤트 사이트</title>

<style>
body, html {
	width: 100%;
	height: 100%;
	margin: 0px;
	padding: 0px;
	font-family: "Roboto", sans-serif;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: grayscale;
}

.main-container {
	border: 2px solid black;
	border-radius: 2em;
	width: 90%;
	height: 50%;
	padding: 3em;
	display: inline-block;
	margin: 0 auto;
	text-align: center;
}
</style>
</head>
<body>

	<%
		String contentpage = request.getParameter("CONTENTPAGE");
	%>




	<jsp:include page="<%=contentpage%>"></jsp:include>



</body>
</html>
