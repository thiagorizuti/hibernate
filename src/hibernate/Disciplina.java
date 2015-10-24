package hibernate;

import java.io.Serializable;

public class Disciplina implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int idDisciplina;
	
	private String nomeDisciplina;
	
	private String codDisciplina;
	
	private int creditos;

	private char turma;

	public int getIdDisciplina() {
		return idDisciplina;
	}

	public void setIdDisciplina(int idDisciplina) {
		this.idDisciplina = idDisciplina;
	}

	public String getNomeDisciplina() {
		return nomeDisciplina;
	}

	public void setNomeDisciplina(String nomeDisciplina) {
		this.nomeDisciplina = nomeDisciplina;
	}

	public String getCodDisciplina() {
		return codDisciplina;
	}
	
	public void setCodDisciplina(String codDisciplina) {
		this.codDisciplina = codDisciplina;
	}
	
	public int getCreditos() {
		return creditos;
	}

	public void setCreditos(int creditos) {
		this.creditos = creditos;
	}

	public char getTurma() {
		return turma;
	}

	public void setTurma(char turma) {
		this.turma = turma;
	}
	

}
