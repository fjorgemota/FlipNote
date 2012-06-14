/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import modelo.AlunoAR;
import modelo.AnotacaoAR;

import util.ConjuntoResultados;
import util.MySQL;

/**
 *
 * @author HP
 */
public class AnotacaoDAO {

    public static ArrayList<AnotacaoAR> getAnotacoesPorAluno(AlunoAR aluno) {
        ArrayList<AnotacaoAR> anotacao = new ArrayList<AnotacaoAR>();

        MySQL bancoDados = new MySQL();
        String sql = "SELECT * FROM anotacao WHERE aluno='" + aluno.getID() + "';";
        ConjuntoResultados linhas = bancoDados.executaSelect(sql);

        while (linhas.next()) {
            AnotacaoAR n = new AnotacaoAR();
            n.setID(linhas.getInt("id"));
            n.setAluno(linhas.getInt("aluno"));
            n.setGrupo(linhas.getInt("grupo"));
            n.setTitulo(linhas.getString("titulo"));
            n.setTexto(linhas.getString("texto"));
            n.setNotificacao(linhas.getString("notificacao"));

            anotacao.add(n);
        }
        return anotacao;
    }
}
