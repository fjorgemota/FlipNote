<%-- 
    Document   : editar_grupo
    Created on : Jun 19, 2012, 4:57:59 PM
    Author     : HP
--%>

<%@page import="modelo.GrupoAR"%>
<%@page import="util.Sessao"%>
<%
    Sessao.verificaSeNaoEstaLogadoERedireciona(request, response);
    String nome = request.getParameter("nome");
    String descricao = request.getParameter("descricao");
    GrupoAR grupo = new GrupoAR();
    grupo.setAluno(Sessao.getAlunoLogado(request));
    grupo.setDescricao(descricao);
    grupo.setNome(nome);

    if (grupo.insert()) {
       response.sendRedirect("../editar_grupos.jsp?situacao=cadastro_sucesso");
    } else {
       response.sendRedirect("../editar_grupos.jsp?situacao=cadastro_erro");
    }

%>