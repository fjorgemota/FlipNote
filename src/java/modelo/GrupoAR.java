/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.ArrayList;

/**
 *
 * @author fernando_mota
 */
public class GrupoAR implements AR{
    private int id;
    private String nome;
    private String descricao;


    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getID() {
        return id;
    }

    public void setID(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public boolean load() {
        return true; // Substituir pelo codigo do MySQL, inspire-se na da classe MateriaAR
    }

    public boolean insert() {
        return true; // Substituir pelo codigo do MySQL, inspire-se na da classe MateriaAR
    }

    public boolean update() {
        return true; // Substituir pelo codigo do MySQL, inspire-se na da classe MateriaAR
    }

    public boolean delete() {
        return true; // Substituir pelo codigo do MySQL, inspire-se na da classe MateriaAR
    }

    
}
