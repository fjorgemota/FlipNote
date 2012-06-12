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
       response.sendRedirect("../cadastrado_sucesso.jsp");

    } else {

        out.print("Erro: por favor, tente novamente<br />");
        out.print("<a href=\"../cadastrar_usuario.jsp\">Voltar</a>");
    }

%>
