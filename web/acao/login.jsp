<%-- 
    Document   : login
    Created on : 06/06/2012, 16:07:30
    Author     : fernando_mota
--%>

<%@page import="modelo.AlunoAR"%>
<%@page import="dao.AlunoDAO"%>
<%
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    AlunoAR aluno = AlunoDAO.getAluno(email, senha);
    if (aluno != null) {
        session.setAttribute("aluno", aluno.getID());
       response.sendRedirect("../pagina_inicial.jsp");

    } else {

        out.print("Erro: Nome ou senha incorretos<br />");
        out.print("<a href=\"../index.jsp\">Voltar</a>");
    }

%>