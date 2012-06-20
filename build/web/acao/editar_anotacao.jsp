<%-- 
    Document   : cadastrar_anotacao
    Created on : Jun 13, 2012, 2:38:22 PM
    Author     : HP
--%>

<%@page import="modelo.AnotacaoAR"%>
<%@page import="util.Sessao"%>


<%
    Sessao.verificaSeNaoEstaLogadoERedireciona(request, response);
    String titulo = request.getParameter("titulo");
    String texto = request.getParameter("texto");
    String id = request.getParameter("id");

    AnotacaoAR anotacao = new AnotacaoAR();
    anotacao.setAluno(Sessao.getAlunoLogado(request));
    anotacao.setTitulo(titulo);
    anotacao.setTexto(texto);
    anotacao.setID(Integer.parseInt(id));

    if (anotacao.update()) {
        response.sendRedirect("../editar_anotacao.jsp?situacao=atualizado_sucesso&id=" + id);

    } else {
        response.sendRedirect("../editar_anotacao.jsp?situacao=atualizado_erro&id=" + id);
    }

%>