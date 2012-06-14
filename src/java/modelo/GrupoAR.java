/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.ArrayList;
import util.ConjuntoResultados;
import util.MySQL;

/**
 *
 * @author fernando_mota
 */
public class GrupoAR implements AR {

    private int id;
    private String nome;
    private String descricao;
    private AlunoAR aluno;

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
    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getID() {
        return id;
    }

    public void setID(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public boolean load() {
        MySQL cliente = MySQL.getInstance();
        String sql = "SELECT * FROM grupo WHERE id='" + this.getID() + "';";
        ConjuntoResultados linha = cliente.executaSelect(sql);
        if (linha.next()) {

            this.setDescricao(linha.getString("descricao"));
            this.setNome(linha.getString("nome"));
            this.setAluno(linha.getInt("aluno"));
            return true;
        }
        return false;

    }

    public boolean insert() {
        MySQL cliente = MySQL.getInstance();
        String sql = "INSERT INTO grupo(id, nome, descricao, aluno) "
                + "VALUES(" + this.getID() + ",'" + this.getNome() + "', "
                + "'" + this.getDescricao() + "', "+this.getAlunoSQL()+");";
        return cliente.executaInsert(sql);


    }

    public boolean update() {
        
        MySQL cliente = MySQL.getInstance();
        String sql = "UPDATE grupo SET nome='"+this.getNome()+"',descricao='"+this.getDescricao()+ ", aluno="+this.getAlunoSQL()+" WHERE id='"+this.getID()+"';";
        return cliente.executaUpdate(sql);
       
    }

    public boolean delete() {
         MySQL cliente = MySQL.getInstance();
        String sql = "DELETE FROM grupo WHERE id='"+this.getID()+"';";
        return cliente.executaDelete(sql);
         
    }

    private String getAlunoSQL() {
        if(this.aluno == null){
            return "NULL";
        }
        return ""+this.aluno.getID();
    }
}
