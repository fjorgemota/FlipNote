/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

/**
 *
 * @author fernando_mota
 */
public class HTMLUtil {

    public static String getEditButton(String actname, int id){
        String html = "<a href=\"edita_"+actname+".jsp?id="+id+"\" class=\"btn btn-success\" >"
                + "Editar"
                + "</a>";
        return html;
    }
    public static String getDeleteButton(String actname, int id){
        String html = "<a href=\"acao/apaga_"+actname+".jsp?id="+id+"\" class=\"btn btn-danger\" >"
                + "Apagar"
                + "</a>";
        return html;
    }
    public static String getActionsButtons(String actname, int id){
        String html = "<div class=\"row-fluid\">"
                + "<div class=\"span4\" style=\"text-align: right;\">"
                + getEditButton(actname, id)
                + "</div>"
                + "<div class=\"span4\">"
                + getDeleteButton(actname, id)
                + "</div>"
                + "</div>";
        return html;
    }
    public static String initFormCadastrar(String actname){
        return "<form action=\"acao/cadastrar_"+actname+".jsp\" method=\"POST\">";
    }
    public static String initFormEditar(String actname){
        return "<form action=\"acao/editar_"+actname+".jsp\" method=\"POST\">";
    }
    public static String endForm(){
        return "</form>";
    }
    public static String alerta(String msg){
        String html = "jQuery.jnotifica(\""+msg+"\",{"
            + "\"position\":\"bottom\","
            + "  width     : 300,"
            + " opacity   : 0.5,"
            + " margin    : 30,"
            + "classes   : \"rounded_corners\""
            + "});";
        return html;
    }
}
