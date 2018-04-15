<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="resources/estilo.css">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  	<script src="https://code.jquery.com/jquery-3.1.1.min.js"
            integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
            crossorigin="anonymous"></script>
  <title>
    Cadastro de clientes
  </title>
  <meta charset="UTF-8" />
 <script type="text/javascript">
 function Sumir1() {
		document.getElementById("frmSalvarCliente").style='';
		document.getElementById("frmSalvarEndereco").style='display:none';
		document.getElementById("frmSalvarCartao").style='display:none';
	}
 function Sumir2() {
		document.getElementById("frmSalvarCliente").style='display:none';
		document.getElementById("frmSalvarEndereco").style='';
		document.getElementById("frmSalvarCartao").style='display:none';
	}
 function Sumir3() {
		document.getElementById("frmSalvarCliente").style='display:none';
		document.getElementById("frmSalvarEndereco").style='display:none';
		document.getElementById("frmSalvarCartao").style='';
	}
</script>
<script>
   $(document).ready(function(){
	   $("#divNavBar").load("NavBar.html");
   });
</script>
</head>
<body>
	<div id="divNavBar"></div>
  <!-- Criando a listagem -->
<ul class="abas">
    <!-- Aqui, criação da primeira aba -->
    <li class="aba" id="aba-1">
     <a onclick="Sumir1()" href="#aba-1">${empty cliente ? "Cadastrar cliente" : "Alterar cliente"}</a>
     <a onclick="Sumir2()" href="#aba-2">Cadastrar Endereço</a>
     <a onclick="Sumir3()" href="#aba-3">Cadastrar Cartao</a>
<section class="conteudo">
	<form style='' action="SalvarCliente" method="post" id="frmSalvarCliente">
			<table class="table table-bordered">
				<tr><TH COLSPAN="2">Cadastro de clientes</TH></tr>
				<tr style="${empty cliente ? 'display:none' : ''}">
					<td>
						ID do cliente
					</td>
					<td>
						<input type="text" class="form-control" id="txtId" name="txtId" value="${empty cliente ? '' : cliente.getId()}" readonly="readonly"/>
					</td>
				</tr>
				<tr>
					<td>
						Nome do cliente
						<br>
						<input type="text"class="form-control" id="txtNome" name="txtNome" value="${empty cliente ? '' : cliente.getNome()}" />
					</td>
					<td>
						CPF
						<br>
						<input type="text"class="form-control" id="txtCpf" name="txtCpf" value="${empty cliente ? '' : cliente.getCpf()}" />
					</td>
				</tr>
				<tr>
					<td>
						Status do Cliente
						<br>
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
						  <label class="btn btn-outline-dark">
						    <input type="radio" name="rdStatus" id="rdStatus" value="true" autocomplete="off" checked> Ativo
						  </label>
						  <label class="btn btn-outline-dark">
						    <input type="radio" name="rdStatus" id="rdStatus" value="false" autocomplete="off"> Inativo
						  </label>
						</div>
					</td>
					<td>
						Tipo de telefone
						<br>
						<select class="btn btn-outline-dark" id="ddlTipoTel" name="ddlTipoTel">
							<option ${cliente.getTipoTelefone() == 'Residencial' ? 'selected' : '' }>Residencial</option>
							<option ${cliente.getTipoTelefone() == 'Celular' ? 'selected' : '' }>Celular</option>
							<option ${cliente.getTipoTelefone() == 'Empresarial' ? 'selected' : '' }>Empresarial</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						Telefone
						<br>
						<input type="text"class="form-control" id="txtTelefone" name="txtTelefone" value="${empty cliente ? '' : cliente.getTelefone()}" />
					</td>
					<td>
						Email
						<br>
						<input type="text"class="form-control" id="txtEmail" name="txtEmail" value="${empty cliente ? '' : cliente.getEmail()}" />
					</td>
				</tr>
				<tr style="${empty cliente ? '' : 'display:none'}">
					<td>
						Senha
						<br>
						<input type="text"class="form-control" id="txtSenha" name="txtSenha" value="${empty cliente ? '' : cliente.getSenha()}" />
					</td>
					<td>
						Confirme a senha
						<br>
						<input type="text"class="form-control" id="txtISBN" name="txtISBN" value="${empty cliente ? '' : cliente.getSenha()}" />
					</td>
				</tr>
				<tr>
					<td>
						Genero
						<br>
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
						  <label class="btn btn-outline-dark">
						    <input type="radio" name="rdGenero" id="rdGenero" value="Masculino" autocomplete="off" checked> Masculino
						  </label>
						  <label class="btn btn-outline-dark">
						    <input type="radio" name="rdGenero" id="rdGenero" value="Feminino" autocomplete="off"> Feminino
						  </label>
						</div>
					</td>
					<td>
						Data de nascimento
						<br>
						<!-- <input type="${empty cliente ? 'date' : 'text'}" class="form-control"  id="txtDtNasc" name="txtDtNasc" value="${empty cliente ? '' : cliente.getDtnascFormatado()}" /> -->
						<input type="text" class="form-control"  id="txtDtNasc" name="txtDtNasc" value="${empty cliente ? '' : cliente.getDtnascFormatado()}" />
					</td>
				</tr>
				<tr>
					<td>
						Responsavel
					</td>
					<td>
						<!-- <input type="${empty cliente ? 'date' : 'text'}" class="form-control"  id="txtDtNasc" name="txtDtNasc" value="${empty cliente ? '' : cliente.getDtnascFormatado()}" /> -->
						<input type="text" class="form-control"  id="txtAlterador" name="txtAlterador"/>
					</td>
				</tr>
			</table>
			<input type="submit" class="btn btn-primary" id="operacao" name="operacao" value="${empty cliente ? 'SALVAR' : 'ALTERAR'}" class="btn btn-default" />
			<a class="btn btn-primary" href="http://localhost:8080/finalWeb/FormConsultaCliente.jsp">Consultar clientes</a>
		</form>
