package hibernate;

import java.io.Serializable;
import java.util.Calendar;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.GenericGenerator;

@Entity
@Table(name="Aluno")
public class Aluno implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(generator="increment")
	@GenericGenerator(name ="increment", strategy="increment")
	@Column(name="idAluno", nullable = false, unique =true)
	private int idAluno;
	
	@Column(name="nome", nullable = false, length=50)
	private String nome;
	
	@Column(name="matricula", nullable = false, length=10)
	private String matricula;
	
	@Temporal(TemporalType.DATE)
	@Column(name="nascimento", nullable = false)
	private Calendar nascimento;
	
	@Column(name="matriculaTrancada", nullable = false)
	private boolean matriculaTrancada;
	
	@Column(name="sexo", nullable = false)
	private char sexo;
	
	@Column(name="anoIngresso", nullable = false)
	private int anoIngresso;
	
	public int getIdAluno() {
		return idAluno;
	}

	public void setIdAluno(int idAluno) {
		this.idAluno = idAluno;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}

	public Calendar getNascimento() {
		return nascimento;
	}

	public void setNascimento(Calendar nascimento) {
		this.nascimento = nascimento;
	}

	public boolean isMatriculaTrancada() {
		return matriculaTrancada;
	}

	public void setMatriculaTrancada(boolean matriculaTrancada) {
		this.matriculaTrancada = matriculaTrancada;
	}

	public char getSexo() {
		return sexo;
	}

	public void setSexo(char sexo) {
		this.sexo = sexo;
	}

	public int getAnoIngresso() {
		return anoIngresso;
	}

	public void setAnoIngresso(int anoIngresso) {
		this.anoIngresso = anoIngresso;
	}
	
	
	
}
