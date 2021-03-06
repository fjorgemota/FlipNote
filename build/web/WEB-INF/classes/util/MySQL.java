package util;

import java.io.*;
import java.sql.*; 
import javax.swing.*;

public class MySQL
{
    Statement statement;    
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
            Connection conn = DriverManager.getConnection(url,user,pass);
            statement = conn.createStatement();
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
    public boolean executaInsert(String insert)
    {
        try {
            statement.execute(insert);
            return true;
        } catch (SQLException e){
            System.out.println("Erro na Inclusão do registro "+e);
            return false;
        }
    }
    
    public boolean executaUpdate(String insert)
    {
        try {
            statement.execute(insert);
            return true;
        } catch (SQLException e){
            System.out.println("Erro na atualização do registro "+e);
            return false;
        }
    }
    
    public boolean executaDelete(String delete)
    {
        try {
            statement.execute(delete);
            return true;
        } catch (SQLException e){
            System.out.println("Erro na exclusão do registro "+e);
            return false;
        }
    }
    
    public ConjuntoResultados executaSelect(String select)
    {
        try {
            ResultSet rs = statement.executeQuery(select);
            ConjuntoResultados cr = new ConjuntoResultados(rs);
            return cr;
        } catch (SQLException e){
            JOptionPane.showMessageDialog(null, ""+e, "Erro no SELECT", JOptionPane.ERROR_MESSAGE);
            System.exit(0);
            return null;
        }
    }
    
}
