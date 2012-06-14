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
public class AnotacaoAR implements AR {

    private int id;
    private String titulo;
    private String texto;
    private Date notificacao;
    private AlunoAR aluno;
    private GrupoAR grupo;

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
        return id;
    }

    public void setID(int id) {
        this.id = id;
    }

    public Date getNotificacao() {
        return notificacao;
    }

    public void setNotificacao(Date notificacao) {
        this.notificacao = notificacao;
    }
    public void setNotificacao(String notificacao) {
        if(notificacao != null){
            this.notificacao = Data.getDateTime(notificacao);
        }
        
    }
    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    @Override
    public boolean load() {
        MySQL cliente = MySQL.getInstance();
        String sql = "SELECT * FROM anotacao WHERE id='" + this.getID() + "';";
        ConjuntoResultados linha = cliente.executaSelect(sql);
        if (linha.next()) {

            this.setTitulo(linha.getString("titulo"));
            this.setTexto(linha.getString("texto"));
            this.setAluno(linha.getInt("aluno"));
            this.setGrupo(linha.getInt("grupo"));
            //    this.setNotificacao(linha.getDate("notificacao"));    

            return true;
        }
        return false;
    }

    @Override
    public boolean insert() {
        MySQL cliente = MySQL.getInstance();
        String sql = "INSERT INTO anotacao(id, titulo, texto, aluno, grupo, notificacao) "
                + "VALUES(" + this.getID() + ",'" + this.getTitulo() + "', "
                + "'" + this.getTexto() + "', " + this.getAlunoSQL() + ", " + this.getGrupoSQL() + ", " + this.getNotificacaoSQL() + ");";
        return cliente.executaInsert(sql);
    }

    @Override
    public boolean update() {
        MySQL cliente = MySQL.getInstance();
        String sql = "UPDATE anotacao SET titulo='" + this.getTitulo() + "',texto='" + this.getTexto() + "',"
                + "aluno=" + this.getAlunoSQL() + ",grupo=" + this.getGrupoSQL() + ", notificacao=" + this.getNotificacaoSQL()
                + " WHERE id='" + this.getID() + "';";
        return cliente.executaUpdate(sql);
    }

    @Override
    public boolean delete() {
         MySQL cliente = MySQL.getInstance();
        String sql = "DELETE FROM anotacao WHERE id='"+this.getID()+"';";
        return cliente.executaDelete(sql);
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

    private String getNotificacaoSQL() {
        if(this.getNotificacao() == null){
            return "NULL";
        }
        return Data.getDateTime(this.getNotificacao());
    }
}
