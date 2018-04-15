package livraria.core.impl.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import livraria.dominio.Cliente;
import livraria.dominio.EntidadeDominio;
import livraria.dominio.Livro;

public class ClienteDAO extends AbstractJdbcDAO {
	
	public ClienteDAO() {
		super("cliente", "id");		
	}
	public void salvar(EntidadeDominio entidade) {
		openConnection();
		PreparedStatement pst=null;
		Cliente cliente = (Cliente)entidade;
		
		
		try {
			connection.setAutoCommit(false);						
			StringBuilder sql = new StringBuilder();
			sql.append("INSERT INTO clientes(");
			sql.append("nome , tipoLogradouro , logradouro, cpf, tipoTel, telefone, email, senha, genero, dtNasc, responsavel) ");
			sql.append( "VALUES (?,?,?,?,?,?,?,?,?,?,?)");		
			
			pst = connection.prepareStatement(sql.toString(), 
					Statement.RETURN_GENERATED_KEYS);

			pst.setString(1, cliente.getNome());
			pst.setString(2, cliente.getTipoLogradouro());
			pst.setString(3, cliente.getLogradouro());
			pst.setString(4, cliente.getCpf());
			pst.setString(5, cliente.getTipoTel());
			pst.setString(6, cliente.getTelefone());
			pst.setString(7, cliente.getEmail());
			pst.setString(8, cliente.getSenha());
			pst.setString(9, cliente.getGenero());
			pst.setString(10, cliente.getDtNas());
			pst.setString(11, cliente.getResponsavel());

			pst.executeUpdate();	
			
			
			ResultSet rs = pst.getGeneratedKeys();
			int id=0;
			if(rs.next())
				id = rs.getInt(1);
			cliente.setId(id);			
			connection.commit();		
		} catch (SQLException e) {
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();			
		}finally{
			try {
				pst.close();
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}		

	}
	@Override
	public void alterar(EntidadeDominio entidade) throws SQLException {
		openConnection();
		PreparedStatement pst=null;
		Livro livro = (Livro)entidade;		
		
		try {
			connection.setAutoCommit(false);			
					
			StringBuilder sql = new StringBuilder();
			sql.append("UPDATE livro SET");
			sql.append("ano=?, titulo=?, edicao=?, ISBN=?, ");
			sql.append("numPag=?, sinopse=?, grupo_prec_id=?, autor_id=?, editora_id=?, dimensoes_id=?");
			sql.append("WHERE id=?");				
			
			pst = connection.prepareStatement(sql.toString());

			pst.setString(1, livro.getAno());
			pst.setString(2, livro.getTitulo());
			pst.setString(3, livro.getEdicao());
			pst.setString(4, livro.getISBN());
			pst.setString(5, livro.getNumPag());
			pst.setString(6, livro.getSinopse());
			pst.setInt(7, livro.getGrupoPrecificacao().getId());
			pst.setInt(8, livro.getAutor().getId());
			pst.setInt(9, livro.getEditora().getId());
			pst.setInt(10, livro.getDimensoes().getId());
			pst.setInt(11, livro.getId());


			pst.executeUpdate();			
			connection.commit();		
		} catch (SQLException e) {
			try {
				connection.rollback();
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();			
		}finally{
			try {
				pst.close();
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}		
				
	}
	@Override
	public void excluir(EntidadeDominio entidade) throws SQLException {
		openConnection();
		PreparedStatement pst=null;
		Livro livro = (Livro)entidade;		
		
		try {
			
			
			connection.setAutoCommit(false);			
					
			StringBuilder sql = new StringBuilder();
			sql.append("UPDATE condicao SET");
			sql.append("descricao=?, estado=?, idModificador=?, categ_inat_id=?, dataModificacao= sysdate()");
			sql.append("WHERE id=?;");	
			sql.append("UPDATE livro SET");
			sql.append("status=?,condicao_id=? ");
			sql.append("WHERE id=?;");	
			
			pst = connection.prepareStatement(sql.toString());

			pst.setString(1, livro.getCondicao().getDescricao());
			pst.setString(2, livro.getCondicao().getEstado());
			pst.setInt(3, livro.getCondicao().getIdModificador());
			pst.setInt(4, livro.getCondicao().getCategoria().getId());
			pst.setInt(5, livro.getCondicao().getId());
			pst.setBoolean(6, livro.isStatus());
			pst.setInt(7, livro.getCondicao().getId());
			pst.setInt(8, livro.getId());

			} catch (SQLException e) {
				try {
					connection.rollback();
				} catch (SQLException e1) {
					e1.printStackTrace();
				}
				e.printStackTrace();			
			}finally{
				try {
					pst.close();
					connection.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}

	}
	@Override
	public List<EntidadeDominio> consultar(EntidadeDominio entidade) throws SQLException {
		PreparedStatement pst = null;
		//Cliente cliente = (Cliente) entidade;
		StringBuilder sb = new StringBuilder();
		sb.append("SELECT * FROM clientes WHERE 1=1\n");
		try{
			openConnection();
			pst = connection.prepareStatement(sb.toString());
			ResultSet rs = pst.executeQuery();
			List<EntidadeDominio> clientes = new ArrayList<>();
			while(rs.next()){
				Cliente c = new Cliente();
				c.setId(rs.getInt("id"));
				c.setNome(rs.getString("nome"));
				c.setCpf(rs.getString("cpf"));
				c.setGenero(rs.getString("genero"));
				c.setTipoTel(rs.getString("tipotel"));
				c.setTelefone(rs.getString("telefone"));
				c.setEmail(rs.getString("email"));
				c.setSenha(rs.getString("senha"));
				c.setResponsavel(rs.getString("responsavel"));
				c.setDtNas(rs.getString("dtNasc"));
				clientes.add(c);
			}
			return clientes;
		}catch(SQLException e){
			e.printStackTrace();
		}
		return null;
	}
}