<%-- 
    Document   : cadastrar_grupos
    Created on : Jun 5, 2012, 4:05:10 PM
    Author     : HP
--%>
<%@page import="modelo.MateriaAR"%>
<%
    String nome = request.getParameter("nome");
    String professor = request.getParameter("professor");
    MateriaAR materia = new MateriaAR();
    materia.setAluno(1);
    materia.setNome(nome);
    materia.setProfessor(professor);
    if (materia.insert()) {
        out.print("Salvo com sucesso");
        //   response.sendRedirect("../sucesso.jsp");

    } else {

        out.print("Erro: por favor, tente novamente<br />");
        out.print("<a href=\"../cadastrar_grupos.jsp\">Voltar</a>");
    }

%>
