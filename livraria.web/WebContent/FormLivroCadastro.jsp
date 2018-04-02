<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/action_page.php">
		<pr>Inforamações do Livro</pr><br>
		Titulo: <input type="text"  id="txtTitulo" name="txtTitulo" value="Senhor dos Aneis"><br>
		autor: 	<select id="ddlAutor" name="ddlAutor" >
				  <option value="autor">Machado de Assis</option>
				  <option value="autor">Tolkien</option>
				  <option value="autor">Paulo Coelho</option>
				</select>
				<br>
				<br>
				<br>
		ano: <input type="text" id="txtAno" name="txtAno" value="1915"><br>
		edicao: <input type="text" id="txtEdicao" name="txtEdicao" value="2"><br>
		editora:<select>
				  <option value="editora">Arqueiro</option>
				  <option value="editora">Abril</option>
				  <option value="editora">Novo Mundo</option>
				</select>
				<br>
				<br>
				<br>
		número de páginas: <input type="text"  id="txtNumPag" name="txtNumPag" value="800"><br>
		Sinópse: <input type="text"  id="txtSinopse" name="txtSinopse" value="Era uma vez um cabra muito macho q fez um anel e tal"><br>
		<pr>Inforamações Técnicas do Livro</pr><br>
		ISBN: <input type="text" id="txtISBN" name="txtISBN" value="121212"><br>
		altura: <input type="text" id="txtAltura" name="txtAltura" value="25"><br>
		largura: <input type="text"  id="txtLargura" name="txtLargura" value="18"><br>
		profundidade: <input type="text"  id="txtProfundidade" name="txtProfundidade" value="8"><br>
		peso: <input type="text" id="txtPeso" name="txtPeso" value="1.2"><br>
		categoria: <select  id="ddlCategoria" name="ddlCategoria">
					  <option value="categoria">A - 30 %</option>
					  <option value="categoria">B - 35 %</option>
					  <option value="categoria">C - 40 %</option>
					</select>
					<br>
					<br>
					<br>	
		<input type="submit" value="Salvar">
	</form>
</body>
</html>