<%-- 
    Document   : login
    Created on : 06/06/2012, 16:07:30
    Author     : fernando_mota
--%>

<%@page import="util.Sessao"%>
<%@page import="modelo.AlunoAR"%>
<%@page import="dao.AlunoDAO"%>
<%
    Sessao.verificaSeEstaLogadoERedireciona(request, response);
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    AlunoAR aluno = AlunoDAO.getAluno(email, senha);
    if (aluno != null) {
        session.setAttribute("aluno", aluno.getID());
       response.sendRedirect("../pagina_inicial.jsp?situacao=login_sucesso");

    } else {

        response.sendRedirect("../index.jsp?situacao=login_erro");
    }

%>