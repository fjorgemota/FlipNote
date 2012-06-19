<%-- 
    Document   : apagar_materia
    Created on : Jun 19, 2012, 4:20:18 PM
    Author     : HP
--%>
<%@page import="modelo.MateriaAR"%>
<%@page import="util.Sessao"%>
<%
    Sessao.verificaSeNaoEstaLogadoERedireciona(request, response);
    String id = request.getParameter("id");
    MateriaAR materia = new MateriaAR();
    materia.setID(Integer.parseInt(id));
    if(!materia.load()){
        response.sendRedirect("../materias_listar.jsp?situacao=apagado_erro");
    }
       else if(materia.getAluno().getID() == Sessao.getAlunoLogado(request).getID()){
        if(materia.delete()){
            response.sendRedirect("../materias_listar.jsp?situacao=apagado_sucesso");
        }
        else{
            response.sendRedirect("../materias_listar.jsp?situacao=apagado_erro");
        }
    }   
    else{
        out.print("Erro: Hackers não são permitidos por aqui..engraçadinho..<br />");
        out.print("<a href=\"../pagina_inicial.jsp\">Voltar</a>");
    }

%>
