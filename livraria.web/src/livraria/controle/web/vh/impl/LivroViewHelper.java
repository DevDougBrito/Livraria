package livraria.controle.web.vh.impl;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import livraria.controle.web.vh.IViewHelper;
import livraria.core.aplicacao.Resultado;
import livraria.dominio.Autor;
import livraria.dominio.Dimensoes;
import livraria.dominio.Editora;
import livraria.dominio.EntidadeDominio;
import livraria.dominio.GrupoPrecificacao;
import livraria.dominio.Livro;

public class LivroViewHelper implements IViewHelper {

	@Override
	public EntidadeDominio getEntidade(HttpServletRequest request) {
		String titulo = request.getParameter("txtTitulo");
		String autor = request.getParameter("ddlAutor");
		String ano = request.getParameter("txtAno");
		String edicao = request.getParameter("txtEdicao");
		String editora = request.getParameter("ddlEditora");
		String numPag = request.getParameter("txtNumPag");		
		String sinopse = request.getParameter("txtSinopse");
		String ISBN = request.getParameter("txtISBN");
		String custo = request.getParameter("txtPreco");
		String altura = request.getParameter("txtAltura");
		String largura = request.getParameter("txtLargura");
		String profundidade = request.getParameter("txtProfundidade");
		String peso = request.getParameter("txtPeso");
		String precificacao = request.getParameter("ddlPrecificacao");

		
		Livro livro = new Livro();
		Autor aut = new Autor();
		Editora edit = new Editora();
		Dimensoes dimen = new Dimensoes();
		GrupoPrecificacao gpPrecificacao = new GrupoPrecificacao();

		livro.setAutor(aut);
		livro.setEditora(edit);
		livro.setDimensoes(dimen);
		livro.setGrupoPrecificacao(gpPrecificacao);
		
		livro.setTitulo(titulo);
		livro.getAutor().setId(Integer.parseInt(autor));
		livro.setAno(ano);
		livro.setEdicao(edicao);
		livro.getEditora().setId(Integer.parseInt(editora));
		livro.setNumPag(numPag);
		livro.setSinopse(sinopse);
		livro.setISBN(ISBN);
		livro.setCusto(Double.parseDouble(custo));
		livro.getDimensoes().setAltura(Double.parseDouble(altura));
		livro.getDimensoes().setLargura(Double.parseDouble(largura));
		livro.getDimensoes().setProfundidade(Double.parseDouble(profundidade));
		livro.getDimensoes().setPeso(Double.parseDouble(peso));
		livro.getGrupoPrecificacao().setId(Integer.parseInt(precificacao));
		return livro;
	}

	@Override
	public void setView(Resultado resultado, HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		RequestDispatcher d=null;
		String operacao = request.getParameter("operacao");
		
		if(resultado.getMsg() == null){
			if(operacao.equals("SALVAR")){
				resultado.setMsg("Produto cadastrado com sucesso!");
			}
			
			request.getSession().setAttribute("resultado", resultado);
			d= request.getRequestDispatcher("FormConsultaProduto.jsp");  			
		}
		
		if(resultado.getMsg() == null && operacao.equals("ALTERAR")){
			
			d= request.getRequestDispatcher("FormLivroConsulta.jsp");  
		}
		
	}

}
