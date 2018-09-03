<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>결과</title>
<link rel="stylesheet" href="css/result.css">
<link rel="stylesheet" href="css/button.css">

<link
	href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:700'
	rel='stylesheet' type='text/css'>

</head>
<body>
	<%
		String fruit1 = request.getParameter("fruit1");
		String fruit2 = request.getParameter("fruit2");
	%>
	<section>
	
	<h2>성공! </h2>
	
	</section>
	<div class="container">

		<div class="borderbox">
			<div class="glass">
				<div class="inner"
					style="background:linear-gradient(to bottom, <%=fruit1%> 0%, <%=fruit2%> 100%);background-color:<%=fruit2%>;">
					<div class="bubble"></div>
					<div class="bubble"></div>
					<div class="bubble"></div>
					<div class="bubble"></div>
					<div class="bubble"></div>
					<div class="bubble"></div>
					<div class="bubble"></div>
					<div class="bubble"></div>
					<div class="bubble"></div>
					<div class="bubble"></div>
					<div class="bubble"></div>
					<div class="bubble"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>