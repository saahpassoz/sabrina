
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Produtos</title>
</head>
	
	<script type="text/javascript">
	 function mudaQuantidade(valor, id) {

        var campoQuantidade = document.getElementById(id);

        var quantidade = parseFloat(campoQuantidade.value);

        quantidade = quantidade + valor;

        if (quantidade < 1){
        	campoQuantidade.value = 0;
        } else {
        	campoQuantidade.value = quantidade;
        }
    }

</script>

<body>
	<h3>Livros</h3>

	<form method="post" action="livro">
		<table width="60%">

			<tr>
				<td>Box - As Cronicas de Gelo e Fogo - Pocket - Edicao de Colecionador - 5 Volumes</td>
				<td>R$179,00
					<input type="button" value='-' onclick="mudaQuantidade(-1, 'quantidade')" />
					<input id="quantidade" name="quantidade" size="1" type="text" value="0" maxlength="5" />
 					<input type="button" value='+' onclick="mudaQuantidade(1,'quantidade')">
				</td>
			</tr>
			<tr>
				<td>Mitologia Nordica</td>
				<td>R$44,00
					<input type="button" value='-' onclick="mudaQuantidade(-1, 'quantidade1')" />
					<input id="quantidade1" name="quantidade1" size="1" type="text" value="0" maxlength="5" />
 					<input type="button" value='+' onclick="mudaQuantidade(1,'quantidade1')">
				</td>
			</tr>

			<tr>
				<td>The Beauty Of Darkness - Cronicas de Amor e Odio</td>
				<td>R$46,00
					<input type="button" value='-' onclick="mudaQuantidade(-1, 'quantidade2')" />
					<input id="quantidade2" name="quantidade2" size="1" type="text" value="0" maxlength="5" />
 					<input type="button" value='+' onclick="mudaQuantidade(1,'quantidade2')">
				</td>
			</tr>

			<tr>
				<td>Antes Que Eu Va</td>
				<td>R$30,00
					<input type="button" value='-' onclick="mudaQuantidade(-1, 'quantidade3')" />
					<input id="quantidade3" name="quantidade3" size="1" type="text" value="0" maxlength="5" />
 					<input type="button" value='+' onclick="mudaQuantidade(1,'quantidade3')">
				</td>
			</tr>

			<tr>
				<td>The Kiss Of Deception - Cronicas de Amor e Odio </td>
				<td>R$32,00
					<input type="button" value='-' onclick="mudaQuantidade(-1, 'quantidade4')" />
					<input id="quantidade4" name="quantidade4" size="1" type="text" value="0" maxlength="5" />
 					<input type="button" value='+' onclick="mudaQuantidade(1,'quantidade4')">
				</td>
			</tr>

			<tr>
				<td colspan="3" align="center">
					<br><br>
					<input type="submit" name="fechar" value="Fechar pedido">
				</td>
			</tr>
		</table>
	</form>

</body>
</html>
	
</body>
</html>