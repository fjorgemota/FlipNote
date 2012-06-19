<%-- 
    Document   : cadastrar_trabalho
    Created on : Jun 14, 2012, 2:11:36 PM
    Author     : HP
--%>
<%@page import="util.Sessao"%>
<%@page import="modelo.TarefaBaseAR"%>
<%@page import="modelo.TrabalhoAR"%>
<%    
    Sessao.verificaSeNaoEstaLogadoERedireciona(request, response);
    String descricao = request.getParameter("descricao");
    String data = request.getParameter("data");
    String notificacao = request.getParameter("notificacao");
    String materia = request.getParameter("materia");
    
    
    TrabalhoAR trabalho = new TrabalhoAR();
    trabalho.setDescricao(descricao);
    trabalho.setData(data);
    trabalho.setNotificacao(notificacao);
    trabalho.setMateria(Integer.parseInt(materia));
    trabalho.setCriador(Sessao.getAlunoLogado(request));
    
    if (trabalho.insert()) {
        //out.print(sql);
        response.sendRedirect("../cadastrar_trabalhos.jsp?situacao=cadastro_sucesso");
    } else {
        response.sendRedirect("../cadastrar_trabalhos.jsp?situacao=cadastro_erro");
    }
    
%>