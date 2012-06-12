<%-- 
    Document   : cadastrar_avaliacao
    Created on : 12/06/2012, 15:52:33
    Author     : fernando_mota
--%>

<%@page import="util.Data"%>
<%@page import="util.Sessao"%>
<%@page import="modelo.ProvaAR"%>
<%
    Sessao.verificaLoginERedireciona(request, response);
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
        response.sendRedirect("../cadastrado_sucesso.jsp?link=cadastrar_prova.jsp");

    } else {
        response.sendRedirect("../cadastrado_erro.jsp?link=cadastrar_prova.jsp");
    }

%>

