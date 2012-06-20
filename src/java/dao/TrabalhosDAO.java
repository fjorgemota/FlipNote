/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import modelo.AlunoAR;
import modelo.ProvaAR;
import modelo.TrabalhoAR;
import util.ConjuntoResultados;
import util.MySQL;

/**
 *
 * @author fernando_mota
 */
public class TrabalhosDAO {
    public static ArrayList<TrabalhoAR> getProvasPorAluno(AlunoAR aluno){
        ArrayList<TrabalhoAR> trabalhos = new ArrayList<TrabalhoAR>();
        
        MySQL bancoDados = new MySQL();
        String sql = "SELECT * FROM trabalho WHERE aluno='"+aluno.getID()+"';";
        ConjuntoResultados linhas = bancoDados.executaSelect(sql);  
      
        while(linhas.next()){
            TrabalhoAR n = new TrabalhoAR();
            n.setID(linhas.getInt("id"));
            n.setMateria(linhas.getInt("materia"));
            n.setData(linhas.getString("data"));
            n.setDescricao(linhas.getString("descricao"));
            n.setNotificacao(linhas.getString("data"));
            n.setNota(linhas.getFloat("nota"));
            trabalhos.add(n);
        }
        return trabalhos;    
    }
    public static ArrayList<TrabalhoAR> getProvasPorAluno(int aluno){
        ArrayList<TrabalhoAR> trabalhos = new ArrayList<TrabalhoAR>();
        
        MySQL bancoDados = new MySQL();
        String sql = "SELECT * FROM trabalho WHERE aluno='"+aluno+"';";
        ConjuntoResultados linhas = bancoDados.executaSelect(sql);  
      
        while(linhas.next()){
            TrabalhoAR n = new TrabalhoAR();
            n.setID(linhas.getInt("id"));
            n.setMateria(linhas.getInt("materia"));
            n.setData(linhas.getString("data"));
            n.setDescricao(linhas.getString("descricao"));
            n.setNotificacao(linhas.getString("data"));
            n.setNota(linhas.getFloat("nota"));
            trabalhos.add(n);
        }
        return trabalhos;     
    }
    public static ArrayList<TrabalhoAR> getProvasPorAluno(){
        ArrayList<TrabalhoAR> trabalhos = new ArrayList<TrabalhoAR>();
        
        MySQL bancoDados = new MySQL();
        String sql = "SELECT * FROM trabalho;";
        ConjuntoResultados linhas = bancoDados.executaSelect(sql);  
      
        while(linhas.next()){
            TrabalhoAR n = new TrabalhoAR();
            n.setID(linhas.getInt("id"));
            n.setMateria(linhas.getInt("materia"));
            n.setData(linhas.getString("data"));
            n.setDescricao(linhas.getString("descricao"));
            n.setNotificacao(linhas.getString("data"));
            n.setNota(linhas.getFloat("nota"));
            trabalhos.add(n);
        }
        return trabalhos;     
    }
}
