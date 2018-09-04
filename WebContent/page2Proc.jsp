<%@page import="model.Fruit"%>
<%@page import="database.FruitDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/button.css">
<link rel="stylesheet" href="css/resultPage.css">
<link
	href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:700'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/page.css">
<link rel="stylesheet" href="css/blur.css">


<script src="js/page2.js"></script>
<script>
	function prev() {
		window.history.back();
	}
</script>

</head>
<body>
	<%
		Fruit fruit = FruitDAO.getInstance().select();
		String[] colorStr = fruit.getColor();
		for (int i = 0; i < colorStr.length; i++) {
			out.println("<input type='hidden' class='color' value='"+colorStr[i]+"'></input>");
		}
	%>

	<section id="fruit-button-container">

		<%
			String[] fruitStr = fruit.getFruit();
			for (int i = 0; i < fruitStr.length; i++) {
				out.println("<a id = '" + i + "' class='fruit'>" + fruitStr[i] + "</a>");
			}
		%>


	</section>

	<section>

		<div id="container">
			<div id="beaker">
				<div id="liquid-top"></div>
				<div id="liquid">
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

	</section>

	<button class="page-button" onclick="go()">GO</button>
	<button class="page-button" onclick="prev()">Prev</button>

</body>
</html>