package br.uece.bd.utils;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import br.uece.bd.model.Contato;

public class ContatoRowMapper implements RowMapper<Contato> {

	public Contato mapRow(ResultSet rs, int rowNum) throws SQLException {
		Contato contato = new Contato();
		contato.setId(rs.getInt("id"));
		contato.setNome(rs.getString("nome"));
		contato.setTelefone(rs.getString("telefone"));
		contato.setEmail(rs.getString("email"));
		contato.setEndereco(rs.getString("endereco"));
		return contato;
	}

}
