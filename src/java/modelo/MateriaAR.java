/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.Random;
import util.ConjuntoResultados;
import util.MySQL;

/**
 *
 * @author fernando_mota
 */
public class MateriaAR implements AR{
    protected int id;
    protected String nome;
    protected String professor;
    protected AlunoAR aluno;
    protected GrupoAR grupo;
    public MateriaAR() {
    }

    public MateriaAR(String nome, String professor) {
        this.nome = nome;
        this.professor = professor;
    }
    public MateriaAR(String nome, String professor, int atividade_mes) {
        this.nome = nome;
        this.professor = professor;
    }
    public MateriaAR(int id, String nome, String professor) {
        this.nome = nome;
        this.professor = professor;
    }

    
    public int getID() {
        return id;
    }

    public void setID(int id) {
        this.id = id;
    }

    public AlunoAR getAluno() {
        return aluno;
    }
    public int getAlunoID() {
        if(aluno == null){
            return 0;
        }
        return aluno.getID();
    }
    public void setAluno(AlunoAR aluno) {
        this.aluno = aluno;
    }
    public void setAluno(int aluno) {
        this.aluno = new AlunoAR();
        this.aluno.setID(aluno);
        this.aluno.load();
    }
    public GrupoAR getGrupo() {
        return grupo;
    }

    public void setGrupo(int grupo) {
        this.grupo = new GrupoAR();
        this.grupo.setID(grupo);
        this.grupo.load();
    }
    public void setGrupo(GrupoAR grupo) {
        this.grupo = grupo;
    }
    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getProfessor() {
        return professor;
    }

    public void setProfessor(String professor) {
        this.professor = professor;
    }
    public int getAtividadesCount(){
        String sql1 = "SELECT COUNT(id) AS num FROM prova WHERE materia='"+this.id+"';";
        String sql2 = "SELECT COUNT(id) AS num FROM trabalho WHERE materia='"+this.id+"';";
        MySQL cliente = MySQL.getInstance();
        ConjuntoResultados num1 = cliente.executaSelect(sql1);
        ConjuntoResultados num2 = cliente.executaSelect(sql2);
        int numero1 = 0;
        int numero2 = 0;
        if(num1.next()){
            numero1 = num1.getInt("num");
        }
        if(num2.next()){
            numero2 = num2.getInt("num");
        }
        return numero1+numero2;
    }
    public int getAtividadesPeriodo(String data_inicio, String data_fim){
        String sql1 = "SELECT COUNT(id) AS num FROM prova WHERE materia='"+this.id+"' AND data>='"+data_inicio+"' AND data<'"+data_fim+"';";
        String sql2 = "SELECT COUNT(id) AS num FROM trabalho WHERE materia='"+this.id+"' AND data>='"+data_inicio+"' AND data<'"+data_fim+"';";
        System.out.println(sql1);
        System.out.println(sql2);
        MySQL cliente = MySQL.getInstance();
        ConjuntoResultados num1 = cliente.executaSelect(sql1);
        int numero1 = 0;
        if(num1.next()){
            numero1 = num1.getInt("num");
        }
        int numero2 = 0;
        ConjuntoResultados num2 = cliente.executaSelect(sql2);
        if(num2.next()){
            numero2 = num2.getInt("num");
        }
        return numero1+numero2;
    }
    public boolean load() {
        MySQL cliente = MySQL.getInstance();
        String sql = "SELECT * FROM materia WHERE id='"+this.getID()+"';";
        ConjuntoResultados linha = cliente.executaSelect(sql);
        if(linha.next()){
            this.setAluno(linha.getInt("aluno"));
            this.setGrupo(linha.getInt("grupo"));
            this.setProfessor(linha.getString("professor"));
            this.setNome(linha.getString("nome"));
            return true;
        }
        return false;
    }

    public boolean insert() {
        MySQL cliente = MySQL.getInstance();
        String sql = "INSERT INTO materia(id, nome, professor, grupo, aluno) "
                + "VALUES("+this.getID()+",'"+this.getNome()+"', "
                + "'"+this.getProfessor()+"', "+this.getGrupoSQL()+", "+this.getAlunoSQL()+");";
        return cliente.executaInsert(sql);

    }
    public boolean update() {
        MySQL cliente = MySQL.getInstance();
        String sql = "UPDATE materia SET nome='"+this.getNome()+"',professor='"+this.getProfessor()+"',"
                + "grupo="+this.getGrupoSQL()+",aluno="+this.getAlunoSQL()+" WHERE id='"+this.getID()+"';";
        return cliente.executaUpdate(sql);
    }

    public boolean delete() {
        MySQL cliente = MySQL.getInstance();
        String sql = "DELETE FROM materia WHERE id='"+this.getID()+"';";
        return cliente.executaDelete(sql);
    }

    private String getGrupoSQL() {
        if(this.grupo == null){
            return "NULL";
        }
        return ""+this.grupo.getID();
    }
    private String getAlunoSQL() {
        if(this.aluno == null){
            return "NULL";
        }
        return ""+this.aluno.getID();
    }
}
