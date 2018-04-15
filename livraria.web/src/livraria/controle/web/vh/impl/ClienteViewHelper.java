package livraria.controle.web.vh.impl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import livraria.controle.web.vh.IViewHelper;
import livraria.core.aplicacao.Resultado;
import livraria.dominio.Cliente;
import livraria.dominio.EntidadeDominio;

public class ClienteViewHelper implements IViewHelper {

	@Override
	public EntidadeDominio getEntidade(HttpServletRequest request) {
		String nome = request.getParameter("txtNome");
		String tipoLogradouro = request.getParameter("ddlTipoLog");
		String logradouro = request.getParameter("txtLogradouro");
		String cpf = request.getParameter("txtCPF");
		String tipoTel = request.getParameter("ddlTipoTelefone");
		String telefone = request.getParameter("txtTelefone");
		String email = request.getParameter("txtEmail");
		String senha = request.getParameter("txtSenha");
		String genero = request.getParameter("rdGenero");
		String dtNasc = request.getParameter("txtNascimento");
		String responsavel = request.getParameter("txtResponsavel");
		
		Cliente cliente = new Cliente();
		cliente.setNome(nome);
		cliente.setCpf(cpf);
		cliente.setTipoTel(tipoTel);
		cliente.setTelefone(telefone);
		cliente.setEmail(email);
		cliente.setSenha(senha);
		cliente.setGenero(genero);
		cliente.setDtNas(dtNasc);
		cliente.setResponsavel(responsavel);
		
		cliente.setTipoLogradouro(tipoLogradouro);
		cliente.setLogradouro(logradouro);
		
		return cliente;
	}

	@Override
	public void setView(Resultado resultado, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		RequestDispatcher d=null;
		String operacao = request.getParameter("operacao");
		
		if(resultado.getMsg() == null){
			if(operacao.equals("SALVAR")){
				resultado.setMsg("Cliente cadastrado com sucesso!");
			}
			
			request.getSession().setAttribute("resultado", resultado);
			d= request.getRequestDispatcher("FormClienteConsulta.jsp");  			
		}
		
		if(resultado.getMsg() == null && operacao.equals("ALTERAR")){
			
			d= request.getRequestDispatcher("FormClienteConsulta.jsp");  
		}
		
		if(resultado.getMsg() == null && operacao.equals("VISUALIZAR")){
			
			d= request.getRequestDispatcher("FormClienteCadastro.jsp");  
		}
		
		d.forward(request,response);
	}

}
