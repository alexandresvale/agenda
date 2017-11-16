package br.uece.bd.dao;

import java.util.List;

import br.uece.bd.model.Contato;

public interface ContatoDAO<Controller> extends DAO<Contato>{
	Contato findByName(String name);
	Contato findByEmail(String email);
	Contato findByPhone(String telefone);
	List<Contato> findByNameEmailPhone(Contato contato);
}
