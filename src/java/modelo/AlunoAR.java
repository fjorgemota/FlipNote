/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

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
            this.nome = resultado.getString("nome");
            this.email = resultado.getString("email");
            this.senha = resultado.getString("senha");
            return true;
        }
        return false;
    }

    public boolean testaSenha(String novaSenha) {
        return Codificador.compara(this.senha, novaSenha);
    }

    public boolean insert() {
        MySQL cliente = MySQL.getInstance();
        String sql = "INSERT INTO aluno(id, nome, email, senha) "
                + "VALUES(" + this.getID() + ",'" + this.getNome() + "', "
                + "'" + this.getEmail() + "', " + this.getSenha() + ");";
        return cliente.executaInsert(sql);

    }

    public boolean update() {

        MySQL cliente = MySQL.getInstance();
        String sql = "UPDATE alunoo SET nome='" + this.getNome() + "',email='" + this.getEmail() + "',"
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

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }
}
