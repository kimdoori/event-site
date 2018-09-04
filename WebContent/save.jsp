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
		request.setCharacterEncoding("utf-8");

		Fruit fruit = new Fruit();
		String[] fruitStr = request.getParameterValues("fruit");
		String[] colorStr = request.getParameterValues("color");
		String[] indexStr = request.getParameterValues("index");
		
		int[] index = new int[2];
		
		for (int i = 0; i < index.length; i++) {
			index[i] = Integer.valueOf(indexStr[i]);
		}

		fruit.setFruit(fruitStr);
		fruit.setColor(colorStr);
		fruit.setFruit_index(index);

		int return_code = FruitDAO.getInstance().update(fruit);
		
		System.out.println(return_code);
		
		response.sendRedirect("adminPage.jsp");
		
	%>
</body>
</html>