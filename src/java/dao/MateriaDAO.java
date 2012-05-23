/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import modelo.Materia;
import util.ConjuntoResultados;
import util.MySQL;

/**
 *
 * @author fernando_mota
 */
public class MateriaDAO {
    public static ArrayList<Materia> listaAtividadesPorMes(int criador){
        ArrayList<Materia> materias = new ArrayList<Materia>();
         
        
        MySQL bancoDados = new MySQL();
        String sql = "select * from materia";
        ConjuntoResultados linhas = bancoDados.executaSelect(sql);  
      
        while(linhas.next()){
            Materia n = new Materia();
          n.setNome(linhas.getString("nome"));
          n.setProfessor(linhas.getString("professor"));
            
            materias.add(n);
        }
        return materias;                                      
    }
    public static ArrayList<Materia> lista(){
        ArrayList<Materia> materias = new ArrayList<Materia>();
        
        MySQL bancoDados = new MySQL();
        String sql = "select * from materia";
        ConjuntoResultados linhas = bancoDados.executaSelect(sql);  
      
        while(linhas.next()){
            Materia n = new Materia();
          n.setNome(linhas.getString("nome"));
          n.setProfessor(linhas.getString("professor"));
            
            materias.add(n);
        }
        return materias;    
    }
}
