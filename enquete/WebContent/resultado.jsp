<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enquete</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<body>
<div class="titulo">
	<h1>Resultado</h1>
</div>
<div class="conteudo">
	<h4>Qual o seu personagem favorito da série The Big Bang Teory?</h4>
	<form method="get" action="resEnquete" >
		<table class="candidatos">
			<tr>
				<td>
					<img class="candidato" src="imagem/sheldon.jpg">
				</td>
				<td>
					<h3>
					<%
					int[] votos = (int[])session.getValue("Votos");
					
					if(votos != null){
						out.print(votos[0]);
					}
	                %>
	                </h3>
				</td>
				<td>
					<h3 style="color: red;">
					<%					
					if(0 == (int)request.getAttribute("vencedor")){
						out.println("Mais votado!!");
					}
	                %>
	                </h3>
				</td>
			</tr>
			<tr>
				<td>
					<img class="candidato" src="imagem/leonard.jpg">
				</td>
				<td>
					<h3>
					<%
					if(votos != null){
						out.print(votos[1]);
					}
	                %>
	            	</h3>
				</td>
				<td>
					<h3 style="color: red;">
					<%					
					if(1 == (int)request.getAttribute("vencedor")){
						out.println("Mais votado!!");
					}
	                %>
	                </h3>
				</td>
			</tr>
			<tr>
				<td>
					<img class="candidato" src="imagem/raj.jpg">
				</td>
				<td>
					<h3>
					<%
					if(votos != null){
						out.print(votos[2]);
					}
	                %>
	                </h3>
				</td>
				<td>
					<h3 style="color: red;">
					<%					
					if(2 == (int)request.getAttribute("vencedor")){
						out.println("Mais votado!!");
					}
	                %>
	                </h3>
				</td>
			</tr>
			<tr>
				<td>
					<img class="candidato" src="imagem/bernie.jpg">
				</td>
				<td>
					<h3>
					<%
					if(votos != null){
						out.print(votos[3]);
					}
	                %>
	                </h3>
				</td>
				<td>
					<h3 style="color: red;">
					<%					
					if(3 == (int)request.getAttribute("vencedor")){
						out.println("Mais votado!!");
					}
	                %>
	                </h3>
				</td>
			</tr>
			<tr>
				<td>
					<img class="candidato" src="imagem/amy.jpg">
				</td>
				<td>
					<h3>
					<%
					if(votos != null){
						out.print(votos[4]);
					}
	                %>
	                </h3>
				</td>
				<td>
					<h3 style="color: red;">
					<%					
					if(4 == (int)request.getAttribute("vencedor")){
						out.println("Mais votado!!");
					}
	                %>
	                </h3>
				</td>
			</tr>
			<tr>
				<td>
					<img class="candidato" src="imagem/howard.jpg">
				</td>
				<td>
					<h3>
					<%
					if(votos != null){
						out.print(votos[5]);
					}
	                %>
	                </h3>
				</td>
				<td>
					<h3 style="color: red;">
					<%					
					if(5 == (int)request.getAttribute("vencedor")){
						out.println("Mais votado!!");
					}
	                %>
	                </h3>
				</td>
			</tr>
			<tr>
				<td>
					<img class="candidato" src="imagem/penny.jpg">
				</td>
				<td>
					<h3>
					<%
					if(votos != null){
						out.print(votos[6]);
					}
					%>
					</h3>
				</td>
				<td>
					<h3 style="color: red;">
					<%					
					if(6 == (int)request.getAttribute("vencedor")){
						out.println("Mais votado!!");
					}
	                %>
	                </h3>
				</td>
			</tr>
		</table>
	
	</form>
	
</div>
<button onclick="window.history.back();" style="width: 20%; margin-left: 40%">Voltar</button>
</body>
</html>