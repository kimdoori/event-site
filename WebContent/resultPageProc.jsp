<%@page import="model.Pop"%>
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
<link rel="stylesheet" href="css/blur.css">


<link
	href='http://fonts.googleapis.com/css?family=Yanone+Kaffeesatz:700'
	rel='stylesheet' type='text/css'>

</head>
<body>
	<section>

		<%
			Fruit fruit = FruitDAO.getInstance().select();
			Pop pop = FruitDAO.getInstance().selectPop();

			int fruit1 = Integer.valueOf(request.getParameter("fruit1"));
			int fruit2 = Integer.valueOf(request.getParameter("fruit2"));
			int choice_pop = Integer.valueOf(request.getParameter("pop"));
			
			String[] colorStr = fruit.getColor();
			String[] fruitStr = fruit.getFruit();
			
			String[] popStr = pop.getPop();
			String[] popColorStr = pop.getColor();
			
			int pop_inedx = pop.getPop_index();

			int[] index = fruit.getFruit_index();

			int count = -1;

			if(index[0]==fruit1 || index[1]==fruit1)
				count++;
				
			if(index[0]==fruit2 || index[1]==fruit2)
				count++;
			
			if(choice_pop==pop_inedx)
				count++;
			System.out.println(choice_pop);
			System.out.println(pop_inedx);

			if (count >= 2){
				out.println("<h2>성공하셨습니다!</h2>");
				out.println("<p>재료를 모두 맞추셨습니다.</p>");

			}
			else{
				out.println("<h2>실패하셨습니다.</h2>");
				out.println("<p>다음에 다시 도전해주세요:)</p>");
				out.println("<p>선택하신 재료 배합 결과</p>");
				out.println("음료1 : "+fruitStr[fruit1]+"<br>");
				out.println("음료2 : "+fruitStr[fruit2]+"<br>");
				out.println("펄 : "+popStr[choice_pop]+"<br><br>");
				
				

			}
		%>


	</section>
	<div class="container">

		<div class="borderbox">
			<div class="glass">
				<div class="inner"
					style="background:linear-gradient(to bottom, <%=colorStr[fruit1]%> 0%, <%=colorStr[fruit2]%> 100%);background-color:<%=fruit2%>;">
					
					<%
					for(int i=0;i<12;i++){
						out.println("<div class='bubble' style='background-color:"+popColorStr[choice_pop]+";opacity:0.4;'></div>");
					}
					
					%>
					
				
				</div>
			</div>
		</div>
	</div>

	<section>

		<%
			if (count >= 2) {
				
		%>
		<form action="coupon.jsp">
		<br><br>
		전화번호
		<input type="tel" name="phone" placeholder="010-0000-0000" required>
		<button class="page-button">응모권 받기</button>
		</form>
		<%-- 쿠폰번호
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
 --%>
		<%
			}else{
				out.println("<button class='page-button' onclick='goStart()'>다시 시도하기</button>");	
			
			}
		%>




	</section>
<script>
function goStart(){
	location.href="page1.jsp";
}

</script>

</body>
</html>