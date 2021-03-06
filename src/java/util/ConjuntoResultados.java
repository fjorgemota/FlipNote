package util;

import java.sql.*; 

public class ConjuntoResultados
    {
        private ResultSet rs;
        
        public ConjuntoResultados(ResultSet rs){
            this.rs = rs;
        }
        
        public boolean next(){
            try{
                return rs.next();
            }catch(SQLException sqlError){
                System.out.println("Erro na iteracao: "+sqlError);
                return false;
            }
        }
        
        public String getString(String t){
            try{
                return rs.getString(t);
            }catch(SQLException sqlError){
                System.out.println("Erro na captura da String "+t+": "+sqlError);
                return "";
            }
        }
        
        public int getInt(String t){
            try{
                return rs.getInt(t);
            }catch(SQLException sqlError){
                System.out.println("Erro na captura do Inteiro "+t+": "+sqlError);
                return 0;
            }
        }
        
        public double getDouble(String t){
            try{
                return rs.getDouble(t);
            }catch(SQLException sqlError){
                System.out.println("Erro na captura do Double "+t+": "+sqlError);
                return 0;
            }
        }
        public float getFloat(String t){
            try{
                return rs.getFloat(t);
            }catch(SQLException sqlError){
                System.out.println("Erro na captura do Float "+t+": "+sqlError);
                return 0;
            }
        }
    }