/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.Date;

/**
 *
 * @author fernando_mota
 */
public abstract class TarefaBaseAR implements AR {
    private int id;
    private MateriaAR materia;
    private Date data;
    private String descricao;
    private Date notificacao;
    private float nota;
    private AlunoAR criador;
    protected String nomeTabela; // Simplifica ja que, dentre duas classes, muda-se apenas o nome da tabela
    public AlunoAR getCriador() {
        return criador;
    }

    public void setCriador(AlunoAR criador) {
        this.criador = criador;
    }

    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public MateriaAR getMateria() {
        return materia;
    }

    public void setMateria(MateriaAR materia) {
        this.materia = materia;
    }

    public float getNota() {
        return nota;
    }

    public void setNota(float nota) {
        this.nota = nota;
    }

    public Date getNotificacao() {
        return notificacao;
    }

    public void setNotificacao(Date notificacao) {
        this.notificacao = notificacao;
    }
    protected boolean carrega(String nomeTabela) {
        
        return true;
    }

    protected boolean insere(String nomeTabela) {
        return true;
    }

    protected boolean atualiza(String nomeTabela) {
        return true;
    }

    protected boolean apaga(String nomeTabela) {
        return true;
    }
}
