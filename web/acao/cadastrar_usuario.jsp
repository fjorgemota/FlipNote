<%-- 
    Document   : cadastrar_usuario
    Created on : 06/06/2012, 16:01:36
    Author     : fernando_mota
--%>

<%@page import="modelo.AlunoAR"%>
<%
    String nome = request.getParameter("nome");
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    AlunoAR aluno = new AlunoAR();
    aluno.setNome(nome);
    aluno.setEmail(email);
    aluno.setSenha(senha);
    if (aluno.insert()) {
        //out.print(sql);
        response.sendRedirect("../index.jsp?situacao=cadastro_sucesso");
    } else {
        response.sendRedirect("../cadastrar_usuario.jsp?situacao=cadastro_erro");
    }

%>
