<%@page import="java.util.UUID"%>
<%@page import="model.Fruit"%>
<%@page import="database.FruitDAO"%>
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
	<section>

		<%
			Fruit fruit = FruitDAO.getInstance().select();

			int fruit1 = Integer.valueOf(request.getParameter("fruit1"));
			int fruit2 = Integer.valueOf(request.getParameter("fruit2"));
			int pop = Integer.valueOf(request.getParameter("pop"));

			String[] colorStr = fruit.getColor();
			int[] index = fruit.getFruit_index();

			int count = -1;

			if(index[0]==fruit1 || index[1]==fruit1)
				count++;
				
			if(index[0]==fruit2 || index[1]==fruit2)
				count++;
			
			if(pop==2)
				count++;

			if (count >= 2)
				out.println("<h2>성공!</h2>");
			else
				out.println("<h2>실패</h2>");
		%>


	</section>
	<div class="container">

		<div class="borderbox">
			<div class="glass">
				<div class="inner"
					style="background:linear-gradient(to bottom, <%=colorStr[fruit1]%> 0%, <%=colorStr[fruit2]%> 100%);background-color:<%=fruit2%>;">
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

	<section>

		<%
			if (count >= 2) {
		%>
		쿠폰번호
		<%
			if (session.getAttribute("coupon") != null)
					out.println(session.getAttribute("coupon"));
				else {
					String code = UUID.randomUUID().toString().replaceAll("-", "");
					session.setAttribute("coupon", code);
				}
		%>
		<br>
		사용 기한 2018.09.01 ~ 2018.11.28

		<%
			}
		%>




	</section>


</body>
</html>