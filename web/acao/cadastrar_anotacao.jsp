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
    AnotacaoAR anotacao = new AnotacaoAR();
    anotacao.setAluno(Sessao.getAlunoLogado(request));
    anotacao.setTitulo(titulo);
    anotacao.setTexto(texto);

    if (anotacao.insert()) {
        response.sendRedirect("../cadastrar_anotacao.jsp?situacao=cadastro_sucesso");
    } else {
        response.sendRedirect("../cadastrar_anotacao.jsp?situacao=cadastro_sucesso");
    }

%>