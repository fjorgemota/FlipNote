/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;


/**
 *
 * @author fernando_mota
 */
public class TrabalhoAR extends TarefaBaseAR{

    public boolean load() {
        return this.carrega("trabalho");
    }

    public boolean insert() {
        return this.insere("trabalho");
    }

    public boolean update() {
         return this.atualiza("trabalho");
    }

    public boolean delete() {
         return this.apaga("trabalho");
    }
    public String getEditLink() {
        return "editar_trabalho.jsp?id="+this.getID();
    }
    public String getDeleteLink() {
        return "acao/apagar_trabalho.jsp?id="+this.getID();
    }

   
}
