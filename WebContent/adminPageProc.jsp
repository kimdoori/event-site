<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="save.jsp">
		<table>
			<tr>
				<td>재료 이름</td>
				<td>
				<input type="text" name="fruit" value="Banana">
				<input type="text" name="fruit" value="Blueberry">
				<input type="text" name="fruit" value="Strawerry">
				<input type="text" name="fruit" value="Pineapple">
				<input type="text" name="fruit" value="Kiwi">
				<input type="text" name="fruit" value="Orange">
				<input type="text" name="fruit" value="Peach">
				<input type="text" name="fruit" value="Mango">
				</td>
			</tr>

			<tr>
				<td>재료 색</td>
				<td><input type="text" name="color" value="#fffee0">
				<input type="text" name="color" value="purple">
				<input type="text" name="color" value="Crimson">
				<input type="text" name="color" value="yellow">
				<input type="text" name="color" value="LawnGreen">
				<input type="text" name="color" value="orange">
				<input type="text" name="color" value="LavenderBlush">
				<input type="text" name="color" value="Gold">
			</td>
			</tr>
			<tr>
				<td>메뉴 재료</td>
				<td><input type="text" name="index" value="0">
				<input type="text" name="index" value="1">
			</td>
			</tr>

		</table>

	<input type="submit" value="저장">


	</form>

</body>
</html>