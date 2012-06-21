<%@page import="modelo.TrabalhoAR"%>
<%@page import="dao.TrabalhosDAO"%>
<%@page import="util.Data"%>
<%@page import="modelo.ProvaAR"%>
<%@page import="modelo.ProvaAR"%>
<%@page import="dao.ProvasDAO"%>
<%@page import="util.HTMLUtil"%>
<%@page import="dao.MateriaDAO"%>
<%@page import="util.Sessao"%>
<%@page import="modelo.MateriaAR"%>
<%@page import="java.util.ArrayList"%>
<%
    Sessao.verificaSeNaoEstaLogadoERedireciona(request, response);
%>
<html>

    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Listar matérias"/>
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
                            <h1>Lista de Trabalhos</h1>
                        </div>
                    </div>
                    <div class="row-fluid" id="rowtitle">
                        <div class="span3">
                            Descrição
                        </div>
                        <div class="span3">
                            Criador
                        </div>
                        <div class="span3">
                            Data
                        </div>
                        <div class="span3">
                            Ações
                        </div>
                    </div>

                    <%
                        ArrayList<TrabalhoAR> trabalhos = TrabalhosDAO.getTrabalhosPorAluno(Sessao.getAlunoLogado(request));
                        for (TrabalhoAR trabalho: trabalhos) {
                            out.print("<div class=\"row-fluid\">");
                            out.print("<div class=\"span3\">");
                            out.print(trabalho.getDescricao());
                            out.print("</div>");

                            out.print("<div class=\"span3\">");
                            out.print(trabalho.getCriador().getPrimeiroNome());
                            out.print("</div>");
                            out.print("<div class=\"span3\">");
                            out.print(Data.getReadableDate(trabalho.getData()));
                            out.print("</div>");

                            out.print("<div class=\"span3\">");
                            out.print(HTMLUtil.getActionsButtons("trabalho", trabalho.getID()));
                            out.print("</div>");

                        }
                    %>


                </div><!--/span-->

            </div>
            <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
