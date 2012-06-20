<%-- 
    Document   : apagar_anotacao
    Created on : Jun 19, 2012, 4:23:23 PM
    Author     : HP
--%>
<%@page import="modelo.AnotacaoAR"%>
<%@page import="util.Sessao"%>
<%
    Sessao.verificaSeNaoEstaLogadoERedireciona(request, response);
    String id = request.getParameter("id");
    AnotacaoAR anotacao = new AnotacaoAR();
    anotacao.setID(Integer.parseInt(id));
    if(!anotacao.load()){
        response.sendRedirect("../anotacoes_listar.jsp?situacao=apagado_erro");
    }
       else if(anotacao.getAluno().getID() == Sessao.getAlunoLogado(request).getID()){
        if(anotacao.delete()){
            response.sendRedirect("../anotacoes_listar.jsp?situacao=apagado_sucesso");
        }
        else{
            response.sendRedirect("../anotacoes_listar.jsp?situacao=apagado_erro");
        }
    }   
    else{
        out.print("Erro: Hackers não são permitidos por aqui..engraçadinho..<br />");
        out.print("<a href=\"../pagina_inicial.jsp\">Voltar</a>");
    }

%>
