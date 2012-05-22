/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import modelo.Materia;

/**
 *
 * @author fernando_mota
 */
public class MateriaDAO {
    public static ArrayList<Materia> listaAtividadesPorMes(int criador){
        ArrayList<Materia> materias = new ArrayList<Materia>();
        materias.add(new Materia("Portugues", "Rebeca"));
        materias.add(new Materia("Matematica", "Carlos"));
        materias.add(new Materia("Geografia", "Mario"));
        materias.add(new Materia("Historia", "Raquel"));
        materias.add(new Materia("Quimica", "Lauro"));
        return materias;
    }
    public static ArrayList<Materia> lista(){
        ArrayList<Materia> materias = new ArrayList<Materia>();
        materias.add(new Materia("Portugues", "Rebeca"));
        materias.add(new Materia("Matematica", "Carlos"));
        materias.add(new Materia("Geografia", "Mario"));
        materias.add(new Materia("Historia", "Raquel"));
        materias.add(new Materia("Quimica", "Lauro"));
        return materias;
    }
}
