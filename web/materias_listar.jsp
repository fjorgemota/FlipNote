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
                    <div class="row-fluid">
                        <div class="span4">
                            Programação Orientada à Objetos 2
                        </div>
                        <div class="span4">
                            Kaléu Caminha
                        </div>
                        <div class="span4">
                            Editar | Apagar
                        </div>
                    </div>
                    <div class="row-fluid">
                        <div class="span4">
                            Projetos de Software II
                        </div>
                        <div class="span4">
                            Maiquel
                        </div>
                        <div class="span4">
                            Editar | Apagar
                        </div>
                    </div>
                </div><!--/span-->

            </div>
            <jsp:include page="includes/javascript_formulario.jsp"/>
    </body>
</html>
