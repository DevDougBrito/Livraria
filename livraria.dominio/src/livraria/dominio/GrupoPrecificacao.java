package livraria.dominio;

public class GrupoPrecificacao extends EntidadeDominio {
	private char grupo;
	private double lucro;
	
	public char getGrupo() {
		return grupo;
	}
	public void setGrupo(char grupo) {
		this.grupo = grupo;
	}
	public double getLucro() {
		return lucro;
	}
	public void setLucro(double lucro) {
		this.lucro = lucro;
	}
}
