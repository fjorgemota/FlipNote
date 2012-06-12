<%-- 
    Document   : apagar_grupo
    Created on : Jun 5, 2012, 4:05:10 PM
    Author     : fernando_mota
--%>
<%@page import="util.Sessao"%>
<%@page import="modelo.GrupoAR"%>
<%
    Sessao.verificaLoginERedireciona(request, response);
    String id = request.getParameter("id");
    GrupoAR grupo = new GrupoAR();
    grupo.setID(Integer.parseInt(id));
    if(!grupo.load()){
        out.print("Erro: Houve um erro ao carregar o registro do banco de dados.");
        out.print("Tente novamente mais tarde.<br />");
        out.print("<a href=\"../grupos_listar.jsp\">Voltar</a>");
    }
       else if(grupo.getAluno() == Sessao.getAlunoLogado(request)){
        if(grupo.delete()){
            response.sendRedirect("../apagado_sucesso.jsp");
        }
        else{
            out.print("Erro: Houve um erro ao apagar o registro do banco de dados.");
            out.print("Tente novamente mais tarde.<br />");
            out.print("<a href=\"../grupos_listar.jsp\">Voltar</a>");
        }
    }   
    else{
        out.print("Erro: Hackers não são permitidos por aqui..engraçadinho..<br />");
        out.print("<a href=\"../pagina_inicial.jsp\">Voltar</a>");
    }

%>
