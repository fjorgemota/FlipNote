<%-- 
    Document   : cadastrar_grupos
    Created on : Jun 5, 2012, 4:05:10 PM
    Author     : HP
--%>
<%@page import="util.Sessao"%>
<%@page import="modelo.GrupoAR"%>
<%
    Sessao.verificaLoginERedireciona(request, response);
    String nome = request.getParameter("nome");
    String descricao = request.getParameter("descricao");
    GrupoAR grupo = new GrupoAR();
    grupo.setAluno(Sessao.getAlunoLogado(request));
    grupo.setDescricao(descricao);
    grupo.setNome(nome);

    if (grupo.insert()) {
       response.sendRedirect("../cadastrado_sucesso.jsp?link=cadastrar_grupos.jsp");
    } else {
       response.sendRedirect("../cadastrado_erro.jsp?link=cadastrar_grupos.jsp");
    }

%>
