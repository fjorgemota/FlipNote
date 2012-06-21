<%@page import="util.HTMLUtil"%>
<%@page import="dao.AnotacaoDAO"%>
<%@page import="modelo.AnotacaoAR"%>
<%@page import="java.util.ArrayList"%>
<%@page import="util.Sessao"%>
<%
Sessao.verificaSeNaoEstaLogadoERedireciona(request, response);
%>
<html>
    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Listar anotações"/>
    </jsp:include>
    <body>
        <div class="navbar navbar-fixed-top">
            <jsp:include page="includes/navbar.jsp"/>
        </div>
        <div class="container-fluid">
            <div class="row-fluid">
                <div class="span3">
                    <jsp:include page="includes/menu.jsp"/>
                </div>
                <div class="span9" id="tablerow">
                    <div class="row-fluid">
                        <div class="span12">
                            <h1>Lista de Anotações</h1>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span4">
                            ID
                        </div>
                        <div class="span4">
                            Titulo
                        </div>
                        <div class="span4">
                            Ações
                        </div>
                    </div>
                    
                     <%
                        ArrayList<AnotacaoAR> anotacoes = AnotacaoDAO.getAnotacoesPorAluno(Sessao.getAlunoLogado(request));
                        for (AnotacaoAR anotacao : anotacoes) {
                            out.print("<div class=\"row-fluid\">");
                            out.print("<div class=\"span4\">");
                            out.print(anotacao.getID());
                            out.print("</div>");

                            out.print("<div class=\"span4\">");
                            out.print(anotacao.getTitulo());
                            out.print("</div>");
                            
                            
                            out.print("<div class=\"span4\">");
                            out.print(HTMLUtil.getActionsButtons("anotacao", anotacao.getID()));
                            out.print("</div>");
                            
                            out.print("</div>");

                        }
                    %>
                 </div><!--/span-->
            </div>
        </div>
        <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
