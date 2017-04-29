
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fechar pedido</title>
<link rel="stylesheet" type="text/css" href="index.css"/>
</head>
<body>
	<table>
		<tr>
			<td><h2>Total do pedido:</h2></td>
		</tr>
		<tr>
			<td align="center">
				<p>R$<% float total = (float) request.getAttribute("total");
			out.print(total);
		%> </p>
			</td>
		</tr>
		<tr>
			<td align="center">
				<a href="index.jsp">Voltar</a>
			</td>
		</tr>
	</table>
</body>
</html>