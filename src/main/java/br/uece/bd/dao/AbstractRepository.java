package br.uece.bd.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class AbstractRepository {
	@Autowired
    protected JdbcTemplate jdbcTemplate;
}
