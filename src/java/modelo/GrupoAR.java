/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.ArrayList;

/**
 *
 * @author fernando_mota
 */
public class GrupoAR implements AR{
    private int id;
    private String nome;
    private String descricao;
    private ArrayList<AlunoAR> alunos;

    public ArrayList<AlunoAR> getAlunos() {
        return alunos;
    }

    public void setAlunos(ArrayList<AlunoAR> alunos) {
        this.alunos = alunos;
    }
    public void addAluno(AlunoAR aluno){
        if(this.alunos == null){
            this.alunos = new ArrayList<AlunoAR>();
        }
        this.alunos.add(aluno);
    }
    public void removeAluno(AlunoAR aluno){
        if(this.alunos == null){
            this.alunos = new ArrayList<AlunoAR>();
        }
        this.alunos.remove(aluno);
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

    @Override
    public void load() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void insert() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void update() {
        throw new UnsupportedOperationException("Not supported yet.");
    }

    @Override
    public void delete() {
        throw new UnsupportedOperationException("Not supported yet.");
    }
    
}
