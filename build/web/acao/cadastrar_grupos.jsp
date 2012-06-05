<%-- 
    Document   : cadastrar_grupos
    Created on : Jun 5, 2012, 4:05:10 PM
    Author     : HP
--%>
<%@page import="util.MySQL"%>
<%
    String nome = request.getParameter("nome");
    String descricao = request.getParameter("descricao");

    String sql = "insert into grupo ";
    sql += "(nome, descricao) ";
    sql += "values (";
    sql += "\"" + nome + "\",";
    sql += "\"" + descricao + "\",";
    sql += ")";

    MySQL mysql = new MySQL();
    if (mysql.executaInsert(sql)) {
        //out.print(sql);
       response.sendRedirect("../cadastrado_sucesso.jsp");

    } else {

        out.print("Erro: por favor, tente novamente<br />");
        out.print("<a href=\"../cadastrar_grupos.jsp\">Voltar</a>");
    }

%>
