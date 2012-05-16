/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author fernando_mota
 */
public class Materia {
    protected String nome;
    protected String professor;
    protected int criador;
    protected int grupo;
    protected int atividades_mes;

    public Materia(String nome, String professor, int atividades_mes) {
        this.nome = nome;
        this.professor = professor;
        this.atividades_mes = atividades_mes;
    }

    public Materia(String nome, String professor) {
        this.nome = nome;
        this.professor = professor;
    }

    

    public int getAtividades_mes() {
        return atividades_mes;
    }

    public void setAtividades_mes(int atividades_mes) {
        this.atividades_mes = atividades_mes;
    }

    public int getCriador() {
        return criador;
    }

    public void setCriador(int criador) {
        this.criador = criador;
    }

    public int getGrupo() {
        return grupo;
    }

    public void setGrupo(int grupo) {
        this.grupo = grupo;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getProfessor() {
        return professor;
    }

    public void setProfessor(String professor) {
        this.professor = professor;
    }
    
    
}
