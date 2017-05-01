<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Pedido</title>
<meta charset="UTF-8"/>
</head>
<body>
	<h2>Total do pedido: <% float total = (float) request.getAttribute("total");
			out.print(total);
		%></h2>
		
		<a href="index.jsp">Voltar</a>
</body>
</html>