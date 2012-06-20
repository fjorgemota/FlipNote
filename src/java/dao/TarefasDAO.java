/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.util.ArrayList;
import modelo.AlunoAR;
import modelo.ProvaAR;
import modelo.TarefaBaseAR;
import modelo.TrabalhoAR;
import util.ConjuntoResultados;
import util.MySQL;

/**
 *
 * @author fernando_mota
 */
public class TarefasDAO {
    public static ArrayList<TarefaBaseAR> getTodasTarefas(AlunoAR aluno,String data_inicio, String data_fim){
        String sql = "SELECT *, 'prova' as tipo FROM prova WHERE data>=\""+data_inicio+"\" AND data <= \""+data_fim+"\"  union SELECT *, 'trabalho' as tipo FROM trabalho WHERE data>=\""+data_inicio+"\" AND data <= \""+data_fim+"\" ORDER BY data ASC";
        MySQL db = MySQL.getInstance();
        ConjuntoResultados linhas = db.executaSelect(sql);
        ArrayList<TarefaBaseAR> tarefas = new ArrayList<TarefaBaseAR>();
        while(linhas.next()){
            TarefaBaseAR tarefa;
            if(linhas.getString("tipo").equals("prova")){
                tarefa = new ProvaAR();
                System.out.println("Cadastrando prova");
            }
            else{
                tarefa = new TrabalhoAR();
                System.out.println("Cadastrando Trabalho");
            }
            tarefa.setID(linhas.getInt("id"));
            tarefa.setMateria(linhas.getInt("materia"));
            tarefa.setData(linhas.getString("data"));
            tarefa.setDescricao(linhas.getString("descricao"));
            tarefa.setNotificacao(linhas.getString("notificacao"));
            tarefa.setCriador(linhas.getInt("aluno"));
            tarefas.add(tarefa);
        }
        return tarefas;
    }
    public static ArrayList<TarefaBaseAR> getTodasTarefas(AlunoAR aluno){
        String sql = "SELECT *, 'prova' as tipo FROM prova UNION SELECT *, 'trabalho' as tipo FROM trabalho ORDER BY data ASC";
        MySQL db = MySQL.getInstance();
        ConjuntoResultados linhas = db.executaSelect(sql);
        ArrayList<TarefaBaseAR> tarefas = new ArrayList<TarefaBaseAR>();
        while(linhas.next()){
            TarefaBaseAR tarefa;
            if(linhas.getString("tipo").equals("prova")){
                tarefa = new ProvaAR();
            }
            else{
                tarefa = new TrabalhoAR();
            }
            tarefa.setID(linhas.getInt("id"));
            tarefa.setMateria(linhas.getInt("materia"));
            tarefa.setData(linhas.getString("data"));
            tarefa.setDescricao(linhas.getString("descricao"));
            tarefa.setNotificacao(linhas.getString("notificacao"));
            tarefa.setCriador(linhas.getInt("aluno"));
            tarefas.add(tarefa);
        }
        return tarefas;
    }
}