</section></li>
<!-- Aqui, criação da segunda aba -->
    <li class="aba" id="aba-2">
      
<section class="conteudo">
	<form style='display:none' action="SalvarEndereco" method="post" id="frmSalvarEndereco">
			<table class="table table-bordered">
				<tr><TH COLSPAN="2">Cadastro de Endereço</TH></tr>
				<tr style="${empty cliente ? 'display:none' : ''}">
					<td>
						ID
					</td>
					<td>
						<input type="text" class="form-control" id="txtId" name="txtId" value="${empty endereco ? '' : endereco.getId()}" readonly="readonly"/>
					</td>
				</tr>
				<tr style="${empty cliente ? 'display:none' : ''}">
					<td>
						ID do cliente
					</td>
					<td>
						<input type="text" class="form-control" id="txtIdCliente" name="txtIdCliente" value="${empty cliente ? '' : cliente.getId()}" readonly="readonly"/>
					</td>
				</tr>
				<tr>
					<td>
						Tipo do endereço
						<br>
						<select class="btn btn-outline-dark" id="ddlTipoEndereco" name="ddlTipoEndereco">
							<option ${endereco.getTipo() == 'Cobranca' ? 'selected' : '' }>Cobranca</option>
							<option ${endereco.getTipo() == 'Entrega' ? 'selected' : '' }>Entrega</option>
						</select>
					</td>
					<td>
						Tipo da residencia
						<br>
						<select class="btn btn-outline-dark" id="ddlTipoResidencia" name="ddlTipoResidencia">
							<option ${endereco.getTipoResidencia() == 'Casa' ? 'selected' : '' }>Casa</option>
							<option ${endereco.getTipoResidencia() == 'Apartamento' ? 'selected' : '' }>Apartamento</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						Tipo do logradouro
						<br>
						<select class="btn btn-outline-dark" id="ddlTipoLogradouro" name="ddlTipoLogradouro">
							<option ${endereco.getTipoLogradouro() == 'Avenida' ? 'selected' : '' }>Avenida</option>
							<option ${endereco.getTipoLogradouro() == 'Rua' ? 'selected' : '' }>Rua</option>
							<option ${endereco.getTipoLogradouro() == 'Travessa' ? 'selected' : '' }>Travessa</option>
						</select>
					</td>
					<td>
						Logradouro
						<br>
						<input type="text" class="form-control" id="txtLogradouro" name="txtLogradouro" value="${empty endereco ? '' : endereco.getLogradouro()}"/>
					</td>
				</tr>
				<tr>
					<td>
						Preferencial
						<br>
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
						  <label class="btn btn-outline-dark">
						    <input type="radio" name="rdPreferencial" id="rdPreferencial" value="true" autocomplete="off" checked> Preferencial
						  </label>
						  <label class="btn btn-outline-dark">
						    <input type="radio" name="rdPreferencial" id="rdPreferencial" value="false" autocomplete="off"> Comum
						  </label>
						</div>
					</td>
					<td>
						Número
						<br>
						<input type="text"class="form-control" id="txtNumero" name="txtNumero" value="${empty endereco ? '' : endereco.getNumero()}" />
					</td>
				</tr>
				<tr>
					<td>
						Bairro
						<br>
						<input type="text"class="form-control" id="txtBairro" name="txtBairro" value="${empty endereco ? '' : endereco.getBairro()}" />
					</td>
					<td>
						CEP
						<br>
						<input type="text"class="form-control" id="txtCep" name="txtCep" value="${empty endereco ? '' : endereco.getCep()}" />
					</td>
				</tr>
				<tr>
					<td>
						Estado
						<br>
						<input type="text"class="form-control" id="txtEstado" name="txtEstado" value="${empty endereco ? '' : endereco.getEstado()}" />
					</td>
					<td>
						Cidade
						<br>
						<input type="text"class="form-control" id="txtCidade" name="txtCidade" value="${empty endereco ? '' : endereco.getCidade()}" />
					</td>
				</tr>
				<tr>
					<td>
						País
						<br>
						<input type="text" class="form-control"  id="txtPais" name="txtPais" value="${empty endereco ? '' : endereco.getPais()}" />
					</td>
					<td>
						Observação
						<br>
						<input type="text" class="form-control"  id="txtObservacao" name="txtObservacao" value="${empty endereco ? '' : endereco.getObservacao()}" />
					</td>
				</tr>
				<tr>
					<td>
						Responsavel
					</td>
					<td>
						<input type="text" class="form-control"  id="txtResponsavel" name="txtResponsavel" value="${empty endereco ? '' : ''}" />
					</td>
				</tr>
			</table>
			<input type="submit" class="btn btn-primary" id="operacao" name="operacao" value="${empty endereco ? 'SALVAR' : 'ALTERAR'}" class="btn btn-default" />
		</form>
