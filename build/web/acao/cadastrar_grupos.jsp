<%-- 
    Document   : cadastrar_grupos
    Created on : Jun 5, 2012, 4:05:10 PM
    Author     : HP
--%>
<%@page import="modelo.GrupoAR"%>

<%
    String nome = request.getParameter("nome");
    String descricao = request.getParameter("descricao");
    GrupoAR grupo = new GrupoAR();
    
    grupo.setNome(nome);
    grupo.setDescricao(descricao);
     
    if (grupo.insert()) {
        //out.print(sql);
       response.sendRedirect("../cadastrado_sucesso.jsp");

    } else {

        out.print("Erro: por favor, tente novamente<br />");
        out.print("<a href=\"../pagina_inicial.jsp\">Voltar</a>");
    }

%>
