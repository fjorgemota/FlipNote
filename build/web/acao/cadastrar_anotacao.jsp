<%-- 
    Document   : cadastrar_anotacao
    Created on : Jun 13, 2012, 2:38:22 PM
    Author     : HP
--%>

<%@page import="modelo.AnotacaoAR"%>
<%@page import="util.Sessao"%>


<%
    Sessao.verificaLoginERedireciona(request, response);
    String titulo = request.getParameter("titulo");
    String texto = request.getParameter("texto");
    AnotacaoAR anotacao = new AnotacaoAR();
    anotacao.setAluno(Sessao.getAlunoLogado(request));
    anotacao.setTitulo(titulo);
    anotacao.setTexto(texto);

    if (anotacao.insert()) {
        response.sendRedirect("../cadastrado_sucesso.jsp?link=cadastrar_anotacao.jsp");
    } else {
        response.sendRedirect("../cadastrado_erro.jsp?link=cadastrar_anotacao.jsp");
    }

%>