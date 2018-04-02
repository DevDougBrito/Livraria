package livraria.controle.web.command;

import livraria.core.aplicacao.Resultado;
import livraria.dominio.EntidadeDominio;


public interface ICommand {

	public Resultado execute(EntidadeDominio entidade);
	
}
