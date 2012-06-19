<<<<<<< HEAD
<%@page import="dao.MateriaDAO"%>
<%@page import="util.Sessao"%>
<%@page import="modelo.MateriaAR"%>
<%@page import="java.util.ArrayList"%>
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
                            <h1>Lista de Matérias</h1>
                        </div>
                    </div>
                    <div class="row-fluid" id="rowtitle">
                        <div class="span4">
                            Nome
                        </div>
                        <div class="span4">
                            Professor
                        </div>
                        <div class="span4">
                            Ações
                        </div>
                    </div>
                    
                    <%
                        ArrayList<MateriaAR> materias = MateriaDAO.getMateriasPorAluno(Sessao.getAlunoLogado(request));
                        for (MateriaAR materia : materias) {
                            out.print("<div class=\"row-fluid\">");
                            out.print("<div class=\"span4\">");
                            out.print(materia.getNome());
                            out.print("</div>");

                            out.print("<div class=\"span4\">");
                            out.print(materia.getProfessor());
                            out.print("</div>");
                            
                            
                            out.print("<div class=\"span4\">");
                            
                            out.print("</div>");
                            
                            out.print("</div>");

                        }
                    %>
                                                                                 
                  
                </div><!--/span-->

            </div>
            <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
=======
<%@page import="util.HTMLUtil"%>
<%@page import="dao.MateriaDAO"%>
<%@page import="util.Sessao"%>
<%@page import="modelo.MateriaAR"%>
<%@page import="java.util.ArrayList"%>
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
                            <h1>Lista de Matérias</h1>
                        </div>
                    </div>
                    <div class="row-fluid" id="rowtitle">
                        <div class="span4">
                            Nome
                        </div>
                        <div class="span4">
                            Professor
                        </div>
                        <div class="span4">
                            Ações
                        </div>
                    </div>

                    <%
                        ArrayList<MateriaAR> materias = MateriaDAO.getMateriasPorAluno(Sessao.getAlunoLogado(request));
                        for (MateriaAR materia : materias) {
                            out.print("<div class=\"row-fluid\">");
                            out.print("<div class=\"span4\">");
                            out.print(materia.getNome());
                            out.print("</div>");

                            out.print("<div class=\"span4\">");
                            out.print(materia.getProfessor());
                            out.print("</div>");
                            
                            
                          out.print("<div class=\"span4\">");
                            out.print(HTMLUtil.getActionsButtons("materia", materia.getID()));
                            out.print("</div>");

                        }
                    %>


                </div><!--/span-->

            </div>
            <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
>>>>>>> 499fa03909a79d1f07677097e9149b2b74ad3e8f
