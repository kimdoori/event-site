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
		request.setCharacterEncoding("utf-8");

		String[] fruitStr = request.getParameterValues("fruit");
		String[] colorStr = request.getParameterValues("color");
		String[] indexStr = request.getParameterValues("index");
		String[] popStr = request.getParameterValues("pop");
		String[] popColorStr = request.getParameterValues("pop_color");
		
		int pop_index = Integer.valueOf(request.getParameter("pop_index"));


		int[] index = new int[2];
		
		for (int i = 0; i < index.length; i++) {
			index[i] = Integer.valueOf(indexStr[i]);
		}
		
		Fruit fruit = new Fruit(fruitStr,colorStr,index);
		Pop pop = new Pop(popStr,pop_index,popColorStr);

		int return_code1 = FruitDAO.getInstance().update(fruit);
		int return_code2 = FruitDAO.getInstance().update(pop);
		
		response.sendRedirect("adminPage.jsp");
		
	%>
</body>
</html>