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
    String id = request.getParameter("id");
    GrupoAR grupo = new GrupoAR();
    
    grupo.setAluno(Sessao.getAlunoLogado(request));
    grupo.setID(Integer.parseInt(id));
    grupo.setDescricao(descricao);
    grupo.setNome(nome);

    if (grupo.update()) {
        response.sendRedirect("../editar_grupo.jsp?situacao=atualizado_sucesso&id="+id);

    } else {
        response.sendRedirect("../editar_grupo.jsp?situacao=atualizado_erro&id="+id);
    }

%>