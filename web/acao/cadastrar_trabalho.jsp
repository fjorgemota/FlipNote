<%-- 
    Document   : cadastrar_trabalho
    Created on : Jun 14, 2012, 2:11:36 PM
    Author     : HP
--%>
<%@page import="modelo.TarefaBaseAR"%>
<%@page import="modelo.TrabalhoAR"%>
<%    
    String descricao = request.getParameter("descricao");
    String data = request.getParameter("data");
    String notificacao = request.getParameter("notificacao");
    String materia = request.getParameter("materia");
    
    
    TrabalhoAR trabalho = new TrabalhoAR();
    trabalho.setDescricao(descricao);
    trabalho.setData(data);
    trabalho.setNotificacao(notificacao);
    trabalho.setMateria(Integer.parseInt(materia));
    
    
    if (trabalho.insert()) {
        //out.print(sql);
        response.sendRedirect("../index.jsp?situacao_cadastro=sucesso");
    } else {
        response.sendRedirect("../cadastrar_sucesso.jsp?situacao_cadastro=erro");
    }
    
%>