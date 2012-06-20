/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;


/**
 *
 * @author fernando_mota
 */
public class ProvaAR extends TarefaBaseAR{

    public boolean load() {
        return this.carrega("prova");
    }

    public boolean insert() {
        return this.insere("prova");
    }

    public boolean update() {
         return this.atualiza("prova");
    }

    public boolean delete() {
         return this.apaga("prova");
    }

    public String getEditLink() {
        return "editar_prova.jsp?id="+this.getID();
    }
    public String getDeleteLink() {
        return "acao/apagar_trabalho.jsp?id="+this.getID();
    }

   
}