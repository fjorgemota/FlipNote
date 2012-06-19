/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import modelo.AlunoAR;

/**
 *
 * @author fernando_mota
 */
public class Sessao {
    protected static int usuarioID;
    protected static AlunoAR usuarioLogado;
    public static AlunoAR getAlunoLogado(HttpServletRequest request) {
        Object id =      request.getSession(true).getAttribute("aluno");
        if(id == null){
            return new AlunoAR();// Retorna um aluno vazio justamente por estar..vazio
        }
        if((Integer)id == usuarioID && usuarioLogado != null){
            return usuarioLogado;
        }
        AlunoAR n = new AlunoAR();
        n.setID((Integer)id); // Seta só o ID e dá load gracas a senha
        if (!n.load()) {
            n.setID(0);
            return n;
        }  
        usuarioLogado = n;
        usuarioID = n.getID();
        return n;
    }
    public static boolean estaLogado(HttpServletRequest request) {
        return getAlunoLogado(request).getID() != 0;
    }
    public static void verificaSeNaoEstaLogadoERedireciona(HttpServletRequest request, HttpServletResponse response){
        if(!estaLogado(request)){
            try {
                response.sendRedirect("/FlipNote/index.jsp?situacao=foi_hacker");
            } catch (IOException ex) {
                return;
            }
        }
    }
    public static void verificaSeEstaLogadoERedireciona(HttpServletRequest request, HttpServletResponse response){
        if(estaLogado(request)){
            try {
                response.sendRedirect("/FlipNote/pagina_inicial.jsp");
            } catch (IOException ex) {
                return;
            }
        }
    }
}
