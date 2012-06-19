<<<<<<< HEAD
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
                        <div class="span4" >
                            Nome do grupo
                        </div>
                        <div class="span4">
                            Descrição do grupo
                        </div>

                        <div class="span4">
                            Ações
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
=======
<%@page import="util.HTMLUtil"%>
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
                        <div class="span4" >
                            Nome do grupo
                        </div>
                        <div class="span4">
                            Descrição do grupo
                        </div>

                        <div class="span4">
                            Ações
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
>>>>>>> 499fa03909a79d1f07677097e9149b2b74ad3e8f
