<%@page import="model.Pop"%>
<%@page import="database.FruitDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/page.css">
<link rel="stylesheet" href="css/pop.css">
<link rel="stylesheet" href="css/blur.css">

<script>
	function prev() {
		window.history.back();
	}
</script>
</head>
<body>
	<%
		String fruit1 = request.getParameter("fruit1");
		//System.out.println(fruit1+"fruit1");
		String fruit2 = request.getParameter("fruit2");
		//System.out.println(fruit1+"fruit2");
		
		Pop pop = FruitDAO.getInstance().selectPop();
		String[] popStr = pop.getPop();
		String[] popColorStr = pop.getColor();
		
		

	%>
	<form action="resultPage.jsp" method="get">
		<input type="hidden" name="fruit1"
			value="<%=fruit1%>"> <input
			type="hidden" name="fruit2"
			value="<%=fruit2%>">

		<section id="pop-container">
		<%
		for(int i=0;i<popStr.length;i++){
			out.println("<br><input type='radio' name='pop' value='"+i+"' required>"+popStr[i]+"<br>");
			out.println("<div class='pop' style='background-color: "+popColorStr[i]+"'></div>");
			out.println("<div class='pop' style='background-color: "+popColorStr[i]+"'></div>");

			
		}
		
		%>

		</section>

		<button class="page-button" onclick="go()">GO</button>
		<button type="button" class="page-button" onclick="prev()">Prev</button>


	</form>
</body>
</html>
