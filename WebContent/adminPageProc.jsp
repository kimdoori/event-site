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
	

%>


	<form action="save.jsp">
		<table>
			<tr>
				<td>재료 이름</td>
				<td>
				<input type="text" name="fruit" value="<%=fruitStr[0] %>">
				<input type="text" name="fruit" value="<%=fruitStr[1] %>">
				<input type="text" name="fruit" value="<%=fruitStr[2] %>">
				<input type="text" name="fruit" value="<%=fruitStr[3] %>">
				<input type="text" name="fruit" value="<%=fruitStr[4] %>">
				<input type="text" name="fruit" value="<%=fruitStr[5] %>">
				<input type="text" name="fruit" value="<%=fruitStr[6] %>">
				<input type="text" name="fruit" value="<%=fruitStr[7] %>">
				</td>
			</tr>

			<tr>
				<td>재료 색</td>
				<td><input type="text" name="color" value="<%=colorStr[0] %>">
				<input type="text" name="color" value="<%=colorStr[1] %>">
				<input type="text" name="color" value="<%=colorStr[2] %>">
				<input type="text" name="color" value="<%=colorStr[3] %>">
				<input type="text" name="color" value="<%=colorStr[4] %>">
				<input type="text" name="color" value="<%=colorStr[5] %>">
				<input type="text" name="color" value="<%=colorStr[6] %>">
				<input type="text" name="color" value="<%=colorStr[7] %>">
			</td>
			</tr>
			<tr>
				<td>메뉴 재료</td>
				<td><input type="text" name="index" value="<%=indexStr[0] %>">
				<input type="text" name="index" value="<%=indexStr[1] %>">
			</td>
			</tr>

		</table>

	<input type="submit" value="저장">
	<br>
	<button type="button" onclick="goMain()">메인화면으로</button>


	</form>
	
	<script>
	function goMain(){
		location.href="index.jsp";
	}
	</script>

</body>
</html>