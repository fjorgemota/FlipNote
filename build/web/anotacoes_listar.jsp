<%@page import="util.Sessao"%>
<%
Sessao.verificaLoginERedireciona(request, response);
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
                        <div class="span4">
                            ID
                        </div>
                        <div class="span4">
                            Titulo
                        </div>
                        <div class="span4">
                            Links
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span4">
                            1
                        </div>
                        <div class="span4">
                            <b>Testando....</b>
                        </div>
                        <div class="span4">
                            <div class="row-fluid">
                                <jsp:include page="includes/botoes-editar-apagar.jsp">
                                    <jsp:param name="filename" value="anotacoes"/>
                                    <jsp:param name="id" value="${id}"/>
                                </jsp:include>
                            </div>
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span4">
                            5
                        </div>
                        <div class="span4">
                            <b>Segunda anotação...</b>
                        </div>
                        <div class="span4">
                            <div class="row-fluid">
                                <jsp:include page="includes/botoes-editar-apagar.jsp">
                                    <jsp:param name="filename" value="anotacoes"/>
                                    <jsp:param name="id" value="${id}"/>
                                </jsp:include>
                            </div>
                        </div>
                    </div>
                </div><!--/span-->
            </div>
        </div>
        <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
