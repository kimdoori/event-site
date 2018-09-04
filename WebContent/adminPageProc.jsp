<%@page import="model.Pop"%>
<%@page import="model.Fruit"%>
<%@page import="database.FruitDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Fruit fruit = FruitDAO.getInstance().select();
		String[] fruitStr = fruit.getFruit();
		String[] colorStr = fruit.getColor();
		int[] indexStr = fruit.getFruit_index();
		
		
		Pop pop = FruitDAO.getInstance().selectPop();
		String[] popStr = pop.getPop();
		String[] popColorStr = pop.getColor();
		int pop_index = pop.getPop_index();
		
	%>


	<form action="save.jsp" method="post">
		<table border="1" style="border-collapse:collapse;" >
			<tr>
				<td width="120px">재료 이름</td>
				<td><input type="text" name="fruit" value="<%=fruitStr[0] != null ? fruitStr[0] : "Banana"%>">
					<input type="text" name="fruit" value="<%=fruitStr[1] != null ? fruitStr[1] : "Blueberry"%>">
					<input type="text" name="fruit" value="<%=fruitStr[2] != null ? fruitStr[2] : "Kiwi"%>">
					<input type="text" name="fruit" value="<%=fruitStr[3] != null ? fruitStr[3] : "Mango"%>">
					<input type="text" name="fruit" value="<%=fruitStr[4] != null ? fruitStr[4] : "Orange"%>">
					<input type="text" name="fruit" value="<%=fruitStr[5] != null ? fruitStr[5] : "Peach"%>">
					<input type="text" name="fruit" value="<%=fruitStr[6] != null ? fruitStr[6] : "Pinapple"%>">
					<input type="text" name="fruit" value="<%=fruitStr[7] != null ? fruitStr[7] : "Strawberry"%>">
				</td>
			</tr>

			<tr>
				<td>재료 색</td>
				<td><input type="text" name="color" value="<%=colorStr[0]!= null ? colorStr[0] : "#fffee0"%>">
					<input type="text" name="color" value="<%=colorStr[1]!= null ? colorStr[1] : "purple"%>">
					<input type="text" name="color" value="<%=colorStr[2]!= null ? colorStr[2] : "LawnGreen"%>">
					<input type="text" name="color" value="<%=colorStr[3]!= null ? colorStr[3] : "Gold"%>">
					<input type="text" name="color" value="<%=colorStr[4]!= null ? colorStr[4] : "orange"%>">
					<input type="text" name="color" value="<%=colorStr[5]!= null ? colorStr[5] : "LavenderBlush"%>">
					<input type="text" name="color" value="<%=colorStr[6]!= null ? colorStr[6] : "yellow"%>">
					<input type="text" name="color" value="<%=colorStr[7]!= null ? colorStr[7] : "Crimson"%>">
				</td>
			</tr>
			<tr>
				<td>선택 재료</td>
				<td><input type="text" name="index" value="<%=indexStr[0]%>">
					<input type="text" name="index" value="<%=indexStr[1]%>">
				</td>
			</tr>
			<tr>
				<td>펄 종류</td>
				<td><input type="text" name="pop" value="<%=popStr[0]!= null ? popStr[0] : "타피오카펄" %>">
					<input type="text" name="pop" value="<%=popStr[1]!= null ? popStr[1] : "치즈 타피오카펄" %>">
					<input type="text" name="pop" value="<%=popStr[2]!= null ? popStr[2] : "무지개 타피오카펄" %>">
					<input type="text" name="pop" value="<%=popStr[3]!= null ? popStr[3] : "젤리 펄" %>">
				</td>
			</tr>
			<tr>
				<td>펄 색</td>
				<td><input type="text" name="pop_color" value="<%=popColorStr[0]!= null ? popColorStr[0] : "#42000F"  %>">
					<input type="text" name="pop_color" value="<%=popColorStr[1]!= null ? popColorStr[1] : "#FAED7D"  %>">
					<input type="text" name="pop_color" value="<%=popColorStr[2]!= null ? popColorStr[2] : "#F15F5F"  %>">
					<input type="text" name="pop_color" value="<%=popColorStr[3]!= null ? popColorStr[3] : "#F6F6F6"  %>">
				</td>
			</tr>
			<tr>
				<td>선택 펄</td>
				<td><input type="text" name="pop_index" value="<%=pop_index%>">
				</td>
			</tr>
			
		</table>

		<input type="submit" value="저장"> <br>
		<button type="button" onclick="goMain()">메인화면으로</button>


	</form>

	<script>
		function goMain() {
			location.href = "index.jsp";
		}
	</script>

</body>
</html>