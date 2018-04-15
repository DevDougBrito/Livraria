<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="SalvarCliente" method="post">
		<pr>Inforamações do Livro</pr><br>
		Nome: <input type="text"  id="txtNome" name="txtNome"><br>
		CPF: <input type="text"  id="txtCPF" name="txtCPF"><br>
		Tipo de Telefone: 
		<select id="ddlTipoTelefone" name="ddlTipoTelefone" >
		  <option value="Celular">Celular</option>
		  <option value="Empresarial">Empresarial</option>
		  <option value="Residencial">Residencial</option>
		</select><br>
		Telefone: <input type="text"  id="txtTelefone" name="txtTelefone"><br>
		Email: <input type="text"  id="txtNome" name="txtEmail"><br>
		Senha: <input type="text"  id="txtNome" name="txtSenha"><br>
		Confirmar senha: <input type="text"  id="txtNome" name="txtConfSenha"><br>
		Genero: <input type="radio" name="rdGenero" id="rdGenero" value="Masculino"> Masculino
				<input type="radio" name="rdGenero" id="rdGenero" value="Feminino"> Feminino<br>
		Data de nascimento: <input type="text"  id="txtNome" name="txtNascimento"><br>
		Responsavel: <input type="text"  id="txtNome" name="txtResponsavel"><br>
		
		Tipo logradouro: 	<select id="ddlTipoLog" name="ddlTipoLog" >
				  <option value="Rua">Rua</option>
				  <option value="Avenida">Avenida</option>
				  <option value="Alameda">Alameda</option>
				</select>
				<br>
				<br>
				<br>
		Logradouro: <input type="text" id="txtLogradouro" name="txtLogradouro"><br>
		<input type="submit" value="SALVAR" name=operacao>
	</form>
</body>
</html>