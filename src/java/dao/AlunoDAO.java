/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import javax.jms.Session;
import modelo.AlunoAR;
import util.ConjuntoResultados;
import util.MySQL;

/**
 *
 * @author fernando_mota
 */
public class AlunoDAO {

    public static AlunoAR getAluno(String email, String senha) {

        MySQL bancoDados = MySQL.getInstance();
        String sql = "SELECT id FROM aluno WHERE email='" + email + "' LIMIT 1;";
        ConjuntoResultados linhas = bancoDados.executaSelect(sql);

        if (linhas.next()) {
            AlunoAR n = new AlunoAR();
            n.setID(linhas.getInt("id")); // Seta só o ID e dá load gracas a senha
            if (!n.load()) {
                return null;
            }
            if (n.testaSenha(senha)) {
                return n;
            }
        }
        return null;
    }

    public static AlunoAR getAlunoByID(Object id) {
        if(id == null){
            return new AlunoAR();// Retorna um aluno vazio justamente por estar..vazio
        }
        AlunoAR n = new AlunoAR();
        n.setID((Integer)id); // Seta só o ID e dá load gracas a senha
        if (!n.load()) {
            n.setID(0);
        }  
        return n;
    }
    public static boolean estaLogado(Object id) {
        if(id == null){
            return false;
        }
        AlunoAR n = new AlunoAR();
        n.setID((Integer)id); // Seta só o ID e dá load gracas a senha
        return n.load();
    }
}
