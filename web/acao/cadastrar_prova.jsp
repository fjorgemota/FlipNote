<%-- 
    Document   : cadastrar_avaliacao
    Created on : 12/06/2012, 15:52:33
    Author     : fernando_mota
--%>

<%@page import="util.Data"%>
<%@page import="util.Sessao"%>
<%@page import="modelo.ProvaAR"%>
<%
    Sessao.verificaSeNaoEstaLogadoERedireciona(request, response);
    String data = request.getParameter("data");
    String descricao = request.getParameter("descricao");
    String notificacao = request.getParameter("notificacao");
    String materia = request.getParameter("materia");
    ProvaAR prova = new ProvaAR();
    prova.setCriador(Sessao.getAlunoLogado(request));
    prova.setData(data);
    prova.setDescricao(descricao);
    prova.setNotificacao(notificacao);
    prova.setMateria(Integer.parseInt(materia));
    if (prova.insert()) {
        response.sendRedirect("../cadastrar_prova.jsp?situacao=cadastro_sucesso");

    } else {
        response.sendRedirect("../cadastrar_prova.jsp?situacao=cadastro_erro");
    }

%>

