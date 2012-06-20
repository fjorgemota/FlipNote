/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.ArrayList;
import util.Codificador;
import util.ConjuntoResultados;
import util.MySQL;

/**
 *
 * @author fernando_mota
 */
public class AlunoAR implements AR {

    private int id;
    private String nome;
    private String email;
    private String senha;

    public boolean load() {
        String sql = "SELECT * FROM aluno WHERE id='" + this.id + "' LIMIT 1;";
        MySQL bancoDados = MySQL.getInstance();
        ConjuntoResultados resultado = bancoDados.executaSelect(sql);
        if (resultado.next()) {
            this.setNome(resultado.getString("nome"));
            this.setEmail(resultado.getString("email"));
            this.senha = resultado.getString("senha");
            return true;
        }
        return false;
    }

    public boolean testaSenha(String novaSenha) {
        return Codificador.compara(this.getSenha(), novaSenha);
    }

    public boolean insert() {
        MySQL cliente = MySQL.getInstance();
        String sql = "INSERT INTO aluno(id, nome, email, senha) "
                + "VALUES(" + this.getID() + ",'" + this.getNomeCompleto() + "', "
                + "'" + this.getEmail() + "', '" + this.getSenha() + "');";
        return cliente.executaInsert(sql);

    }

    public boolean update() {

        MySQL cliente = MySQL.getInstance();
        String sql = "UPDATE alunoo SET nome='" + this.getNomeCompleto() + "',email='" + this.getEmail() + "',"
                + "senha=" + this.getSenha() + " WHERE id='" + this.getID() + "';";
        return cliente.executaUpdate(sql);

    }

    public boolean delete() {

        MySQL cliente = MySQL.getInstance();
        String sql = "DELETE FROM aluno WHERE id='" + this.getID() + "';";
        return cliente.executaDelete(sql);
     
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getID() {
        return id;
    }

    public void setID(int id) {
        this.id = id;
    }

    public String getNomeCompleto() {
        return nome;
    }
    public String getPrimeiroNome() {
        if(nome == null){
            return "";
        }
        String[] nomeCompleto = nome.split(" ",2);
        if(nomeCompleto.length > 0){
            return nomeCompleto[0];
        }
        return "";
    }
    public String getSobreNome() {
        if(nome == null){
            return "";
        }
        String[] nomeCompleto = nome.split(" ",2);
        if(nomeCompleto.length > 0){
            return nomeCompleto[1];
        }
        return "";
        
    }
    public void setNome(String nome) {
        this.nome = nome;
    }

    private String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = Codificador.codifica(senha);
    }
    /* Metodos especiais */
    public ArrayList<TarefaBaseAR> getTodasTarefas(String data_inicio, String data_fim){
        String sql = "SELECT *, 'prova' as tipo FROM prova WHERE data>=\""+data_inicio+"\" AND data <= \""+data_fim+"\"  union SELECT *, 'trabalho' as tipo FROM trabalho WHERE data>=\""+data_inicio+"\" AND data <= \""+data_fim+"\" ORDER BY data DESC ";
        MySQL db = MySQL.getInstance();
        ConjuntoResultados linhas = db.executaSelect(sql);
        ArrayList<TarefaBaseAR> tarefas = new ArrayList<TarefaBaseAR>();
        while(linhas.next()){
            TarefaBaseAR tarefa;
            if(linhas.getString("tipo").equals("prova")){
                tarefa = new ProvaAR();
            }
            else{
                tarefa = new TrabalhoAR();
            }
            tarefa.setID(linhas.getInt("id"));
            tarefa.setMateria(linhas.getInt("materia"));
            tarefa.setData(linhas.getString("data"));
            tarefa.setDescricao(linhas.getString("descricao"));
            tarefa.setNotificacao(linhas.getString("notificacao"));
            tarefa.setCriador(linhas.getInt("aluno"));
            tarefas.add(tarefa);
        }
        return tarefas;
    }
    public ArrayList<TarefaBaseAR> getTodasTarefas(){
        String sql = "SELECT *, 'prova' as tipo FROM prova union SELECT *, 'trabalho' as tipo FROM trabalho ORDER BY data DESC";
        MySQL db = MySQL.getInstance();
        ConjuntoResultados linhas = db.executaSelect(sql);
        ArrayList<TarefaBaseAR> tarefas = new ArrayList<TarefaBaseAR>();
        while(linhas.next()){
            TarefaBaseAR tarefa;
            if(linhas.getString("tipo").equals("prova")){
                tarefa = new ProvaAR();
            }
            else{
                tarefa = new TrabalhoAR();
            }
            tarefa.setID(linhas.getInt("id"));
            tarefa.setMateria(linhas.getInt("materia"));
            tarefa.setData(linhas.getString("data"));
            tarefa.setDescricao(linhas.getString("descricao"));
            tarefa.setNotificacao(linhas.getString("notificacao"));
            tarefa.setCriador(linhas.getInt("aluno"));
            tarefas.add(tarefa);
        }
        return tarefas;
    }
}