</section></li>
<!-- Aqui, criação da segunda aba -->
    <li class="aba" id="aba-3">
      
<section class="conteudo">
	<form style='display:none' action="SalvarCartao" method="post" id="frmSalvarCartao">
			<table class="table table-bordered">
				<tr><TH COLSPAN="2">Cadastro de cartão</TH></tr>
				<tr style="${empty cliente ? 'display:none' : ''}">
					<td>
						ID
					</td>
					<td>
						<input type="text" class="form-control" id="txtId" name="txtId" value="${empty cartao ? '' : cartao.getId()}" readonly="readonly"/>
					</td>
				</tr>
				<tr style="${empty cliente ? 'display:none' : ''}">
					<td>
						ID do cliente
					</td>
					<td>
						<input type="text" class="form-control" id="txtIdCliente" name="txtIdCliente" value="${empty cartao ? empty cliente ? '' : cliente.getId() : cartao.getID_Cliente()}" readonly="readonly"/>
					</td>
				</tr>
				<tr>
					<td>
						Titular
						<br>
						<input type="text" class="form-control" id="txtTitular" name="txtTitular" value="${empty cartao ? '' : cartao.getTitular()}"/>
					</td>
					<td>
						Numero
						<br>
						<input type="text" class="form-control" id="txtNumeroCartao" name="txtNumeroCartao" value="${empty cartao ? '' : cartao.getNumero()}"/>
					</td>
				</tr>
				<tr>
					<td>
						Codigo
						<br>
						<input type="text" class="form-control" id="txtCodigo" name="txtCodigo" value="${empty cartao ? '' : cartao.getCodigo()}"/>
					</td>
					<td>
						Bandeira
						<br>
						<select class="btn btn-outline-dark" id="ddlBandeira" name="ddlBandeira">
							<option ${endereco.getTipoLogradouro() == 'Visa' ? 'selected' : '' }>Visa</option>
							<option ${endereco.getTipoLogradouro() == 'Caixa' ? 'selected' : '' }>Caixa</option>
							<option ${endereco.getTipoLogradouro() == 'Itau' ? 'selected' : '' }>Itau</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						preferencial
						<br>
					    <div class="btn-group btn-group-toggle" data-toggle="buttons">
						  <label class="btn btn-outline-dark">
						    <input type="radio" name="rdCPreferencial" id="rdCPreferencial" value="true" autocomplete="off" checked> Preferencial
						  </label>
						  <label class="btn btn-outline-dark">
						    <input type="radio" name="rdCPreferencial" id="rdCPreferencial" value="false" autocomplete="off"> Comum
						  </label>
						</div>
					</td>
					<td>
						validade
						<br>
						<input type="text"class="form-control" id="txtValidade" name="txtValidade" value="${empty cartao ? '' : cartao.getValidadeFormatado()}" />
					</td>
				</tr>
				<tr>
					<td>
						Responsavel
					</td>
					<td>
						<input type="text" class="form-control"  id="txtResponsavel" name="txtResponsavel" value="${empty cartao ? '' : cartao.getAlterador()}" />
					</td>
				</tr>
			</table>
			<input type="submit" class="btn btn-primary" id="operacao" name="operacao" value="${empty cartao ? 'SALVAR' : 'ALTERAR'}" class="btn btn-default" />
		</form>
</section></li>
</ul>
</body>
</html>