/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import util.ConjuntoResultados;
import util.MySQL;

/**
 *
 * @author fernando_mota
 */
public class GrupoParticipanteAR implements AR {

    private int ID;
    private AlunoAR aluno;
    private GrupoAR grupo;

    public boolean load() {
        MySQL cliente = MySQL.getInstance();
        String sql = "SELECT * FROM grupo_aluno WHERE id='" + this.getID() + "';";
        ConjuntoResultados linha = cliente.executaSelect(sql);
        if (linha.next()) {


            this.setAluno(linha.getInt("aluno"));
            this.setGrupo(linha.getInt("grupo"));


            return true;
        }
        return false;

    }

    public boolean insert() {

        MySQL cliente = MySQL.getInstance();
        String sql = "INSERT INTO grupo_aluno(aluno , grupo) "
                + "VALUES(" + this.getAluno() + ",'" + this.getGrupo() + ");";
        return cliente.executaInsert(sql);

    }

    public boolean update() {
        MySQL cliente = MySQL.getInstance();
        String sql = "UPDATE grupo_aluno SET aluno='" + this.getAlunoSQL() + "',grupo='" + this.getGrupoSQL() + "',"           
                + " WHERE id='" + this.getID() + "';";
        return cliente.executaUpdate(sql);
    }

    public boolean delete() {

         MySQL cliente = MySQL.getInstance();
        String sql = "DELETE FROM grupo_aluno WHERE id='"+this.getID()+"';";
        return cliente.executaDelete(sql);

    }

    public AlunoAR getAluno() {
        return aluno;
    }

    public void setAluno(AlunoAR aluno) {
        this.aluno = aluno;
    }

    public void setAluno(int aluno) {
        this.aluno = new AlunoAR();
        this.aluno.setID(aluno);
        this.aluno.load();
    }

    public void setGrupo(int grupo) {
        this.grupo = new GrupoAR();
        this.grupo.setID(grupo);
        this.grupo.load();
    }

    public GrupoAR getGrupo() {
        return grupo;
    }

    public void setGrupo(GrupoAR grupo) {
        this.grupo = grupo;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    private String getGrupoSQL() {
        if (this.grupo == null) {
            return "NULL";
        }
        return "" + this.grupo.getID();
    }

    private String getAlunoSQL() {
        if (this.aluno == null) {
            return "NULL";
        }
        return "" + this.aluno.getID();
    }
}
