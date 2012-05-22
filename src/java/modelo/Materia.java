/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.Random;

/**
 *
 * @author fernando_mota
 */
public class Materia {
    protected int id;
    protected String nome;
    protected String professor;
    protected int criador;
    protected int grupo;
    public Materia() {
    }

    public Materia(String nome, String professor) {
        this.nome = nome;
        this.professor = professor;
    }
    public Materia(String nome, String professor, int atividade_mes) {
        this.nome = nome;
        this.professor = professor;
    }
    public Materia(int id, String nome, String professor) {
        this.nome = nome;
        this.professor = professor;
    }

    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
    public int getAtividades_mes(){
        Random client = new Random();
        return client.nextInt(50);
    }
    
}
