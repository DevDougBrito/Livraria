
package livraria.controle.web.command.impl;

import livraria.core.aplicacao.Resultado;
import livraria.dominio.EntidadeDominio;


public class SalvarCommand extends AbstractCommand{

	
	public Resultado execute(EntidadeDominio entidade) {
		
		return fachada.salvar(entidade);
	}

}
