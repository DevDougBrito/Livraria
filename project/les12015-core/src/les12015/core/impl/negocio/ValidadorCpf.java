package les12015.core.impl.negocio;

import les12015.core.IStrategy;
import les12015.dominio.Cliente;
import les12015.dominio.EntidadeDominio;

public class ValidadorCpf implements IStrategy {

	@Override
	public String processar(EntidadeDominio entidade) {
		
		if(entidade instanceof Cliente){
			Cliente c = (Cliente)entidade;
			
			if(c.getCpf().length() < 9){
				return "CPF deve conter 14 digitos!";
			}
			
		}else{
			return "CPF não pode ser válidado, pois entidade não é um cliente!";
		}
		
		
		return null;
	}

}
