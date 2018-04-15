<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="SalvarLivro" method="post">
		<pr>Inforamações do Livro</pr><br>
		Titulo: <input type="text"  id="txtTitulo" name="txtTitulo" value="Senhor dos Aneis"><br>
		autor: 	<select id="ddlAutor" name="ddlAutor" >
				  <option value="1">Machado de Assis</option>
				  <option value="2">Tolkien</option>
				  <option value="3">Paulo Coelho</option>
				</select>
				<br>
				<br>
				<br>
		ano: <input type="text" id="txtAno" name="txtAno" value="1915"><br>
		edicao: <input type="text" id="txtEdicao" name="txtEdicao" value="2"><br>
		editora:<select id="ddlEditora" name="ddlEditora">
				  <option value="1">Arqueiro</option>
				  <option value="2">Abril</option>
				  <option value="3">Novo Mundo</option>
				</select>
				<br>
				<br>
				<br>
		número de páginas: <input type="text"  id="txtNumPag" name="txtNumPag" value="800"><br>
		Sinópse: <input type="text"  id="txtSinopse" name="txtSinopse" value="Era uma vez um cabra muito macho q fez um anel e tal"><br>
		<pr>Inforamações Técnicas do Livro</pr><br>
		ISBN: <input type="text" id="txtISBN" name="txtISBN" value="121212"><br>
		valor de compra: <input type="text" id="txtPreco" name="txtPreco" value="60.00"><br>
		altura: <input type="text" id="txtAltura" name="txtAltura" value="25"><br>
		largura: <input type="text"  id="txtLargura" name="txtLargura" value="18"><br>
		profundidade: <input type="text"  id="txtProfundidade" name="txtProfundidade" value="8"><br>
		peso: <input type="text" id="txtPeso" name="txtPeso" value="1.2"><br>
		grupo precificação: <select  id="ddlPrecificacao" name="ddlPrecificacao">
					  <option value="1">A - 30 %</option>
					  <option value="2">B - 35 %</option>
					  <option value="3">C - 40 %</option>
					</select>
					<br>
					<br>
					<br>	
		<input type="submit" value="SALVAR" name=operacao>
	</form>
</body>
</html>