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
        String sql = "SELECT * FROM aluno WHERE id='"+this.id+"' LIMIT 1;";
        MySQL bancoDados = MySQL.getInstance();
        ConjuntoResultados resultado = bancoDados.executaSelect(sql);
        if(resultado.next()){
            this.nome = resultado.getString("nome");
            this.email = resultado.getString("email");
            this.senha = resultado.getString("senha");
            return true;
        }
        return false;
    }
    public boolean testaSenha(String novaSenha){
        return Codificador.compara(this.senha, novaSenha);
    }
    public boolean insert() {
        return true; // Substituir pelo codigo do MySQL, inspire-se na da classe MateriaAR
    }

    public boolean update() {
        return true; // Substituir pelo codigo do MySQL, inspire-se na da classe MateriaAR
    }

    public boolean delete() {
        return true; // Substituir pelo codigo do MySQL, inspire-se na da classe MateriaAR
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
