<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/page.css">
<link rel="stylesheet" href="css/pop.css">

<script>
	function prev() {
		window.history.back();
	}
</script>
</head>
<body>
	<%
		String fruit1 = request.getParameter("fruit1");
		System.out.println(fruit1+"fruit1");
		String fruit2 = request.getParameter("fruit2");
		System.out.println(fruit1+"fruit2");

	%>
	<form action="resultPage.jsp" method="get">
		<input type="hidden" name="fruit1"
			value="<%=fruit1%>"> <input
			type="hidden" name="fruit2"
			value="<%=fruit2%>">

		<section id="pop-container">

			<input type="radio" name="pop" value="0" required>타피오카펄<br>
			<div class="pop"></div>
			<div class="pop"></div>

			<br> <input type="radio" name="pop" value="1" required>치즈
			타피오카펄<br>
			<div class="pop" style="background-color: #FAED7D;"></div>
			<div class="pop" style="background-color: #FAED7D;"></div>

			<br> <input type="radio" name="pop" value="2" required>무지개
			타피오카펄<br>
			<div class="pop" style="background-color: #F15F5F;"></div>
			<div class="pop" style="background-color: #FAF4C0;"></div>

			<br> <input type="radio" name="pop" value="3" required>젤리
			펄<br>
			<div class="pop" style="background-color: #F6F6F6;"></div>
			<div class="pop" style="background-color: #F6F6F6;"></div>
			<br>

		</section>

		<button type="button" class="go-button" onclick="prev()">Prev</button>

		<button class="go-button" onclick="go()">GO</button>

	</form>
</body>
</html>
