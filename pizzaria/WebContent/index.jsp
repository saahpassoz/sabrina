<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta charset="utf-8">
	<title>Pizzaria</title>
	<link rel="stylesheet" type="text/css" href="index.css"/>
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


	<form method="post" action="CalculoConta">
		<table >
			<tr><td colspan="4" align="center"><h2>Pizzas</h2></td></tr>
			<tr>
				<td>&nbsp</td>
				<td> Média<br></td>
				<td>Grande<br></td>
			</tr>

			<tr>
				<td><input type="hidden" name="sabor1" value="Calabresa"/> Calabresa</td>
				<td>R$24,00
					<input type="button" value='-' onclick="mudaQuantidade(-1, 'quantidade')" />
					<input id="quantidade" name="quantidade" size="1" type="text" value="0" maxlength="5" />
 					<input type="button" value='+' onclick="mudaQuantidade(1,'quantidade')">
				</td>
				<td>R$34,00
					<input type="button" value='-' onclick="mudaQuantidade(-1,'quantidade1')" />
					<input id="quantidade1" name="quantidade1" size="1" type="text" value="0" maxlength="5" />
 					<input type="button"  value='+' onclick="mudaQuantidade(1, 'quantidade1')">
 				</td>

			</tr>
			<tr>
				<td><input type="hidden" name="sabor2" value="Carne de Sol"/>Carne de sol</td>
				<td>R$24,00
					<input type="button" value='-' onclick="mudaQuantidade(-1, 'quantidade2')" />
					<input id="quantidade2" name="quantidade2" size="1" type="text" value="0" maxlength="5" />
 					<input type="button" value='+' onclick="mudaQuantidade(1,'quantidade2')">
				</td>
				<td>R$34,00
					<input type="button" value='-' onclick="mudaQuantidade(-1,'quantidade3')" />
					<input id="quantidade3" name="quantidade3" size="1" type="text" value="0" maxlength="5" />
 					<input type="button"  value='+' onclick="mudaQuantidade(1, 'quantidade3')">
 				</td>
			</tr>

			<tr>
				<td><input type="hidden" name="sabor3" value="Frango"/>Frango</td>
				<td>R$24,00
					<input type="button" value='-' onclick="mudaQuantidade(-1, 'quantidade4')" />
					<input id="quantidade4" name="quantidade4" size="1" type="text" value="0" maxlength="5" />
 					<input type="button" value='+' onclick="mudaQuantidade(1,'quantidade4')">
				</td>
				<td>R$34,00
					<input type="button" value='-' onclick="mudaQuantidade(-1,'quantidade5')" />
					<input id="quantidade5" name="quantidade5" size="1" type="text" value="0" maxlength="5" />
 					<input type="button"  value='+' onclick="mudaQuantidade(1, 'quantidade5')">
 				</td>
			</tr>

			<tr>
				<td><input type="hidden" name="sabor4" value="Marguerita"/>Marguerita</td>
				<td>R$24,00
					<input type="button" value='-' onclick="mudaQuantidade(-1, 'quantidade6')" />
					<input id="quantidade6" name="quantidade6" size="1" type="text" value="0" maxlength="5" />
 					<input type="button" value='+' onclick="mudaQuantidade(1,'quantidade6')">
				</td>
				<td>R$34,90
					<input type="button" value='-' onclick="mudaQuantidade(-1,'quantidade7')" />
					<input id="quantidade7" name="quantidade7" size="1" type="text" value="0" maxlength="5" />
 					<input type="button"  value='+' onclick="mudaQuantidade(1, 'quantidade7')">
 				</td>
			</tr>

			<tr>
				<td><input type="hidden" name="sabor5" value="Mussarela"/>Mussarela</td>
				<td>R$24,00
					<input type="button" value='-' onclick="mudaQuantidade(-1, 'quantidade8')" />
					<input id="quantidade8" name="quantidade8" size="1" type="text" value="0" maxlength="5" />
 					<input type="button" value='+' onclick="mudaQuantidade(1,'quantidade8')">
				</td>
				<td>R$34,00
					<input type="button" value='-' onclick="mudaQuantidade(-1, 'quantidade9')" />
					<input id="quantidade9" name="quantidade9" size="1" type="text" value="0" maxlength="5" />
 					<input type="button" value='+' onclick="mudaQuantidade(1,'quantidade9')">
				</td>
			</tr>

			<tr>
				<td><input type="hidden" name="sabor6" value="Portuguesa"/>Portuguesa</td>
				<td>R$24,00
					<input type="button" value='-' onclick="mudaQuantidade(-1, 'quantidade10')" />
					<input id="quantidade10" name="quantidade10" size="1" type="text" value="0" maxlength="5" />
 					<input type="button" value='+' onclick="mudaQuantidade(1,'quantidade10')">
				</td>
				<td>R$34,00
					<input type="button" value='-' onclick="mudaQuantidade(-1, 'quantidade11')" />
					<input id="quantidade11" name="quantidade11" size="1" type="text" value="0" maxlength="5" />
 					<input type="button" value='+' onclick="mudaQuantidade(1,'quantidade11')">
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