<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Produtos</title>
</head>
<body>

<h2>Cliente cadastrado com sucesso!</h2>

	<p>Nome:<% String nome = (String) request.getAttribute("nome");
	out.print(nome);  %> </p>
	<p>Data de Nascimento:<% String datNas = (String) request.getAttribute("datNas");
	out.print(datNas);  %> </p>
	<p>Endereço:<% String end = (String) request.getAttribute("end");
	out.print(end);  %> </p>
	<p>Telefone:<% String tel = (String) request.getAttribute("tel");
	out.print(tel);  %> </p>
	<p>CPF:<% String cpf = (String) request.getAttribute("CPF");
	out.print(cpf);  %> </p>
	
	<a href="produto.jsp">Escolher produtos</a>

</body>
</html>