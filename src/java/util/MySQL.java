package util;

import java.io.*;
import java.sql.*; 
import java.util.logging.Level;
import java.util.logging.Logger;

public class MySQL
{
    Connection conn;
    String user = "root";
    String pass = "senai2012";
    String database = "flipnote";
    String host = "localhost";
    protected static MySQL instance = null;
    public MySQL()
    {
       String url = "jdbc:mysql://"+host+":3306/"+database;             

       try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(url,user,pass);
            
        } catch (ClassNotFoundException e){
            System.out.println("Driver MySQL não encontrado.");
            System.exit(0);
        } catch (SQLException e){
            System.out.println("Erro na conexão com a base de dados: "+e);
        }        
    }
    public static MySQL getInstance(){
        if(MySQL.instance == null){
            MySQL.instance = new MySQL();
        }
        return MySQL.instance;
    }
    private Statement getStatement(){
        try {
            return conn.createStatement();
        } catch (SQLException ex) {
            System.out.println("Erro na conexão com a base de dados: "+ex);
        }
        return null;
    }
    public boolean executaInsert(String insert)
    {
        try {
            this.getStatement().execute(insert);
            return true;
        } catch (SQLException e){
            System.out.println("Erro na Inclusão do registro "+e);
            return false;
        }
    }
    
    public boolean executaUpdate(String insert)
    {
        try {
            this.getStatement().execute(insert);
            return true;
        } catch (SQLException e){
            System.out.println("Erro na atualização do registro "+e);
            return false;
        }
    }
    
    public boolean executaDelete(String delete)
    {
        try {
           this.getStatement().execute(delete);
            return true;
        } catch (SQLException e){
            System.out.println("Erro na exclusão do registro "+e);
            return false;
        }
    }
    
    public ConjuntoResultados executaSelect(String select)
    {
        try {
            ResultSet rs = this.getStatement().executeQuery(select);
            ConjuntoResultados cr = new ConjuntoResultados(rs);
            return cr;
        } catch (SQLException e){
            System.out.println("Erro na seleção do registro "+e);
            return null;
        }
    }
    
}
