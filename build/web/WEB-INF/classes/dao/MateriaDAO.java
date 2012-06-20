/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import modelo.AlunoAR;
import modelo.MateriaAR;
import util.ConjuntoResultados;
import util.MySQL;

/**
 *
 * @author fernando_mota
 */
public class MateriaDAO {
    public static ArrayList<MateriaAR> getMateriasPorAluno(AlunoAR aluno){
        ArrayList<MateriaAR> materias = new ArrayList<MateriaAR>();
        
        MySQL bancoDados = new MySQL();
        String sql = "SELECT * FROM materia WHERE aluno='"+aluno.getID()+"';";
        ConjuntoResultados linhas = bancoDados.executaSelect(sql);  
      
        while(linhas.next()){
            MateriaAR n = new MateriaAR();
            n.setID(linhas.getInt("id"));
            n.setAluno(linhas.getInt("aluno"));
            n.setGrupo(linhas.getInt("grupo"));
            n.setProfessor(linhas.getString("professor"));
            n.setNome(linhas.getString("nome"));
            materias.add(n);
        }
        return materias;    
    }
    public static ArrayList<MateriaAR> getMateriasPorAluno(int aluno){
        ArrayList<MateriaAR> materias = new ArrayList<MateriaAR>();
        
        MySQL bancoDados = new MySQL();
        String sql = "SELECT * FROM materia WHERE aluno='"+aluno+"';";
        ConjuntoResultados linhas = bancoDados.executaSelect(sql);  
      
        while(linhas.next()){
            MateriaAR n = new MateriaAR();
            n.setID(linhas.getInt("id"));
            n.setAluno(linhas.getInt("aluno"));
            n.setGrupo(linhas.getInt("grupo"));
            n.setProfessor(linhas.getString("professor"));
            n.setNome(linhas.getString("nome"));
            materias.add(n);
        }
        return materias;    
    }
    public static ArrayList<MateriaAR> getMaterias(){
        ArrayList<MateriaAR> materias = new ArrayList<MateriaAR>();
        
        MySQL bancoDados = new MySQL();
        String sql = "SELECT * FROM materia;";
        ConjuntoResultados linhas = bancoDados.executaSelect(sql);  
      
        while(linhas.next()){
            MateriaAR n = new MateriaAR();
            n.setID(linhas.getInt("id"));
            n.setAluno(linhas.getInt("aluno"));
            n.setGrupo(linhas.getInt("grupo"));
            n.setProfessor(linhas.getString("professor"));
            n.setNome(linhas.getString("nome"));
            materias.add(n);
        }
        return materias;    
    }
}
