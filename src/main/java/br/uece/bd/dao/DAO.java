package br.uece.bd.dao;

import java.util.List;

public interface DAO<Entity> {
	void add(Entity entity);
	void delete(Entity entity);
	void update(Entity entity);
	Entity find(Integer id);
	List<Entity> findAll();
}
