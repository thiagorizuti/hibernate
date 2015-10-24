package hibernate;

import java.io.Serializable;

public class Curso implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int idCurso;
	
	private String nomeCurso;
	
	private String codCurso;
	
	private int ultimoCurriculoAtivo;
	
	private boolean diurno;


	public int getIdCurso() {
		return idCurso;
	}

	public void setIdCurso(int idDisciplina) {
		this.idCurso = idDisciplina;
	}

	public String getNomeCurso() {
		return nomeCurso;
	}

	public void setNomeCurso(String nomeCurso) {
		this.nomeCurso = nomeCurso;
	}

	public String getCodCurso() {
		return codCurso;
	}

	public void setCodCurso(String codCurso) {
		this.codCurso = codCurso;
	}

	public int getUltimoCurriculoAtivo() {
		return ultimoCurriculoAtivo;
	}

	public void setUltimoCurriculoAtivo(int ultimoCurriculoAtivo) {
		this.ultimoCurriculoAtivo = ultimoCurriculoAtivo;
	}

	public boolean isDiurno() {
		return diurno;
	}

}
