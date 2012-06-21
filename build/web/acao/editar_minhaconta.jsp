<%-- 
    Document   : editar_minhaconta
    Created on : Jun 21, 2012, 4:26:34 PM
    Author     : HP
--%>
<%@page import="modelo.AlunoAR"%>
<%@page import="util.Sessao"%>
<%
    Sessao.verificaSeNaoEstaLogadoERedireciona(request, response);
    String nome = request.getParameter("nome");
    String email = request.getParameter("email");
    String id = request.getParameter("id");
   
    AlunoAR aluno = new AlunoAR();
    
    aluno.setNome(nome);
    aluno.setID(Integer.parseInt(id));
    aluno.setEmail(email);
    

    if (aluno.update()) {
        response.sendRedirect("../editar_minhaconta.jsp?situacao=atualizado_sucesso&id="+id);

    } else {
        response.sendRedirect("../editar_minhaconta.jsp?situacao=atualizado_erro&id="+id);
    }

%>