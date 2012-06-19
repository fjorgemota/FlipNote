<%-- 
    Document   : apagar_grupo
    Created on : Jun 5, 2012, 4:05:10 PM
    Author     : fernando_mota
--%>
<%@page import="util.Sessao"%>
<%@page import="modelo.GrupoAR"%>
<%
    Sessao.verificaSeNaoEstaLogadoERedireciona(request, response);
    String id = request.getParameter("id");
    GrupoAR grupo = new GrupoAR();
    grupo.setID(Integer.parseInt(id));
    if(!grupo.load()){
        response.sendRedirect("../grupos_listar.jsp?situacao=apagado_erro");
    }
    if(grupo.getAluno().getID() == Sessao.getAlunoLogado(request).getID()){
        if(grupo.delete()){
            response.sendRedirect("../grupos_listar.jsp?situacao=apagado_sucesso");
        }
        else{
            response.sendRedirect("../grupos_listar.jsp?situacao=apagado_erro");
        }
    }   
    else{
        response.sendRedirect("../grupos_listar.jsp?situacao=foi_hacker");
    }

%>
