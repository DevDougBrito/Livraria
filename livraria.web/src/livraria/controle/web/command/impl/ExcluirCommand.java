
package livraria.controle.web.command.impl;

import livraria.core.aplicacao.Resultado;
import livraria.dominio.EntidadeDominio;


public class ExcluirCommand extends AbstractCommand{

	
	public Resultado execute(EntidadeDominio entidade) {
		
		return fachada.excluir(entidade);
	}

}
