
package les12015.controle.web.command.impl;

import les12015.controle.web.command.ICommand;
import les12015.core.IFachada;
import les12015.core.impl.controle.Fachada;



public abstract class AbstractCommand implements ICommand {

	protected IFachada fachada = new Fachada();

}
