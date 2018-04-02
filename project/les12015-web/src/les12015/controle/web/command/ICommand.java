
package les12015.controle.web.command;

import les12015.core.aplicacao.Resultado;
import les12015.dominio.EntidadeDominio;


public interface ICommand {

	public Resultado execute(EntidadeDominio entidade);
	
}
