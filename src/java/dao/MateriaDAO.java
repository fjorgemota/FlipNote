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
   public static ArrayList<MateriaAR> listaAtividadesPorMes(int criador){
        ArrayList<MateriaAR> materias = new ArrayList<MateriaAR>();
         
        
        MySQL bancoDados = new MySQL();
        String sql = "select * from materia";
        ConjuntoResultados linhas = bancoDados.executaSelect(sql);  
      
        while(linhas.next()){
            MateriaAR n = new MateriaAR();
          n.setNome(linhas.getString("nome"));
          n.setProfessor(linhas.getString("professor"));
            
            materias.add(n);
        }
        return materias;    
    }
    public static ArrayList<MateriaAR> getMateriasPorAluno(AlunoAR aluno){
        ArrayList<MateriaAR> materias = new ArrayList<MateriaAR>();
        
        MySQL bancoDados = new MySQL();
        String sql = "SELECT * FROM materia WHERE aluno='"+aluno.getID()+"';";
        ConjuntoResultados linhas = bancoDados.executaSelect(sql);  
      
        while(linhas.next()){
            MateriaAR n = new MateriaAR();
            n.setNome(linhas.getString("nome"));
            n.setProfessor(linhas.getString("professor"));
            materias.add(n);
        }
        return materias;    
    }
}
