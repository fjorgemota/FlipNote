<%-- 
    Document   : cadastrar_grupos
    Created on : Jun 5, 2012, 4:05:10 PM
    Author     : HP
--%>
<%@page import="util.Sessao"%>
<%@page import="modelo.MateriaAR"%>
<%
    Sessao.verificaLoginERedireciona(request, response);
    String nome = request.getParameter("nome");
    String professor = request.getParameter("professor");
    MateriaAR materia = new MateriaAR();
    materia.setAluno(Sessao.getAlunoLogado(request));
    materia.setNome(nome);
    materia.setProfessor(professor);
    if (materia.insert()) {
        response.sendRedirect("../cadastrado_sucesso.jsp?link=cadastrar_materia.jsp");

    } else {
        response.sendRedirect("../cadastrado_erro.jsp?link=cadastrar_materia.jsp");
    }

%>
