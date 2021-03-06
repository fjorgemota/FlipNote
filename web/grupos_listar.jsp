<%@page import="util.HTMLUtil"%>
<%@page import="javax.swing.text.html.HTML"%>
<%@page import="java.util.ArrayList"%>
<%@page import="util.Sessao"%>
<%@page import="dao.GrupoDAO"%>
<%@page import="modelo.GrupoAR"%>
<html>

    <jsp:include page="includes/head.jsp">
        <jsp:param name="titulo" value="Listar Grupos"/>
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
                            <h1>Lista de Grupos</h1>
                        </div>
                    </div>
                    <div class="row-fluid" id="rowtitle">
                        <div class="span4" >
                            Nome do grupo
                        </div>
                        <div class="span4">
                            Descri��o do grupo
                        </div>

                        <div class="span4">
                            A��es
                        </div>


                    </div>

                    <%
                        ArrayList<GrupoAR> grupos = GrupoDAO.getGruposPorAluno(Sessao.getAlunoLogado(request));
                        for (GrupoAR grupo : grupos) {
                            out.print("<div class=\"row-fluid\">");
                            out.print("<div class=\"span4\">");
                            out.print(grupo.getNome());
                            out.print("</div>");

                            out.print("<div class=\"span4\">");
                            out.print(grupo.getDescricao());
                            out.print("</div>");
                            
                            
                            out.print("<div class=\"span4\">");
                            out.print(HTMLUtil.getActionsButtons("grupo", grupo.getID()));
                            out.print("</div>");
                            
                            out.print("</div>");

                        }
                    %>



                </div>
            </div><!--/span-->
        </div>
    </div>
    <jsp:include page="includes/javascript_formulario.jsp"/>
</body>
</html>