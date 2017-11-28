package br.uece.bd.model;

public class Contato {
	private Integer id;
	private String nome;
	private String email;
	private String telefone;
	private String endereco;

	public Contato() {
		
	}
	
	public Contato(Integer id, String nome, String email, String telefone, String endereco) {
		this.id = id;
		this.nome = nome;
		this.email = email;
		this.telefone = telefone;
		this.endereco = endereco;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTelefone() {
		return telefone;
	}

	public void setTelefone(String telefone) {
		this.telefone = telefone;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String toString() {
		return String.format("[%s - %s - %s - %s]", nome, email, endereco, telefone);
	}
}
