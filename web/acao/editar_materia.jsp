<%-- 
    Document   : cadastrar_grupos
    Created on : Jun 5, 2012, 4:05:10 PM
    Author     : HP
--%>
<%@page import="util.Sessao"%>
<%@page import="modelo.MateriaAR"%>
<%
    Sessao.verificaSeNaoEstaLogadoERedireciona(request, response);
    String nome = request.getParameter("nome");
    String professor = request.getParameter("professor");
    String id = request.getParameter("id");
    MateriaAR materia = new MateriaAR();
    materia.setID(Integer.parseInt(id));
    materia.setAluno(Sessao.getAlunoLogado(request));
    materia.setNome(nome);
    materia.setProfessor(professor);
    if (materia.update()) {
        response.sendRedirect("../editar_materia.jsp?situacao=atualizado_sucesso&id="+id);

    } else {
        response.sendRedirect("../editar_materia.jsp?situacao=atualizado_erro&id="+id);
    }

%>
