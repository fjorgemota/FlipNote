package dao;

import java.util.ArrayList;
import modelo.AlunoAR;

import modelo.GrupoAR;
import modelo.MateriaAR;
import util.ConjuntoResultados;
import util.MySQL;

public class GrupoDAO {

    public static ArrayList<GrupoAR> getGruposPorAluno(AlunoAR aluno) {
        ArrayList<GrupoAR> grupos = new ArrayList<GrupoAR>();

        MySQL bancoDados = new MySQL();
        String sql = "SELECT * FROM grupo WHERE aluno='" + aluno.getID() + "';";
        ConjuntoResultados linhas = bancoDados.executaSelect(sql);

        while (linhas.next()) {
            GrupoAR n = new GrupoAR();
            n.setAluno(linhas.getInt("aluno"));
            n.setNome(linhas.getString("nome"));
            n.setDescricao(linhas.getString("descricao"));
            n.setID(linhas.getInt("id"));
            grupos.add(n);
        }
        return grupos;
    }
}
