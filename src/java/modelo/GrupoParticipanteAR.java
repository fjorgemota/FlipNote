/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import util.MySQL;

/**
 *
 * @author fernando_mota
 */
public class GrupoParticipanteAR implements AR {

    private AlunoAR aluno;
    private GrupoAR grupo;

    public boolean load() {
        MySQL cliente = MySQL.getInstance();
        String sql = "INSERT INTO grupo_aluno ( aluno, grupo) "
                + "VALUES(" + this.getAluno() + ",'" + this.getGrupo() + ");";
        return cliente.executaInsert(sql);


    }

    public boolean insert() {
        return true; // Substituir pelo codigo do MySQL, inspire-se na da classe MateriaAR
    }

    public boolean update() {
        return true; // Substituir pelo codigo do MySQL, inspire-se na da classe MateriaAR
    }

    public boolean delete() {
        return true; // Substituir pelo codigo do MySQL, inspire-se na da classe MateriaAR
    }

    public AlunoAR getAluno() {
        return aluno;
    }

    public void setAluno(AlunoAR aluno) {
        this.aluno = aluno;
    }

    public GrupoAR getGrupo() {
        return grupo;
    }

    public void setGrupo(GrupoAR grupo) {
        this.grupo = grupo;
    }
}
