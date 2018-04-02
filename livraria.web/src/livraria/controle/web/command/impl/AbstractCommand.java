package livraria.controle.web.command.impl;

import livraria.controle.web.command.ICommand;
import livraria.core.IFachada;
import livraria.core.impl.controle.Fachada;

public abstract class AbstractCommand implements ICommand {

	protected IFachada fachada = new Fachada();

}