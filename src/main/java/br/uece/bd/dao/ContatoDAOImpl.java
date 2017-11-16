package br.uece.bd.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import br.uece.bd.model.Contato;
import br.uece.bd.utils.ContatoRowMapper;

@Repository
public class ContatoDAOImpl extends AbstractRepository implements ContatoDAO<Contato> {

	@Override
	public void add(Contato contato) {
		jdbcTemplate.update("INSERT INTO contato(nome, email, telefone, endereco) VALUES (?,?,?,?)", contato.getNome(),
				contato.getEmail(), contato.getTelefone(), contato.getEndereco());
	}

	@Override
	public void delete(Contato contato) {
		jdbcTemplate.update("DELETE FROM contato WHERE id = (?)", contato.getId());
	}

	@Override
	public void update(Contato contato) {
		jdbcTemplate.update("UPDATE contato set nome=?, email=?, telefone=?, endereco=? where id=?", contato.getNome(),
				contato.getEmail(), contato.getTelefone(), contato.getEndereco(), contato.getId());
	}

	@Override
	public Contato find(Integer id) {
		Contato result = (Contato) jdbcTemplate.queryForObject(
				"SELECT id, nome, email, telefone, endereco FROM contato where id=?", new Object[] { id },
				new ContatoRowMapper());
		return result;
	}

	@Override
	public List<Contato> findAll() {
		List<Contato> result = jdbcTemplate.query("SELECT id, nome, email, telefone, endereco FROM contato ",
				(rs, rowNum) -> new Contato(rs.getInt("id"), rs.getString("nome"), rs.getString("email"),
						rs.getString("telefone"), rs.getString("endereco")));
		return result;
	}

	@Override
	public Contato findByName(String nome) {
		Contato result = jdbcTemplate.queryForObject("SELECT id, nome, email, telefone FROM contato where nome=" + nome,
				Contato.class);
		return result;
	}

	@Override
	public Contato findByEmail(String email) {
		Contato result = jdbcTemplate
				.queryForObject("SELECT id, nome, email, telefone FROM contato where email=" + email, Contato.class);
		return result;
	}

	@Override
	public Contato findByPhone(String telefone) {
		Contato result = jdbcTemplate
				.queryForObject("SELECT id, nome, email, telefone FROM contato where nome=" + telefone, Contato.class);
		return result;
	}
	
	@Override
	public List<Contato> findByNameEmailPhone(Contato contato){
//		List<Contato> result = jdbcTemplate.query("SELECT id, nome, email, telefone, endereco FROM contato where nome LIKE '%?%' AND email LIKE '%?%' AND telefone LIKE '%?%' AND endereco LIKE '%?%'", (rs, rowNum) -> new Contato(rs.getInt("id"), rs.getString("nome"), rs.getString("email"),	rs.getString("telefone"), rs.getString("endereco")));
		List<Contato> result = jdbcTemplate.query("SELECT id, nome, email, telefone, endereco FROM contato where nome LIKE ? AND email LIKE ? AND telefone LIKE ? AND endereco LIKE ?", new Object[] { contato.getNome(), contato.getEmail(), contato.getTelefone(), contato.getEndereco()},
				new ContatoRowMapper());
		return result;
	}

}
