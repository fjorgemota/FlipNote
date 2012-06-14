<%-- 
    Document   : cadastrar_grupos
    Created on : Jun 5, 2012, 4:05:10 PM
    Author     : HP
--%>
<%@page import="util.Sessao"%>
<%@page import="modelo.GrupoAR"%>
<%
    Sessao.verificaSeEstaLogadoERedireciona(request, response);
    String nome = request.getParameter("nome");
    String descricao = request.getParameter("descricao");
    GrupoAR grupo = new GrupoAR();
    grupo.setAluno(Sessao.getAlunoLogado(request));
    grupo.setDescricao(descricao);
    grupo.setNome(nome);

    if (grupo.insert()) {
       response.sendRedirect("../cadastrar_grupos.jsp?situacao=cadastro_sucesso");
    } else {
       response.sendRedirect("../cadastrar_grupos.jsp?situacao=cadastro_erro");
    }

%>
