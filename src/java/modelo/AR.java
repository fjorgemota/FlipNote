/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author fernando_mota
 */
public interface AR {
    /**
     * Carrega um item do banco de dados a partir
     * da chave primï¿½ria
     */
    public void load();
    
    /**
     * Insere um ï¿½tem no banco de dados
     * a partir dos valores informados nos atributos do objeto
     */
    public void insert();
    
    /**
     * Atualiza um ï¿½tem no banco de dados
     * a partir dos valores informados nos atributos do objeto
     */
    public void update();
    
    /**
     * Deleta um ítem no banco de dados
     * a partir da chave primï¿½ria
     */
    public void delete();
}
