/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import modelo.AlunoAR;
import modelo.ProvaAR;
import util.ConjuntoResultados;
import util.MySQL;

/**
 *
 * @author fernando_mota
 */
public class ProvasDAO {
    public static ArrayList<ProvaAR> getProvasPorAluno(AlunoAR aluno){
        ArrayList<ProvaAR> provas = new ArrayList<ProvaAR>();
        
        MySQL bancoDados = MySQL.getInstance();
        String sql = "SELECT * FROM prova WHERE aluno='"+aluno.getID()+"';";
        ConjuntoResultados linhas = bancoDados.executaSelect(sql);  
      
        while(linhas.next()){
            ProvaAR n = new ProvaAR();
            n.setID(linhas.getInt("id"));
            n.setCriador(linhas.getInt("aluno"));
            n.setMateria(linhas.getInt("materia"));
            n.setData(linhas.getString("data"));
            n.setDescricao(linhas.getString("descricao"));
            n.setNotificacao(linhas.getString("data"));
            n.setNota(linhas.getFloat("nota"));
            provas.add(n);
        }
        return provas;    
    }
    public static ArrayList<ProvaAR> getProvasPorAluno(int aluno){
        ArrayList<ProvaAR> provas = new ArrayList<ProvaAR>();
        
        MySQL bancoDados = MySQL.getInstance();
        String sql = "SELECT * FROM prova WHERE aluno='"+aluno+"';";
        ConjuntoResultados linhas = bancoDados.executaSelect(sql);  
      
        while(linhas.next()){
            ProvaAR n = new ProvaAR();
            n.setID(linhas.getInt("id"));
            n.setCriador(linhas.getInt("aluno"));
            n.setMateria(linhas.getInt("materia"));
            n.setData(linhas.getString("data"));
            n.setDescricao(linhas.getString("descricao"));
            n.setNotificacao(linhas.getString("data"));
            n.setNota(linhas.getFloat("nota"));
            provas.add(n);
        }
        return provas;     
    }
    public static ArrayList<ProvaAR> getProvasPorAluno(){
        ArrayList<ProvaAR> provas = new ArrayList<ProvaAR>();
        
        MySQL bancoDados = MySQL.getInstance();
        String sql = "SELECT * FROM prova;";
        ConjuntoResultados linhas = bancoDados.executaSelect(sql);  
      
        while(linhas.next()){
            ProvaAR n = new ProvaAR();
            n.setID(linhas.getInt("id"));
            n.setCriador(linhas.getInt("aluno"));
            n.setMateria(linhas.getInt("materia"));
            n.setData(linhas.getString("data"));
            n.setDescricao(linhas.getString("descricao"));
            n.setNotificacao(linhas.getString("data"));
            n.setNota(linhas.getFloat("nota"));
            provas.add(n);
        }
        return provas;     
    }
}
