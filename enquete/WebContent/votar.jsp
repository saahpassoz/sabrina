<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enquete</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
</head>
<script>
	function votar(e){
		
		var voto = document.getElementById("Voto");
		voto.value=e;
		
		document.forms[0].submit();
	}
</script>
<body>
<div class="titulo">
	<h1>Qual o seu personagem favorito da série The Big Bang Teory?</h1>
</div>
<div class="conteudo">
	<form method="post" action="resEnquete" >
		<input id="Voto" name="Voto" type="hidden" value=""/>
	</form>
	
	<table class="candidatos">
			<tr>
				<td>
					<img class="candidato" src="imagem/sheldon.jpg">
				</td>
				<td style="vertical-align: bottom;" >
					<h3> Sheldon Cooper </h3>
				</td>
				<td >
					<button onclick="votar(0);" ><img class="like" src="imagem/like.png"></button>
				</td>
			</tr>
			<tr>
				<td>
					<img class="candidato" src="imagem/leonard.jpg">
				</td>
				<td style="vertical-align: bottom;" >
					<h3> Leonard Hofstadter </h3>
				</td>
				<td >
					<button onclick="votar(1);"><img class="like" src="imagem/like.png"></button>
				</td>
			</tr>
			<tr>
				<td>
					<img class="candidato" src="imagem/raj.jpg">
				</td>
				<td style="vertical-align: bottom;" >
					<h3> Rajesh Koothrappali </h3>
				</td>
				<td >
					<button onclick="votar(2);"><img class="like" src="imagem/like.png"></button>
				</td>
			</tr>
			<tr>
				<td>
					<img class="candidato" src="imagem/bernie.jpg">
				</td>
				<td style="vertical-align: bottom;" >
					<h3> Bernadette </h3>
				</td>
				<td >
					<button onclick="votar(3);"><img class="like" src="imagem/like.png"></button>
				</td>
			</tr>
			<tr>
				<td>
					<img class="candidato" src="imagem/amy.jpg">
				</td>
				<td style="vertical-align: bottom;" >
					<h3> Amy Farrah Fowler </h3>
				</td>
				<td >
					<button  onclick="votar(4);"><img class="like" src="imagem/like.png"></button>
				</td>
			</tr>
			<tr>
				<td>
					<img class="candidato" src="imagem/howard.jpg">
				</td>
				<td style="vertical-align: bottom;" >
					<h3> Howard Wolowitz </h3>
				</td>
				<td >
					<button onclick="votar(5);"><img class="like" src="imagem/like.png"></button>
				</td>
			</tr>
			<tr>
				<td>
					<img class="candidato" src="imagem/penny.jpg">
				</td>
				<td style="vertical-align: bottom;" >
					<h3> Penny </h3>
				</td>
				<td >
					<button onclick="votar(6);"><img class="like" src="imagem/like.png"></button>
				</td>
			</tr>
		</table>
</div>
</body>
</html>