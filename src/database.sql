SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Documento`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Documento` (
  `idDocumento` INT NOT NULL ,
  `tipoDocumento` VARCHAR(25) NOT NULL ,
  `numeroDocumento` VARCHAR(15) NOT NULL ,
  PRIMARY KEY (`idDocumento`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Curso`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Curso` (
  `idCurso` INT NOT NULL ,
  `nomeCurso` VARCHAR(25) NOT NULL ,
  `codCurso` VARCHAR(3) NOT NULL ,
  PRIMARY KEY (`idCurso`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Aluno`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Aluno` (
  `idAluno` INT NOT NULL ,
  `nome` VARCHAR(50) NOT NULL ,
  `matricula` VARCHAR(10) NOT NULL ,
  `nascimento` DATE NOT NULL ,
  `matriculaTrancada` TINYINT(1) NOT NULL ,
  `sexo` CHAR NOT NULL ,
  `anoIngresso` INT NOT NULL ,
  `idDocumento` INT NULL ,
  `idCurso` INT NULL ,
  PRIMARY KEY (`idAluno`) ,
  INDEX `fk_Aluno_Documento_idx` (`idDocumento` ASC) ,
  INDEX `fk_Aluno_Curso1_idx` (`idCurso` ASC) ,
  CONSTRAINT `fk_Aluno_Documento`
    FOREIGN KEY (`idDocumento` )
    REFERENCES `mydb`.`Documento` (`idDocumento` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Aluno_Curso1`
    FOREIGN KEY (`idCurso` )
    REFERENCES `mydb`.`Curso` (`idCurso` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Disciplina`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Disciplina` (
  `idDisciplina` INT NOT NULL ,
  `nomeDisciplina` VARCHAR(50) NOT NULL ,
  `codDisciplina` VARCHAR(8) NOT NULL ,
  PRIMARY KEY (`idDisciplina`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Aluno_has_Disciplina`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `mydb`.`Aluno_has_Disciplina` (
  `idAluno` INT NOT NULL ,
  `idDisciplina` INT NOT NULL ,
  PRIMARY KEY (`idAluno`, `idDisciplina`) ,
  INDEX `fk_Aluno_has_Disciplina_Disciplina1_idx` (`idDisciplina` ASC) ,
  INDEX `fk_Aluno_has_Disciplina_Aluno1_idx` (`idAluno` ASC) ,
  CONSTRAINT `fk_Aluno_has_Disciplina_Aluno1`
    FOREIGN KEY (`idAluno` )
    REFERENCES `mydb`.`Aluno` (`idAluno` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Aluno_has_Disciplina_Disciplina1`
    FOREIGN KEY (`idDisciplina` )
    REFERENCES `mydb`.`Disciplina` (`idDisciplina` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `mydb` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;




INSERT INTO `db_get`.`Curso` (`idCurso`, `nomeCurso`, `codCurso`, `ultimoCurriculoAtivo`, `diurno`) VALUES ('1', 'Ciencia da Computacao', '35A', '2009', '0');
INSERT INTO `db_get`.`Curso` (`idCurso`, `nomeCurso`, `codCurso`, `ultimoCurriculoAtivo`, `diurno`) VALUES ('2', 'Ciencia da Computacao', '65AC', '2010', '1');
INSERT INTO `db_get`.`Curso` (`idCurso`, `nomeCurso`, `codCurso`, `ultimoCurriculoAtivo`, `diurno`) VALUES ('3', 'Sistemas de Informacao', '76A', '2011', '0');
INSERT INTO `db_get`.`Curso` (`idCurso`, `nomeCurso`, `codCurso`, `ultimoCurriculoAtivo`, `diurno`) VALUES ('4', 'Engenharia Computacional', '65AB', '2009', '1');
INSERT INTO `db_get`.`Curso` (`idCurso`, `nomeCurso`, `codCurso`, `ultimoCurriculoAtivo`, `diurno`) VALUES ('5', 'Ciencias Exatas', '65A', '2012', '1');

INSERT INTO `db_get`.`Disciplina` (`idDisciplina`, `nomeDisciplina`, `codDisciplina`, `creditos`, `turma`) VALUES ('1', 'Algoritmos', 'DCC120', '4', 'A');
INSERT INTO `db_get`.`Disciplina` (`idDisciplina`, `nomeDisciplina`, `codDisciplina`, `creditos`, `turma`) VALUES ('2', 'Algoritmos', 'DCC120', '4', 'B');
INSERT INTO `db_get`.`Disciplina` (`idDisciplina`, `nomeDisciplina`, `codDisciplina`, `creditos`, `turma`) VALUES ('3', 'Lab de Prog', 'DCC119', '2', 'A');
INSERT INTO `db_get`.`Disciplina` (`idDisciplina`, `nomeDisciplina`, `codDisciplina`, `creditos`, `turma`) VALUES ('4', 'Lab de Prog', 'DCC119', '2', 'B');
INSERT INTO `db_get`.`Disciplina` (`idDisciplina`, `nomeDisciplina`, `codDisciplina`, `creditos`, `turma`) VALUES ('5', 'Estrutura de Dados', 'DCC013', '4', 'A');
INSERT INTO `db_get`.`Disciplina` (`idDisciplina`, `nomeDisciplina`, `codDisciplina`, `creditos`, `turma`) VALUES ('6', 'Lab de Prog II', 'DCC107', '2', 'A');

INSERT INTO `db_get`.`Documento` (`idDocumento`, `tipoDocumento`, `numeroDocumento`, `dataEmissao`) VALUES ('1', 'Identidade', '16253645', '2002-02-15');

INSERT INTO `db_get`.`Aluno` (`idAluno`, `nome`, `matricula`, `nascimento`, `matriculaTrancada`, `sexo`, `anoIngresso`, `idCurso`) VALUES ('1', 'João', '201165156A', '1990-01-01', '1', 'M', '2011', '5');
INSERT INTO `db_get`.`Aluno` (`idAluno`, `nome`, `matricula`, `nascimento`, `matriculaTrancada`, `sexo`, `anoIngresso`, `idDocumento`, `idCurso`) VALUES ('2', 'Maria', '201035028A', '1990-01-01', '1', 'F', '2010', '1', '1' );
INSERT INTO `db_get`.`Aluno` (`idAluno`, `nome`, `matricula`, `nascimento`, `matriculaTrancada`, `sexo`, `anoIngresso`, `idCurso`) VALUES ('3', 'Ana', '201065010AB', '1991-03-18', '0', 'F', '2010', '4');
INSERT INTO `db_get`.`Aluno` (`idAluno`, `nome`, `matricula`, `nascimento`, `matriculaTrancada`, `sexo`, `anoIngresso`, `idCurso`) VALUES ('4', 'Pedro', '201035038A', '1989-04-25', '0', 'M', '2008', '1');
INSERT INTO `db_get`.`Aluno` (`idAluno`, `nome`, `matricula`, `nascimento`, `matriculaTrancada`, `sexo`, `anoIngresso`, `idCurso`) VALUES ('5', 'Carolina', '201065047A', '1990-08-13', '0', 'F', '2009', '5');
INSERT INTO `db_get`.`Aluno` (`idAluno`, `nome`, `matricula`, `nascimento`, `matriculaTrancada`, `sexo`, `anoIngresso`, `idCurso`) VALUES ('6', 'Barbara', '201076030A', '1992-09-07', '0', 'F', '2010', '3');
INSERT INTO `db_get`.`Aluno` (`idAluno`, `nome`, `matricula`, `nascimento`, `matriculaTrancada`, `sexo`, `anoIngresso`, `idCurso`) VALUES ('7', 'Jose', '200935061AC', '1990-05-24', '0', 'M', '2009', '2');
INSERT INTO `db_get`.`Aluno` (`idAluno`, `nome`, `matricula`, `nascimento`, `matriculaTrancada`, `sexo`, `anoIngresso`, `idCurso`) VALUES ('8', 'Thiago', '201165363AC', '1993-06-05', '0', 'M', '2011', '2');
INSERT INTO `db_get`.`Aluno` (`idAluno`, `nome`, `matricula`, `nascimento`, `matriculaTrancada`, `sexo`, `anoIngresso`, `idCurso`) VALUES ('9', 'Julieta', '201076065AC', '1990-12-01', '0', 'F', '2013', '2');

INSERT INTO `db_get`.`Aluno_has_Disciplina` (`idAluno`,`idDisciplina`) VALUES ('9','1');
INSERT INTO `db_get`.`Aluno_has_Disciplina` (`idAluno`,`idDisciplina`) VALUES ('8','1');
INSERT INTO `db_get`.`Aluno_has_Disciplina` (`idAluno`,`idDisciplina`) VALUES ('1','1');
INSERT INTO `db_get`.`Aluno_has_Disciplina` (`idAluno`,`idDisciplina`) VALUES ('2','1');
INSERT INTO `db_get`.`Aluno_has_Disciplina` (`idAluno`,`idDisciplina`) VALUES ('4','2');
