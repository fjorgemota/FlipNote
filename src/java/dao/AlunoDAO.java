/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


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

    
}
