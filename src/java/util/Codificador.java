/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author fernando_mota
 */
public class Codificador {
    /* O metodo abaixo usa uma biblioteca do Java para codificar a senha de
     * tal forma que...se o sistema for invadido, o hacker não saberá das senhas 
     * dos usuários..
     * Ela está disponível na internet, e pode ser um tanto nerd...por isso..
     * me desculpem desde já :p
     */
    public static String codifica(String str) {
        MessageDigest md;
        try {
            md = MessageDigest.getInstance("SHA");
        } catch (NoSuchAlgorithmException ex) {
            return "";
        }
        md.update(str.getBytes());
        BigInteger hash = new BigInteger(1, md.digest());
        String theHash = hash.toString(16);
        return theHash;
    }
    /* Preciso mesmo dizer o que o metodo abaixo faz? */
    public static boolean compara(String hash, String str){
        return hash.equals(codifica(str));
    }
}
