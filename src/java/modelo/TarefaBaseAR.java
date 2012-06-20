/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.Date;
import util.ConjuntoResultados;
import util.Data;
import util.MySQL;

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
    protected String nomeTabela; 
    public AlunoAR getCriador() {
        return criador;
    }

    public void setCriador(AlunoAR criador) {
        this.criador = criador;
    }
    public void setCriador(int criador) {
        this.criador = new AlunoAR();
        this.criador.setID(criador);
        this.criador.load();
    }
    public Date getData() {
        return data;
    }

    public void setData(Date data) {
        this.data = data;
    }
    public void setData(String data) {
        if(data == null){
            data = "";
        }
        if(!data.equals("")){
            this.data = Data.getDate(data);
        }
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

    public MateriaAR getMateria() {
        return materia;
    }

    public void setMateria(MateriaAR materia) {
        this.materia = materia;
    }
    public void setMateria(int materia) {
        this.materia = new MateriaAR();
        this.materia.setID(materia);
        this.materia.load();
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
    public void setNotificacao(String notificacao) {
        if(notificacao == null){
            notificacao = "";
        }
        if(!notificacao.equals("")){
            this.notificacao = Data.getDateTime(notificacao);
        }
    }    
    protected boolean carrega(String nomeTabela) {
        MySQL cliente = MySQL.getInstance();
        String sql = "SELECT * FROM "+nomeTabela+" WHERE id='"+this.getID()+"';";
        ConjuntoResultados linha = cliente.executaSelect(sql);
        if(linha.next()){
            this.setMateria(linha.getInt("materia"));
            this.setData(linha.getString("data"));
            this.setDescricao(linha.getString("descricao"));
            this.setNotificacao(linha.getString("data"));
            this.setNota(linha.getFloat("nota"));
            return true;
        }
        return false;
    }

    protected boolean insere(String nomeTabela) {
        MySQL cliente = MySQL.getInstance();
        String sql = "INSERT INTO "+nomeTabela+"(id, materia, data, descricao, notificacao, nota, aluno) "
                + "VALUES("+this.getID()+",'"+this.getMateriaSQL()+"', "
                + "'"+Data.getDate(this.getData())+"', '"+this.getDescricao()+"', "+this.getNotificacaoSQL()+", "+this.getNota()+", "+this.getCriadorSQL()+");";
        return cliente.executaInsert(sql);
    }
    protected boolean atualiza(String nomeTabela) {
        MySQL cliente = MySQL.getInstance();
        String sql = "UPDATE "+nomeTabela+" SET materia="+this.getMateriaSQL()+", "
                + "data='"+Data.getDate(this.getData())+"', descricao='"+this.getDescricao()+"',"
                + "notificacao="+this.getNotificacaoSQL()+", nota="+this.getNota()+", aluno="+this.getCriadorSQL()+" WHERE id="+this.getID()+";";
        return cliente.executaUpdate(sql);
    }

    protected boolean apaga(String nomeTabela) {
        MySQL cliente = MySQL.getInstance();
        String sql = "DELETE FROM "+nomeTabela+" WHERE id="+this.getID()+";";
        return cliente.executaDelete(sql);
    }
    private String getMateriaSQL(){
        if(this.materia == null){
            return "NULL";
        }
        return this.getMateria().getID()+"";
    }
    private String getCriadorSQL(){
        if(this.criador == null){
            return "NULL";
        }
        return this.getCriador().getID()+"";
    }
    private String getNotificacaoSQL(){
        if(this.notificacao == null){
            return "NULL";
        }
        return "'"+Data.getDateTime(this.notificacao)+"'";
    }
    public abstract String getEditLink();
    public abstract String getDeleteLink();
}
